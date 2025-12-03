# VietQR Generator - Flutter

Thư viện Flutter để tạo mã QR thanh toán chuẩn VietQR cho các ngân hàng Việt Nam.

## 📋 Mục lục

- [Giới thiệu](#giới-thiệu)
- [Tính năng](#tính-năng)
- [Cài đặt](#cài-đặt)
- [Sử dụng](#sử-dụng)
- [API Documentation](#api-documentation)
- [Danh sách ngân hàng hỗ trợ](#danh-sách-ngân-hàng-hỗ-trợ)
- [Testing](#testing)
- [Tài liệu tham khảo](#tài-liệu-tham-khảo)

## 🎯 Giới thiệu

VietQR Generator là thư viện Flutter hỗ trợ tạo mã QR thanh toán theo chuẩn VietQR - tiêu chuẩn chung cho hệ thống thanh toán QR Code tại Việt Nam. Thư viện này tuân thủ đầy đủ các quy định kỹ thuật từ tài liệu chính thức của Napas.

### Đặc điểm nổi bật

- ✅ Tuân thủ 100% chuẩn VietQR (EMVCo QR Code Specification)
- ✅ Hỗ trợ 65 ngân hàng và tổ chức tài chính Việt Nam
- ✅ Tính CRC-16/CCITT-FALSE chuẩn quốc tế
- ✅ Validation và verify QR code
- ✅ API đơn giản, dễ sử dụng
- ✅ Test coverage đầy đủ (65+ test cases)

## ⚡ Tính năng

### 1. Tạo QR Code

- Tạo QR tĩnh đến tài khoản (Static QR)
- Hỗ trợ số tiền giao dịch
- Thêm nội dung chuyển khoản

### 2. CRC Validation

- Tính toán CRC-16/CCITT-FALSE
- Generate mã CRC 4 ký tự hex
- Verify tính hợp lệ của QR code

### 3. Ngân hàng hỗ trợ

- 65 ngân hàng và tổ chức tài chính
- Bao gồm: VietinBank, Vietcombank, BIDV, Agribank, Techcombank, MB Bank, ACB, VPBank, TPBank, Sacombank, và nhiều ngân hàng khác

## 📦 Cài đặt

Thêm dependency vào file `pubspec.yaml`:

```yaml
dependencies:
  flutter:
    sdk: flutter
```

## 🚀 Sử dụng

### Ví dụ cơ bản

```dart
import 'package:flutter_build_qr_vietnam/services/viet_qr.dart';

// Tạo QR Code đơn giản
final vietQR = VietQR()
    .setBeneficiaryOrganization('970415', '19036852')  // VietinBank
    .setTransactionAmount('50000')
    .setAdditionalDataFieldTemplate('Thanh toan don hang');

final qrCode = vietQR.build();
print('QR Code: $qrCode');
```

### Ví dụ chi tiết

```dart
// 1. Tạo QR không có số tiền (người dùng tự nhập)
final qrNoAmount = VietQR()
    .setBeneficiaryOrganization('970436', '0123456789')  // Vietcombank
    .setAdditionalDataFieldTemplate('Chuyen khoan');

// 2. Tạo QR có số tiền cố định
final qrWithAmount = VietQR()
    .setBeneficiaryOrganization('970418', '9876543210')  // BIDV
    .setTransactionAmount('100000')
    .setAdditionalDataFieldTemplate('Thanh toan hoa don');

// 3. Tạo QR và verify
final qrString = qrWithAmount.build();
bool isValid = qrWithAmount.verifyCRC(qrString);
print('QR valid: $isValid');

// 4. Generate CRC code
final crcCode = qrWithAmount.genCRCCode('00020101021138570010A000000727');
print('CRC: $crcCode');
```

## 📚 API Documentation

### Class: `VietQR`

#### Methods

##### `setBeneficiaryOrganization(String acquierID, String consumerID)`

Thiết lập thông tin tài khoản người nhận.

**Parameters:**

- `acquierID`: Mã BIN của ngân hàng (6 số)
- `consumerID`: Số tài khoản người nhận

**Returns:** `VietQR` (để chain methods)

**Example:**

```dart
vietQR.setBeneficiaryOrganization('970415', '19036852');
```

##### `setTransactionAmount(String money)`

Thiết lập số tiền giao dịch.

**Parameters:**

- `money`: Số tiền (VNĐ, dạng string)

**Returns:** `VietQR` (để chain methods)

**Example:**

```dart
vietQR.setTransactionAmount('50000');  // 50,000 VNĐ
```

##### `setAdditionalDataFieldTemplate(String content)`

Thiết lập nội dung chuyển khoản.

**Parameters:**

- `content`: Nội dung chuyển khoản

**Returns:** `VietQR` (để chain methods)

**Example:**

```dart
vietQR.setAdditionalDataFieldTemplate('Thanh toan hoa don');
```

##### `build()`

Tạo chuỗi QR Code hoàn chỉnh.

**Returns:** `String` - Chuỗi QR Code đầy đủ (bao gồm CRC)

**Example:**

```dart
final qrCode = vietQR.build();
```

##### `calcCRC(String str)`

Tính toán CRC-16/CCITT-FALSE cho chuỗi đầu vào.

**Parameters:**

- `str`: Chuỗi cần tính CRC

**Returns:** `int` - Giá trị CRC (0x0000 - 0xFFFF)

**Algorithm:** CRC-16/CCITT-FALSE

- Polynomial: 0x1021
- Initial value: 0xFFFF
- Final XOR: 0x0000

**Example:**

```dart
int crc = vietQR.calcCRC('123456789');  // Returns 12739 (0x31C3)
```

##### `genCRCCode(String content)`

Tạo mã CRC 4 ký tự hex từ chuỗi.

**Parameters:**

- `content`: Chuỗi cần tạo CRC

**Returns:** `String` - Mã CRC 4 ký tự hex (VD: "31C3", "F4E5")

**Example:**

```dart
String crcCode = vietQR.genCRCCode('123456789');  // Returns "31C3"
```

##### `verifyCRC(String content)`

Kiểm tra tính hợp lệ của QR code bằng cách verify CRC.

**Parameters:**

- `content`: Chuỗi QR code đầy đủ (bao gồm CRC 4 ký tự cuối)

**Returns:** `bool` - `true` nếu CRC hợp lệ, `false` nếu không

**Example:**

```dart
bool isValid = vietQR.verifyCRC(qrCodeString);
if (isValid) {
  print('QR Code hợp lệ');
} else {
  print('QR Code không hợp lệ');
}
```

## 🏦 Danh sách ngân hàng hỗ trợ

| Ngân hàng       | Tên đầy đủ                                    | BIN Code |
| --------------- | --------------------------------------------- | -------- |
| VietinBank      | Ngân hàng TMCP Công Thương Việt Nam           | 970415   |
| Vietcombank     | Ngân hàng TMCP Ngoại Thương Việt Nam          | 970436   |
| BIDV            | Ngân hàng TMCP Đầu tư và Phát triển Việt Nam  | 970418   |
| Agribank        | Ngân hàng Nông nghiệp và Phát triển Nông thôn | 970405   |
| OCB             | Ngân hàng TMCP Phương Đông                    | 970448   |
| MBBank          | Ngân hàng TMCP Quân đội                       | 970422   |
| Techcombank     | Ngân hàng TMCP Kỹ thương Việt Nam             | 970407   |
| ACB             | Ngân hàng TMCP Á Châu                         | 970416   |
| VPBank          | Ngân hàng TMCP Việt Nam Thịnh Vượng           | 970432   |
| TPBank          | Ngân hàng TMCP Tiên Phong                     | 970423   |
| Sacombank       | Ngân hàng TMCP Sài Gòn Thương Tín             | 970403   |
| HDBank          | Ngân hàng TMCP Phát triển TP.HCM              | 970437   |
| VietCapitalBank | Ngân hàng TMCP Bản Việt                       | 970454   |
| SCB             | Ngân hàng TMCP Sài Gòn                        | 970429   |
| VIB             | Ngân hàng TMCP Quốc tế Việt Nam               | 970441   |
| SHB             | Ngân hàng TMCP Sài Gòn - Hà Nội               | 970443   |
| Eximbank        | Ngân hàng TMCP Xuất Nhập khẩu Việt Nam        | 970431   |
| MSB             | Ngân hàng TMCP Hàng Hải                       | 970426   |
| CAKE            | CAKE by VPBank                                | 546034   |
| Ubank           | Ubank by VPBank                               | 546035   |
| MoMo            | Ví điện tử MoMo                               | 971025   |
| ...             | _và 44 ngân hàng khác_                        | ...      |

_Xem file `listbank.md` để biết danh sách đầy đủ 65 ngân hàng._

## 🧪 Testing

### Chạy tất cả tests

```bash
flutter test
```

### Chạy tests cho ngân hàng cụ thể

```bash
# Test một ngân hàng
flutter test --name "VietinBank"

# Test tất cả ngân hàng
flutter test test/viet_qr_test.dart
```

### Chạy tests cho CRC functions

```bash
# Test genCRCCode
flutter test --name "genCRCCode"

# Test verifyCRC
flutter test --name "verifyCRC"
```

### Test Coverage

Dự án có **73 test cases** bao gồm:

- ✅ 65 test cases cho 65 ngân hàng
- ✅ 4 test cases cho `genCRCCode()`
- ✅ 2 test cases cho `verifyCRC()`
- ✅ Validation với chuẩn quốc tế CRC-16/CCITT-FALSE

## 🔧 Cấu trúc dự án

```
flutter_build_qr_vietnam/
├── lib/
│   ├── main.dart                    # Entry point
│   ├── screens/
│   │   └── qr_screen.dart          # UI hiển thị QR
│   └── services/
│       └── viet_qr.dart            # Core VietQR service
├── test/
│   └── viet_qr_test.dart           # Test suite (73 tests)
├── listbank.md                      # Danh sách 65 ngân hàng
└── README.md                        # Documentation
```

## 📖 Tài liệu tham khảo

### VietQR Standards

- [VietQR Technical Specification](https://www.napas.com.vn/vietqr) - Tài liệu kỹ thuật chính thức
- EMVCo QR Code Specification for Payment Systems
- Section 6.1.1: CRC Calculation (CRC-16/CCITT-FALSE)

### CRC Algorithm

- **Algorithm**: CRC-16/CCITT-FALSE
- **Polynomial**: 0x1021 (x^16 + x^12 + x^5 + 1)
- **Initial Value**: 0xFFFF
- **Final XOR**: 0x0000
- **Reference**: [node-crc library](https://github.com/alexgorbatchev/node-crc)
- **Test Vector**: "123456789" → 0x31C3

### Validation Tools

- [CRC Calculator](http://www.lammertbies.nl/comm/info/crc-calculation.html)

## 🎨 Ví dụ QR Code

### QR Code mẫu (từ tài liệu VietQR)

```
00020101021138570010A000000727012700069704030112001101234567802008QRIBFTTA5303704585802VN6304F4E5
```

**Phân tích:**

- `00 02 01` - Payload Format Indicator = 01
- `01 02 12` - Point of Initiation Method = 12 (Dynamic)
- `38 57 ...` - Consumer Account Information
  - `0010A000000727` - GUID
  - `01 27 ...` - Beneficiary Organization
    - `00 06 970403` - Acquirer ID (Sacombank)
    - `01 12 00110123456780` - Consumer ID
  - `0208QRIBFTTA` - Service Code
- `53 03 704` - Currency = 704 (VND)
- `58 02 VN` - Country Code
- `63 04 F4E5` - CRC

## 🤝 Đóng góp

Mọi đóng góp đều được chào đón! Vui lòng:

1. Fork repository
2. Tạo branch cho feature (`git checkout -b feature/AmazingFeature`)
3. Commit changes (`git commit -m 'Add some AmazingFeature'`)
4. Push to branch (`git push origin feature/AmazingFeature`)
5. Tạo Pull Request

## 📝 License

MIT License - Xem file LICENSE để biết thêm chi tiết.

## 👤 Tác giả

**Ngochiendev**

- GitHub: [@Ngochiendev](https://github.com/Ngochiendev)

## 🙏 Lời cảm ơn

- [Napas](https://www.napas.com.vn) - Cung cấp tài liệu kỹ thuật VietQR [Link](https://vietqr.net/portal-service/download/documents/QR_Format_T&C_v1.0_VN_092021.pdf)
- [node-crc](https://github.com/alexgorbatchev/node-crc) - Reference implementation cho CRC-16/CCITT-FALSE
- Cộng đồng Flutter Vietnam

---

**Lưu ý:** Thư viện này được phát triển dựa trên tài liệu kỹ thuật công khai của VietQR. Vui lòng tuân thủ các quy định của ngân hàng khi sử dụng trong môi trường production.
