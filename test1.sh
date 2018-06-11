#!/bin/bash
# Display the UID
echo "user id ${UID}"

UID_TO_MATCH=1000
# Only Display if the UID does not match 1000
if [[ ${UID} -ne ${UID_TO_MATCH} ]]
then
        echo "Your uid does not match with ${UID_TO_MATCH}"
fi

# Display the user name
USER_NAME=`id -un`
# Test if the command succeded. ${?} holds the status of last executed command. 0-> true, executed/ 1-> false, not executed
if [[ "${?}" -ne 0 ]]
then
        echo 'The id command did not execute succesfully'
fi
echo "user name is ${USER_NAME}"

# String test conditional
USER_NAME_TO_TEST='vagrant'
if [[ "${USER_NAME}" == "${USER_NAME_TO_TEST}" ]]
then
        echo "Your user name matched with ${USER_NAME_TO_TEST}"
fi


# Test for != (not equal) for the string
if [[ "${USER_NAME}" != "${USER_NAME_TO_TEST}" ]]
then
        echo "Your user name does not  match with ${USER_NAME_TO_TEST}"
        exit 1
fi

exit 0