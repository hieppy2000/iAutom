#!/bin/bash


RUN_CMD="robot --outputdir /Users/hiep/www/Robot --loglevel DEBUG --variable GUI_SCRIPT_DIR:$GUI_SCRIPT_DIR --variablefile $GUI_VARIABLE_FILE --pythonpath $GUI_SCRIPT_DIR --outputdir $OUTPUT_DIR"

SUITE_NAME=$GUI_SCRIPT_DIR/aut/msc/suites/master_suite/suite1/user_suite.txt

$RUN_CMD $SUITE_NAME

# robot --outputdir /Users/hiep/www/Robot --loglevel DEBUG --variable GUI_SCRIPT_DIR:$GUI_SCRIPT_DIR --variablefile $GUI_VARIABLE_FILE --pythonpath=$GUI_SCRIPT_DIR /Users/hiep/mgmt/msc_rel1/autom/aut/msc/suites/master_suite/suite1/user_suite.txt
