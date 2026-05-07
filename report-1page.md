## Mục tiêu

Triển khai thuật toán DES và TripleDES hoàn chỉnh, bao gồm mã hóa và giải mã, hỗ trợ multi-block với padding, và các test case cần thiết.

## Cách làm / Method

Bắt đầu từ code gốc chỉ có mã hóa DES single block. Thêm hàm giải mã bằng cách sử dụng round keys theo thứ tự ngược lại. Thêm padding zero cho multi-block. Triển khai TripleDES với 3 key. Viết các test script để kiểm tra các chức năng.

## Kết quả / Result

Chương trình có thể mã hóa và giải mã DES single và multi-block, TripleDES. Các test roundtrip, multi-block, tamper, wrong key đều pass. Ciphertext mẫu khớp với giá trị mong đợi.

## Kết luận / Conclusion

Học được cách triển khai DES từ đầu, bao gồm key generation, Feistel rounds, S-boxes. Hạn chế: padding zero không an toàn, chỉ dùng cho học thuật. Hướng mở rộng: thêm CBC mode, PKCS7 padding, hỗ trợ file input.
