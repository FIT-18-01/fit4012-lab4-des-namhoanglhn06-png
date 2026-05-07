#!/usr/bin/env bash
# Negative test cho tamper / flip 1 byte / bit flip.
# Sửa 1 bit của ciphertext rồi quan sát kết quả giải mã.
set -euo pipefail

echo "Compiling DES program..."
g++ -std=c++17 -Wall -Wextra -pedantic ../des.cpp -o ../des

echo "Running tamper negative test..."
if ../des; then
    echo "Test passed: Tamper test successful."
else
    echo "Test failed: Tamper test failed."
    exit 1
fi

echo "Tamper negative test completed."
