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
