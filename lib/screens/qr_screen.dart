import 'package:flutter/material.dart';
import 'package:qr_flutter/qr_flutter.dart';

import '../services/viet_qr.dart';

class QRScreen extends StatefulWidget {
  const QRScreen({super.key});

  @override
  State<QRScreen> createState() => _QRScreenState();
}

class _QRScreenState extends State<QRScreen> {
  String qrCode = '';
  final TextEditingController amountController =
      TextEditingController(text: "50000");
  final TextEditingController acquirerController =
      TextEditingController(text: "970422");
  final TextEditingController consumerController =
      TextEditingController(text: "056789799999");
  final TextEditingController descriptionController = TextEditingController(
      text: "DTS001720013TKIM NGUYEN THIEN AN LOP 1 THANH TOAN HOC PHI");

  @override
  void dispose() {
    amountController.dispose();
    acquirerController.dispose();
    consumerController.dispose();
    descriptionController.dispose();
    super.dispose();
  }

  void generateQRCode() {
    final qr = VietQR()
        .setTransactionAmount(amountController.text.trim())
        .setBeneficiaryOrganization(
            acquirerController.text.trim(), consumerController.text.trim())
        .setAdditionalDataFieldTemplate(descriptionController.text.trim());

    setState(() {
      qrCode = qr.build();
    });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text("Generate QRCode VietNam"),
      ),
      body: Center(
        child: SingleChildScrollView(
          padding: const EdgeInsets.only(bottom: 32),
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              const Text(
                "Mã QR của bạn:",
                style: TextStyle(fontSize: 20),
              ),
              const SizedBox(height: 20),
              _buildInputField(
                "Số tiền",
                amountController,
                keyboardType: TextInputType.number,
              ),
              const SizedBox(height: 12),
              _buildInputField(
                "Mã ngân hàng (Acquirer ID)",
                acquirerController,
              ),
              const SizedBox(height: 12),
              _buildInputField(
                "Số tài khoản (Consumer ID)",
                consumerController,
              ),
              const SizedBox(height: 12),
              _buildInputField(
                "Nội dung chuyển khoản",
                descriptionController,
                maxLines: 3,
              ),
              const SizedBox(height: 20),
              if (qrCode.isNotEmpty)
                QrImageView(
                  data: qrCode,
                  version: QrVersions.auto,
                  size: 220,
                  backgroundColor: Colors.white,
                ),
              const SizedBox(height: 40),
              ElevatedButton(
                onPressed: generateQRCode,
                child: const Text("Tạo mã QR"),
              ),
            ],
          ),
        ),
      ),
    );
  }

  Widget _buildInputField(
    String label,
    TextEditingController controller, {
    TextInputType keyboardType = TextInputType.text,
    int maxLines = 1,
  }) {
    return Padding(
      padding: const EdgeInsets.symmetric(horizontal: 16.0),
      child: TextField(
        controller: controller,
        keyboardType: keyboardType,
        maxLines: maxLines,
        decoration: InputDecoration(
          labelText: label,
          border: OutlineInputBorder(
            borderSide: const BorderSide(color: Colors.grey),
            borderRadius: BorderRadius.circular(12.0),
          ),
        ),
      ),
    );
  }
}
