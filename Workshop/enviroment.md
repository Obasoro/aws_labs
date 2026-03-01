Environment Setup
Before we start building our AI agent, we need to set up your development environment. The setup process depends on how you're accessing this workshop.

Choose Your Setup Path
Select the appropriate setup path based on your situation:

🏢 AWS Facilitated Event
If you're attending an AWS-hosted workshop or event, you'll have access to a pre-configured VS Code Online IDE with AWS credentials already set up.

What you'll get:

✅ VS Code Online IDE with pre-installed Python
✅ AWS credentials pre-configured
✅ All necessary permissions for Bedrock
✅ Terminal access for running commands
What you'll need to do:

Enable Claude 4.5 Sonnet in Amazon Bedrock
Set up Python virtual environment
Install workshop dependencies
→ Go to AWS Facilitated Event Setup

🏠 Your Own AWS Account
If you're running this workshop independently using your own AWS account, you'll need to set up everything from scratch.

What you'll need:

✅ Python 3.7+ installed locally
✅ AWS account with appropriate permissions
✅ AWS CLI configured with your credentials
✅ Access to enable Bedrock models
What you'll set up:

AWS credentials and CLI configuration
Claude 4.5 Sonnet model access in Bedrock
Python development environment
Workshop dependencies
→ Go to Your Own AWS Account Setup

What We'll Build
Regardless of your setup path, by the end of the environment setup you'll have:

✅ Python Environment: Virtual environment with all required packages
✅ AWS Access: Configured credentials for Bedrock API calls
✅ Claude 4.5 Sonnet: Enabled and ready to use
✅ Development Tools: Terminal access and code editor
✅ Workshop Directory: Clean workspace for building your agent
Time Estimate
AWS Facilitated Event: ~6 minutes
Your Own AWS Account: ~12 minutes
Choose your path above and let's get your environment ready for building an AI agent! 🚀


Your Own AWS Account Setup
Great! You're running this workshop independently. Let's set up everything you need from scratch.

Step 1: Set Up Your Development Environment
You'll need a code editor or IDE to write and run Python code during this workshop. Choose one of these options:

Recommended IDEs:
Visual Studio Code (Free)

Download: https://code.visualstudio.com/ 
Install the Python extension for better code support
Lightweight and excellent for Python development
JetBrains PyCharm (Community Edition - Free)

Download: https://www.jetbrains.com/pycharm/download/ 
Full-featured Python IDE with excellent debugging tools
Great for more complex development
Other Options:

Sublime Text - Fast and lightweight
Atom - GitHub's text editor
Vim/Emacs - If you prefer terminal-based editors
Jupyter Notebook - Good for interactive development
You'll be creating Python files and running them from the command line, so make sure your chosen editor can handle Python syntax highlighting and has terminal access.
Step 2: Ensure Python is Installed
On macOS, you may need to use python3 and pip3 instead of python and pip. You can create aliases to simplify this, by running these commands on your IDE Terminal: alias python='python3' && alias pip='pip3'
In your IDE terminal, run these commands:

1
2
# Check Python version (should be 3.7 or higher)
python --version

If Python is not installed, visit: https://python.org/downloads 

Step 3: Set Up AWS Credentials
Choose one of these methods:

Option A: AWS CLI (Recommended)
In your IDE terminal, run these commands:

1
2
3
4
5
# Install AWS CLI if not already installed
# Visit: https://docs.aws.amazon.com/cli/latest/userguide/getting-started-install.html

# Configure your credentials
aws configure

When prompted, enter:

AWS Access Key ID: Your access key
AWS Secret Access Key: Your secret key
Default region name: us-west-2
Default output format: json
Option B: Environment Variables
In your IDE terminal, run these commands:

1
2
3
export AWS_ACCESS_KEY_ID=your_access_key_here
export AWS_SECRET_ACCESS_KEY=your_secret_key_here
export AWS_DEFAULT_REGION=us-west-2

Step 4: Enable Claude 4.5 Sonnet in Amazon Bedrock
Make sure the IAM role of the CLI user above has appropriate permissions to invoke Claude 4.5 Sonnet, refer this Access Amazon Bedrock foundation models  

Without the correct IAM permissions, your agent won't work! This is a critical step.
Step 5: Create Project Directory
In your IDE terminal, run these commands:

1
2
3
4
5
6
7
8
9
10
11
12
13
14
# Create and navigate to project directory
mkdir agentic-ai-workshop
cd agentic-ai-workshop

# Create Python virtual environment
python -m venv .venv
# or if python command doesn't work:
# python -m venv .venv

# Activate virtual environment
# On macOS/Linux:
source .venv/bin/activate
# On Windows:
# .venv\Scripts\activate

You should see (.venv) in your terminal prompt indicating the virtual environment is active.

Step 6: Install Dependencies
In your IDE terminal, run these commands:

1
2
# Install required packages
pip install boto3>=1.34.0 streamlit>=1.28.0 requests>=2.31.0 Pillow>=10.0.0

This will take a minute or two to download and install all the packages.

Step 7: Verify Your Setup
In your IDE terminal, run these commands:

1
2
3
4
5
# Test AWS connection
aws sts get-caller-identity

# Test Python imports
python -c "import boto3, streamlit, requests; print('✅ All packages installed')"
