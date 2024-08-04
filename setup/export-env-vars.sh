#!/bin/bash

# Export all variables from the .env file
export $(grep -v '^#' .env | xargs)