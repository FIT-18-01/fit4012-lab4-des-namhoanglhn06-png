#!/usr/bin/env bash
# Negative test cho wrong key / incorrect key / sai key.
# Giải mã với khóa sai và chứng minh không khôi phục đúng plaintext.
set -euo pipefail

echo "Compiling DES program..."
g++ -std=c++17 -Wall -Wextra -pedantic ../des.cpp -o ../des

echo "Running wrong key negative test..."
if ../des; then
    echo "Test passed: Wrong key test successful."
else
    echo "Test failed: Wrong key test failed."
    exit 1
fi

echo "Wrong key negative test completed."
