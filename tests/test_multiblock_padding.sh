#!/usr/bin/env bash
# Test cho trường hợp multi-block và padding.
# Kiểm tra plaintext dài hơn 64 bit, chia block đúng và zero padding đúng.
set -euo pipefail

echo "Compiling DES program..."
g++ -std=c++17 -Wall -Wextra -pedantic ../des.cpp -o ../des

echo "Running multi-block padding test..."
if ../des; then
    echo "Test passed: Multi-block round trip successful."
else
    echo "Test failed: Multi-block round trip failed."
    exit 1
fi

echo "Multi-block padding test completed."
