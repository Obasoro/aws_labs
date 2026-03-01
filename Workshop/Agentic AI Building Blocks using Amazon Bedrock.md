# WORKSHOP TOPIC: Agentic AI Building Blocks using Amazon Bedrock

Welcome to this hands-on workshop where you'll learn how to build Agentic AI from the ground up using just Python and the AWS SDK! No complex frameworks or libraries - 
we'll show you the core building blocks using basic tools. In just one hour, you'll understand what makes AI "agentic" 
and build your own weather assistant using fundamental programming concepts.

## What you will Build

You'll create an AI agent using pure Python and AWS SDK that:

Thinks: Interfaces directly with Claude 4.5 Sonnet through simple API calls
Acts: Makes HTTP requests to the National Weather Service API using standard Python libraries
Processes: Handles JSON data processing with basic Python data structures
Responds: Communicates through simple command-line and web interfaces

## Definition of Terms

## What is Agentic AI?

Traditional Approach: Question → Answer

Traditional AI systems are like very smart encyclopedias. They provide information based on their training data:

```
User: "What is the weather like in New York?"
Traditional AI: "Sorry, I can't provide live weather information! Weather refers to atmospheric conditions including temperature, 
               humidity, precipitation, and wind patterns..."

```

**Limitations**:  Static responses, no real-time data, can't take actions


## Agentic AI: Problem → Plan → Action → Result

Agentic AI systems can think, plan, and act to solve problems:

```sh
User: "What's the weather forecast for New York this weekend?"
Agentic AI: 
  1. THINKS: "I need current weather data for New York coordinates"
  2. PLANS: "I'll get NYC coordinates and call the National Weather Service API"
  3. ACTS: Generates and executes NWS API call for NYC location
  4. PROCESSES: Analyzes real-time forecast data from weather stations
  5. RESPONDS: "This weekend in New York: Saturday will be sunny with 
                  highs of 75°F, Sunday partly cloudy with 20% chance of rain...

```
## Key Characteristics of Agentic AI

**1. Autonomy 🤖**

- Makes decisions without constant human guidance
- Chooses appropriate tools and methods
- Adapts to different scenarios

**2. Reactivity ⚡**

- Responds to changes in environment
- Handles errors and unexpected situations
- Adjusts strategy based on results

**3. Proactivity 🎯**

- Takes initiative to achieve goals
- Plans multi-step processes
- Anticipates user needs


# Step 2: Set Up Your Python Environment

```

# Create a new directory for our workshop
mkdir agentic-ai-workshop
cd agentic-ai-workshop

# Create a Python virtual environment
python -m venv .venv

# Activate the virtual environment
source .venv/bin/activate

# You should see (.venv) in your terminal prompt now

```

## Step 3: Install Dependencies

```
# Create requirements.txt file
cat > requirements.txt << EOF
boto3>=1.34.0
streamlit>=1.28.0
requests>=2.31.0
Pillow>=10.0.0
EOF

# Install all dependencies
pip install -r requirements.txt

```

## Step 4: Verify Your Setup

```
# Test Python and boto3
python -c "import boto3; print('✅ boto3 installed successfully')"

# Test Streamlit
python -c "import streamlit; print('✅ Streamlit installed successfully')"

# Test AWS credentials (should show your account info)
aws sts get-caller-identity

```

## Understanding Our Agent Architecture

## How the National Weather Service APIs Work

The NWS provides free weather data through a two-step API process:

• Points API: ```https://api.weather.gov/points/{lat},{lon}```

Takes latitude/longitude coordinates as input
Returns which NWS forecast office covers that location
Provides the specific grid coordinates for that location
Example: Seattle (47.6062,-122.3321) → SEW office, grid 124,67
• Forecast API: ```https://api.weather.gov/gridpoints/{office}/{gridX},{gridY}/forecast```

Uses the office and grid coordinates from the Points API
Returns detailed weather forecast data in JSON format
Example: gridpoints/SEW/124,67/forecast → Seattle's weather data
• Why Two APIs?: The NWS divides the US into a grid system where each forecast office covers specific grid squares. 

The Points API tells us which office and grid square to use for any location.

## How Our Weather Agent Works

Our weather assistant follows a simple 4-step process: User Input → AI Planning → API Calls → AI Summary → Response

<img width="568" height="501" alt="image" src="https://github.com/user-attachments/assets/2c4b4cc9-6869-44da-9f06-f9b04f3ec882" />

## Understanding the Flow

The diagram shows how our agent processes weather requests:

User provides a location (city name, ZIP code, or coordinates)
Claude AI analyzes the input and determines what coordinates and API calls are needed
Two API calls happen: First to get forecast office info, then to get actual weather data
Claude processes the raw weather data and converts it into a friendly response
User gets a clear weather forecast

## The 4 Steps in Detail

## Step 1: User Input 📝
Users can enter locations in many formats:

City names: "Seattle" or "Seattle, WA"
ZIP codes: "90210"
Informal descriptions: "downtown Portland"
Coordinates: "47.6062, -122.3321"
The AI handles all these variations automatically.

## Step 2: AI Planning 🧠
Claude analyzes the input and creates a plan:

Determines the coordinates for the location
Identifies the correct National Weather Service API endpoints
Plans the sequence of API calls needed
Example: For "Seattle", the AI knows to use coordinates 47.6062°N, 122.3321°W and call the NWS points API first.

## Step 3: API Calls 🔗
The agent makes two API calls to the National Weather Service:

Points API: https://api.weather.gov/points/{lat},{lon}
Gets forecast office and grid coordinates
Forecast API: Uses the returned URL for detailed weather data
Example: https://api.weather.gov/gridpoints/SEW/124,67/forecast

## Step 4: AI Summary 📊
Claude converts the raw JSON weather data into a human-friendly format:

Raw data (complex JSON with technical details) ↓ Friendly response: "Today: Partly cloudy with a high of 72°F. Wind: West at 5-10 mph"


## Create the Web Application

weather_agent_web.py

```
import streamlit as st
import boto3
import subprocess
import json
import time
from datetime import datetime
from PIL import Image
import os

# Page configuration
st.set_page_config(
    page_title="Weather AI Agent",
    page_icon="🌤️",
    layout="wide",
    initial_sidebar_state="expanded"
)

# Custom CSS for better styling
st.markdown("""
<style>
    .step-container {
        border: 2px solid #e0e0e0;
        border-radius: 10px;
        padding: 20px;
        margin: 10px 0;
        background-color: #f9f9f9;
    }
    .step-header {
        font-size: 18px;
        font-weight: bold;
        color: #1f77b4;
        margin-bottom: 10px;
    }
    .success-box {
        border-left: 5px solid #28a745;
        background-color: #d4edda;
        padding: 10px;
        margin: 10px 0;
        color: #000000;
    }
    .error-box {
        border-left: 5px solid #dc3545;
        background-color: #f8d7da;
        padding: 10px;
        margin: 10px 0;
        color: #000000;
    }
    .info-box {
        border-left: 5px solid #17a2b8;
        background-color: #d1ecf1;
        padding: 10px;
        margin: 10px 0;
        color: #000000;
    }
</style>
""", unsafe_allow_html=True)

def call_claude_sonnet(prompt):
    """
    Connect to Claude 4.5 Sonnet via Amazon Bedrock
    """
    bedrock = boto3.client(
        service_name='bedrock-runtime',
        region_name='us-west-2'
    )
    
    try:
        response = bedrock.converse(
            modelId='us.anthropic.claude-sonnet-4-5-20250929-v1:0',
            messages=[
                {
                    "role": "user",
                    "content": [{"text": prompt}]
                }
            ],
            inferenceConfig={
                "maxTokens": 2000,
                "temperature": 0.7
            }
        )
        
        return True, response['output']['message']['content'][0]['text']
        
    except Exception as e:
        return False, f"Error calling Claude: {str(e)}"

def execute_curl_command(url):
    """
    Execute curl command to fetch API data
    """
    try:
        result = subprocess.run(
            ['curl', '-s', url],
            capture_output=True,
            text=True,
            timeout=30
        )
        
        if result.returncode == 0:
            return True, result.stdout
        else:
            return False, f"Curl command failed: {result.stderr}"
            
    except subprocess.TimeoutExpired:
        return False, "Request timed out after 30 seconds"
    except Exception as e:
        return False, f"Error executing curl: {str(e)}"

def generate_weather_api_calls(location):
    """
    Use Claude to generate NWS API calls
    """
    prompt = f"""
You are an expert at working with the National Weather Service (NWS) API.

Your task: Generate the NWS API URL to get weather forecast data for "{location}".

Instructions:
1. First, determine the approximate latitude and longitude coordinates for this location
2. Generate the NWS Points API URL: https://api.weather.gov/points/{{lat}},{{lon}}

For the coordinates, use your knowledge to estimate:
- Major cities: Use well-known coordinates
- ZIP codes: Estimate based on the area
- States: Use approximate center coordinates
- In case a location description is provided instead of a location name, please use the most likely city and state name as the location for the coordinates

Example for Seattle:
https://api.weather.gov/points/47.6062,-122.3321

Example for largest city in USA:
Based on your knowledge, you will establish location is New York City
https://api.weather.gov/points/40.7128,-74.0060

Now generate the API call (Points API) for the established location. 
Return ONLY the complete Points API URL, nothing else.
Format: https://api.weather.gov/points/LAT,LON
"""
    
    success, response = call_claude_sonnet(prompt)
    
    if success:
        api_url = response.strip()
        if api_url.startswith('https://api.weather.gov/points/'):
            return True, [api_url]
        else:
            return False, f"AI generated invalid URL: {api_url}"
    else:
        return False, response

def get_forecast_url_from_points_response(points_json):
    """
    Extract forecast URL from Points API response
    """
    try:
        data = json.loads(points_json)
        forecast_url = data['properties']['forecast']
        return True, forecast_url
    except (json.JSONDecodeError, KeyError) as e:
        return False, f"Error parsing Points API response: {str(e)}"

def process_weather_response(raw_json, location):
    """
    Use Claude to process NWS API response
    """
    prompt = f"""
You are a weather information specialist. I have raw National Weather Service forecast data for "{location}" that needs to be converted into a clear, helpful summary for a general audience.

Raw NWS API Response:
{raw_json}

Please create a weather summary that includes:
1. A brief introduction with the location
2. Current conditions and today's forecast
3. The next 2-3 days outlook with key details (temperature, precipitation, wind)
4. Any notable weather patterns or alerts
5. Format the response to be easy to read and understand

Make it informative and practical for someone planning their activities. Focus on being helpful and clear.
"""
    
    success, response = call_claude_sonnet(prompt)
    return success, response

# Sidebar with information
st.sidebar.title("🤖 About This Agent")
st.sidebar.markdown("""
This AI agent demonstrates **Agentic AI** principles:

**🧠 Intelligence**: Uses Claude 4.5 Sonnet to understand locations and plan API calls

**🔗 Action**: Automatically calls the National Weather Service API

**📊 Processing**: Converts complex weather data into readable forecasts

**💬 Response**: Provides helpful, practical weather information
""")

st.sidebar.markdown("---")
st.sidebar.markdown("### 🏗️ Architecture")
st.sidebar.markdown("""
1. **User Input** → Location name
2. **AI Planning** → Generate API calls
3. **Points API** → Get forecast office  
4. **Forecast API** → Get weather data
5. **AI Processing** → Create summary
6. **Display Results** → Show to user
""")

# Main application
st.title("🌤️ Weather AI Agent")
st.markdown("### Powered by Claude 4.5 Sonnet on Amazon Bedrock")

st.markdown("""
This intelligent agent helps you get weather forecasts using the National Weather Service API. 
Enter any location below and watch the AI agent work through its reasoning process!
""")

# Initialize session state for results
if 'show_results' not in st.session_state:
    st.session_state.show_results = False

# Input section
st.markdown("---")
location = st.text_input(
    "🔍 Enter a location name or description:",
    placeholder="e.g., Seattle, 90210, New York City, National park near Homestead in Florida",
    help="You can enter city names, ZIP codes, state names, or location descriptions"
)

# Create columns for the buttons
button_col1, button_col2 = st.columns([2, 1])

with button_col1:
    get_forecast = st.button("🚀 Get Weather Forecast", type="primary")

with button_col2:
    clear_results = st.button("🗑️ Clear Results", type="secondary")

# Clear results functionality
if clear_results:
    st.session_state.show_results = False
    st.success("🗑️ Results cleared! Enter a new location to get a fresh forecast.")

if get_forecast:
    st.session_state.show_results = True

if st.session_state.show_results and get_forecast:
    if not location:
        st.error("❌ Please enter a location name or description.")
    else:
        # Create columns for better layout
        col1, col2 = st.columns([2, 1])
        
        with col1:
            st.markdown(f"## Weather Analysis for: **{location}**")
            
            # Step 1: AI Planning
            with st.container():
                st.markdown('<div class="step-container">', unsafe_allow_html=True)
                st.markdown('<div class="step-header">🧠 Step 1: AI Planning Phase</div>', unsafe_allow_html=True)
                
                with st.spinner("Claude is analyzing the location and planning the API calls..."):
                    success, api_calls = generate_weather_api_calls(location)
                
                if success:
                    points_url = api_calls[0]
                    st.markdown('<div class="success-box">✅ Points API URL generated successfully!</div>', unsafe_allow_html=True)
                    st.code(points_url, language="text")
                else:
                    st.markdown(f'<div class="error-box">❌ Failed to generate API calls: {api_calls}</div>', unsafe_allow_html=True)
                    st.stop()
                
                st.markdown('</div>', unsafe_allow_html=True)
            
            # Step 2: Points API Execution
            with st.container():
                st.markdown('<div class="step-container">', unsafe_allow_html=True)
                st.markdown('<div class="step-header">🔗 Step 2: Points API Execution</div>', unsafe_allow_html=True)
                
                with st.spinner("Fetching location data from National Weather Service..."):
                    success, points_response = execute_curl_command(points_url)
                
                if success:
                    st.markdown('<div class="success-box">✅ Received location data from NWS</div>', unsafe_allow_html=True)
                    
                    # Show a preview of the raw data
                    with st.expander("🔍 View Raw Points API Response (first 500 characters)"):
                        st.code(points_response[:500] + "..." if len(points_response) > 500 else points_response, language="json")
                else:
                    st.markdown(f'<div class="error-box">❌ Failed to fetch points data: {points_response}</div>', unsafe_allow_html=True)
                    st.stop()
                
                st.markdown('</div>', unsafe_allow_html=True)
            
            # Step 3: Extract Forecast URL
            with st.container():
                st.markdown('<div class="step-container">', unsafe_allow_html=True)
                st.markdown('<div class="step-header">📍 Step 3: Extracting Forecast URL</div>', unsafe_allow_html=True)
                
                success, forecast_url = get_forecast_url_from_points_response(points_response)
                
                if success:
                    st.markdown('<div class="success-box">✅ Forecast URL extracted successfully!</div>', unsafe_allow_html=True)
                    st.code(forecast_url, language="text")
                else:
                    st.markdown(f'<div class="error-box">❌ Failed to extract forecast URL: {forecast_url}</div>', unsafe_allow_html=True)
                    st.stop()
                
                st.markdown('</div>', unsafe_allow_html=True)
            
            # Step 4: Forecast API Execution
            with st.container():
                st.markdown('<div class="step-container">', unsafe_allow_html=True)
                st.markdown('<div class="step-header">🌦️ Step 4: Forecast API Execution</div>', unsafe_allow_html=True)
                
                with st.spinner("Fetching weather forecast data..."):
                    success, forecast_response = execute_curl_command(forecast_url)
                
                if success:
                    st.markdown(f'<div class="success-box">✅ Received {len(forecast_response):,} characters of forecast data</div>', unsafe_allow_html=True)
                    
                    # Show a preview of the raw data
                    with st.expander("🔍 View Raw Forecast API Response (first 500 characters)"):
                        st.code(forecast_response[:500] + "..." if len(forecast_response) > 500 else forecast_response, language="json")
                else:
                    st.markdown(f'<div class="error-box">❌ Failed to fetch forecast data: {forecast_response}</div>', unsafe_allow_html=True)
                    st.stop()
                
                st.markdown('</div>', unsafe_allow_html=True)
            
            # Step 5: AI Processing
            with st.container():
                st.markdown('<div class="step-container">', unsafe_allow_html=True)
                st.markdown('<div class="step-header">📊 Step 5: AI Analysis Phase</div>', unsafe_allow_html=True)
                
                with st.spinner("Claude is processing the weather data and creating a summary..."):
                    success, summary = process_weather_response(forecast_response, location)
                
                if success:
                    st.markdown('<div class="success-box">✅ Weather analysis complete!</div>', unsafe_allow_html=True)
                else:
                    st.markdown(f'<div class="error-box">❌ Failed to process data: {summary}</div>', unsafe_allow_html=True)
                    st.stop()
                
                st.markdown('</div>', unsafe_allow_html=True)
            
            # Step 6: Results
            st.markdown("---")
            st.markdown("## 🌤️ Weather Forecast")
            st.markdown(summary)
            
        with col2:
            # Real-time status updates
            st.markdown("### 📊 Process Status")
            
            status_container = st.container()
            with status_container:
                st.markdown("""
                <div class="info-box">
                <strong>🔄 Agent Workflow:</strong><br>
                ✅ Planning Phase<br>
                ✅ Points API Call<br>
                ✅ URL Extraction<br>
                ✅ Forecast API Call<br>
                ✅ Data Processing<br>
                ✅ Results Generated
                </div>
                """, unsafe_allow_html=True)
            
            st.markdown("### 🎯 What Makes This Agentic?")
            st.markdown("""
            - **🧠 Reasoning**: AI understands location formats
            - **📋 Planning**: Generates appropriate API call sequences
            - **🔧 Action**: Executes real-world API requests
            - **📊 Processing**: Converts raw data to insights
            - **🔄 Adaptation**: Handles different location types
            """)

# Footer
st.markdown("---")
st.markdown("""
### 🔬 About This Demo

This application demonstrates **Agentic AI** principles using:
- **Amazon Bedrock** with Claude 4.5 Sonnet for intelligent reasoning
- **National Weather Service API** for real-time weather data
- **Streamlit** for interactive web interface

**⚠️ Important**: This uses official NWS data for educational purposes. For critical weather decisions, consult official sources.
""")

# Add some example queries
st.markdown("### 💡 Try These Examples:")
st.markdown("""
**Suggested locations to test:**
- **Seattle** - Major city (tests city name recognition)
- **90210** - ZIP code (tests postal code handling)  
- **New York City** - Multi-word city (tests complex location parsing)
- **Miami, FL** - City with state (tests state abbreviations)
- **Chicago** - Another major city (tests different coordinates)
- **National park near Homestead in Florida** - Location description (tests AI reasoning)
- **Largest City in California** - Descriptive query (tests knowledge-based location finding)

Simply copy any of these into the location input above and click "Get Weather Forecast"!

""")

```

## Run Your Web Application

```sh
streamlit run weather_agent_web.py

```
