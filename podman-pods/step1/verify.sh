#!/bin/bash

# for Validator to verify as success, the script needs to exit with code 0 (no error)
# and HAS to ONLY output "done". Every other text output will be taken as error.

# NOTE: there seems to be a limit after which the Validator verify command is not valid, even
# though exit code 0 and "done" is returned. This could be after X amount of commands, or too
# long execution time, not sure why. Hence this file should be as short as possible.

LOGFILE=/ks/step1-verify.log
set -e # exit once any command fails

{
    date

    #podman pod ps -f name=my-pod
    #if !  podman pod ps | grep my-pod ; then
    #  echo 'nao existe nada'  
    #  exit 1
    #fi

    ## simpler way, as the pod exists retuns 0 or 1, i'll just use the result to pass it to the exit
    podman pod exists my-pod

    exit $?

} >> ${LOGFILE} 2>&1

echo "done" # let Validator know success
