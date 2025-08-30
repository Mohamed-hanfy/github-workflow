#!/bin/bash

EXPECTED="Hello, Test!"

OUTPUT=$(node -e "console.log(require('./src/app')('Test'))")

if [ "$OUTPUT" == "$EXPECTED" ]; then

echo "Test Passed!"
exit 0
else
echo "TEST FAILD, EXPECTED '$EXPECTED' but got '$OUTPUT'"
exit 1
fi

