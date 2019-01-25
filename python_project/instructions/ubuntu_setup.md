# Python packages:
- sudo easy_install pip
- sudo pip install -U selenium
- sudo pip install pyvirtualdisplay
- sudo pip install xlutils
- sudo pip install beautifulsoup
- sudo pip install pexpect
- sudo pip install requests
- sudo pip install pyyaml
- sudo pip install urllib3
- sudo pip install cryptography
- sudo pip install paramiko

- pycrypto http://www.voidspace.org.uk/python/modules.shtml#pycrypto
- paramiko (required to install VCForPython27.msi(http://www.microsoft.com/en-us/download/confirmation.aspx?id=44266) if it's required

# Robot framework installation:
- Robot framework documentation: http://robotframework.org/
- Required python 3:
  - Install python 3 (if you using mac or linux, create python virtual environment)
  - pip install robotframework
  - pip install --upgrade robotframework-seleniumlibrary
  - https://github.com/robotframework/SeleniumLibrary#installation

- Others:
  - pip install robotframework-debuglibrary (https://pypi.python.org/pypi/robotframework-debuglibrary/0.8)
  - pip install robotframework-lint #error checking for .robot file (http://boakley.github.io/2014/11/30/robotframework-lint-preview/)

# General GIT
 - git clone https://wwwin-github.cisco.com/apic-ui-automation/msc.git
 - After clone you will see:
   - /Users/hiep/projects/trunk/msc

# For Ubuntu:
sudo apt-get install xvfb xserver-xephyr vnc4server

# Eclipse and Red Nokia Setup:
- Install jre/jdk
- Install eclipse IDE (Java EE)
- Install pydev plugin
- Install RED NOKIA plugin for eclipse:
  - https://github.com/nokia/RED

# Adding msc project to eclipse:
- Launch Eclipse and location workspace location: /Users/hiep/ws/msc1
- From Window menu -> Open Perspective -> select Robot
- Create new project:
  - File -> New -> Robot Project
  - Name project as: gui
  - Uncheck "Use default location"
  - Provide location of the code: /Users/hiep/projects/trunk/msc/src
  - Click Finish

# Change to Python 3 in eclipse for ROBOT to use:
- Go to Eclipse Preferences
- Select "Robot Framework" item in the left treeview
- Click Add to specify your python3/bin here (example: /Users/hiep/pyvirtualenv/python36env/bin)
- Click Apply and Close

# Configure Red.xml for RED plugin:
- Replace Red.xml under project with ~/tools/red_template.xml
- Make sure you change all the path in this red.xml file

# Configure pydev Environment for Eclipse:
- Launch Preferences
- Expand Pydev in treeeview, and select Interpreter -> Python Interpreter
- Select Environment tab
- Click New to add following:
  - GUI_SCRIPT_DIR=/Users/hiep/projects/trunk/msc/src
  - GUI_XML_CONFIG_FILE=/Users/hiep/projects/trunk/msc/src/aut/data/hiep_setup.xml
  - GUI_VARIABLE_FILE=/Users/hiep/projects/trunk/msc/src/test_executor/AutVars.py
  - OUTPUT_DIR=/Users/hiep/www/Robot/TestResults
- Click Apply and Close

# Configure environment for OS before launch Eclipse
- This is optional, you can see ~/tools/run_robot_test.sh_example or configure pydev Environment for Eclipse step above

# Running a robot test case in Eclipse:
- Under Run Configuraion
- Add a test suite to run under Test Suite
- Configure Robot running with argument:
"--loglevel DEBUG --include debug --outputdir /Users/hiep/www/Robot/TestResults --variable GUI_SCRIPT_DIR:/Users/hiep/projects/trunk/msc/src --variablefile /Users/hiep/projects/trunk/msc/src/test_executor/AutVars.py"

# Running a single robot suite from command line:
- see ~/tools/run_robot_test.sh_template

# How to install virtualenv:

  - Install pip first
    sudo apt-get install python3-pip

  - Then install virtualenv using pip3
      - sudo pip3 install virtualenv 

  - Now create a virtual environment
      - virtualenv venv 

  - can use any name insted of venv. You can also use a Python interpreter of your choice
      - virtualenv -p /usr/bin/python3 py3env

  - Active your virtual environment:
      - source venv/bin/activate

  - Using fish shell:
      - source venv/bin/activate.fish

  - To deactivate:
     - deactivate

  - Create virtualenv using Python3
    - virtualenv -p python3 py3env

  - Instead of using virtualenv you can use this command in Python3
    - python3 -m venv py3env




