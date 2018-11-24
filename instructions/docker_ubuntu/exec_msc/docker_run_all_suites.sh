#!/bin/bash
docker stop $(docker ps -a -q) 
docker rm $(docker ps -a -q) 

export WORKING_DIR=/home/hiep
export GUI_SCRIPT_DIR=/home/hiep/projects/trunk/regression/src
export GUI_XML_CONFIG_FILE=$GUI_SCRIPT_DIR/aut/data/msc_regr1.xml
export GUI_VARIABLE_FILE=$GUI_SCRIPT_DIR/test_executor/AutVars.py
export OUTPUT_DIR=/home/hiep/www/Robot/TestResults

export PYTHONPATH=${PYTHONPATH}:$GUI_SCRIPT_DIR



python3 $GUI_SCRIPT_DIR/test_executor/run_robot_suites.py --suite_dir=$GUI_SCRIPT_DIR/aut/msc/suites/master_suite --gui_script_dir=$GUI_SCRIPT_DIR --gui_var_file=$GUI_SCRIPT_DIR/test_executor/AutVars.py --path_to_python=

