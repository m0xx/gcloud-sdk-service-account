#!/bin/bash

if [ -n "${SA_KEY}" ]; then
    echo "${SA_KEY}" > "${SA_KEY_FILE}"
fi

gcloud auth activate-service-account --key-file="${SA_KEY_FILE}"
"$@"