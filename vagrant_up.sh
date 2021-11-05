#!/bin/bash

EXIT=0
vagrant up AS1-RTR1 --color <<< 'AS1-RTR1 boot' || EXIT=$?
vagrant up AS1-RTR2 --color <<< 'AS1-RTR2 boot' || EXIT=$?
vagrant up AS1-RTR3 --color <<< 'AS1-RTR3 boot' || EXIT=$?
vagrant up AS2-RTR1 --color <<< 'AS2-RTR1 boot' || EXIT=$?
vagrant up AS2-RTR2 --color <<< 'AS2-RTR2 boot' || EXIT=$?
vagrant up AS2-RTR3 --color <<< 'AS2-RTR3 boot' || EXIT=$?
vagrant up AS3-RTR1 --color <<< 'AS3-RTR1 boot' || EXIT=$?
vagrant up AS3-RTR2 --color <<< 'AS3-RTR2 boot' || EXIT=$?
vagrant up AS3-RTR3 --color <<< 'AS3-RTR3 boot' || EXIT=$?
vagrant up AS4-RTR1 --color <<< 'AS4-RTR1 boot' || EXIT=$?
vagrant up AS4-RTR2 --color <<< 'AS4-RTR2 boot' || EXIT=$?
vagrant up AS4-RTR3 --color <<< 'AS4-RTR3 boot' || EXIT=$?
echo $EXIT
exit $EXIT
