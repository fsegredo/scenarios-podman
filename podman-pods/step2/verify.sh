#!/bin/bash

# for Validator to verify as success, the script needs to exit with code 0 (no error)
# and HAS to ONLY output "done". Every other text output will be taken as error.

# NOTE: there seems to be a limit after which the Validator verify command is not valid, even
# though exit code 0 and "done" is returned. This could be after X amount of commands, or too
# long execution time, not sure why. Hence this file should be as short as possible.

LOGFILE=/ks/step2-verify.log
set -e # exit once any command fails

{
    date

    
    # to succeed it need to exist 'web' and 'nginx' in  my-pod
    # we're not validating the image label
    if ! podman ps --pod --filter "pod=my-pod" | grep -q 'web' || ! podman ps --pod --filter "pod=my-pod" | grep -q 'nginx'; then
        exit 1
    fi

    # to succeed it need to exist 'mydatabase' and 'mysql' in  my-pod
    # we're not validating the image label
    if ! podman ps --pod --filter "pod=my-pod" | grep -q 'mydatabase' || ! podman ps --pod --filter "pod=my-pod" | grep -q 'mysql'; then
        exit 1
    fi
    

} >> ${LOGFILE} 2>&1

echo "done" # let Validator know success
