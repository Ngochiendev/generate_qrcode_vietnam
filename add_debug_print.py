#!/usr/bin/env python3
import re

with open('test/viet_qr_test.dart', 'r', encoding='utf-8') as f:
    lines = f.readlines()

output_lines = []
i = 0
while i < len(lines):
    line = lines[i]
    output_lines.append(line)
    
    # Nếu là dòng build() và dòng tiếp theo không phải debugPrint
    if 'final qrCode = vietQR.build();' in line:
        if i + 1 < len(lines) and 'debugPrint' not in lines[i + 1]:
            # Tìm tên ngân hàng từ dòng test phía trước
            for j in range(i - 1, max(0, i - 10), -1):
                if "test('" in lines[j]:
                    match = re.search(r"test\('([^']+?)\s*-\s*[^']*\([0-9]{6}\)'\)", lines[j])
                    if match:
                        bank_name = match.group(1)
                        indent = '      '  # 6 spaces
                        output_lines.append(f"{indent}debugPrint('{bank_name} QR: $qrCode');\n")
                    break
    
    i += 1

with open('test/viet_qr_test.dart', 'w', encoding='utf-8') as f:
    f.writelines(output_lines)

print("✓ Đã thêm debugPrint cho tất cả các test cases ngân hàng")
