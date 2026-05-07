#!/usr/bin/env bash
# Test cho trường hợp DES mẫu từ code gốc.
# Compile chương trình, chạy, rồi kiểm tra roundtrip.
set -euo pipefail

echo "Compiling DES program..."
g++ -std=c++17 -Wall -Wextra -pedantic ../des.cpp -o ../des

echo "Running DES roundtrip test..."
if ../des; then
    echo "Test passed: Round trip successful."
else
    echo "Test failed: Round trip failed."
    exit 1
fi

echo "DES sample test completed successfully."
