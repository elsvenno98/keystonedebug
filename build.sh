#!/bin/bash

echo $CONNECTION_STRING_DEV &&
echo "$CONNECTION_STRING_DEV" &&
cat $CONNECTION_STRING_DEV > ".env" &&
cat $CONNECTION_STRING_DEV > "keystone/.env"