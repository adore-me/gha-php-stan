#!/bin/bash

# Colors
RD='\033[0;31m'
GR='\033[0;32m'
YL='\033[0;33m'
BL='\033[0;34m'
NC='\033[0m'

if [ -z "$INPUT_PHP_IMAGE" ]; then
  echo "::error::No PHP image provided"
  exit 1
fi

echo -e "${BL}Info:${NC} Running PHP STAN with image: ${GR}$INPUT_PHP_IMAGE${NC}"
echo -e "${BL}Info:${NC} STAN report path: ${GR}$INPUT_REPORT_PATH${NC}"
echo -e "${BL}Info:${NC} Running command: ${GR}./vendor/bin/phpstan analyse app --no-interaction --no-ansi --error-format=checkstyle --memory-limit=512M > ${INPUT_REPORT_PATH} || true${NC}"
docker run \
    --platform linux/amd64 \
    -v "$PWD":/var/www \
    "$INPUT_PHP_IMAGE" \
    "/bin/bash" "-c" "./vendor/bin/phpstan analyse app --no-interaction --no-ansi --error-format=checkstyle --memory-limit=512M > ${INPUT_REPORT_PATH} || true"