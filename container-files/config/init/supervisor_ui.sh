#!/bin/bash
UI_DIR=/supervisor-ui
STATUS_FILE=`find /usr/lib | grep status.html`
SUPERVISOR_DIR=$(dirname "$STATUS_FILE")
/bin/cp -rf $UI_DIR/status.html $STATUS_FILE
