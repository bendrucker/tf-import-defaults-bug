#!/usr/bin/env bash

terraform init

# Will fail with error:
# 'The role "DEFAULT" cannot be assumed'
terraform import random_id.foo abc123