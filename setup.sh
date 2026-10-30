#!/bin/bash
set -e

echo "Checking required tools..."

if ! command -v aws >/dev/null 2>&1; then
    echo "AWS CLI is not installed."
    exit 1
fi

if ! command -v tar >/dev/null 2>&1; then
    echo "tar is not installed."
    exit 1
fi

echo "AWS CLI and tar are available."
echo "Setup check completed successfully."
