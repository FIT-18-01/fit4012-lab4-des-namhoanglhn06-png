#!/usr/bin/env bash
# Test round-trip encrypt -> decrypt.
# Kiểm tra decrypt(encrypt(plaintext)) = plaintext.
set -euo pipefail

echo "Compiling DES program..."
g++ -std=c++17 -Wall -Wextra -pedantic ../des.cpp -o ../des

echo "Running roundtrip test..."
if ../des; then
    echo "Test passed: Round trip successful."
else
    echo "Test failed: Round trip failed."
    exit 1
fi

echo "Roundtrip test completed."
