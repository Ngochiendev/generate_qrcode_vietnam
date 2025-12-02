import 'package:flutter/foundation.dart';
import 'package:flutter_test/flutter_test.dart';
import 'package:flutter_build_qr_vietnam/services/viet_qr.dart';

void main() {
  group('VietQR Tests', () {
    test('VietinBank - ICB (970415)', () {
      final vietQR = VietQR()
          .setBeneficiaryOrganization('970415', '0123456789')
          .setTransactionAmount('100000')
          .setAdditionalDataFieldTemplate('Test VietinBank');

      final qrCode = vietQR.build();
      debugPrint('VietinBank QR: $qrCode');
      expect(qrCode, isNotEmpty);
      expect(qrCode, contains('970415'));
      expect(qrCode, contains('0123456789'));
    });

    test('Vietcombank - VCB (970436)', () {
      final vietQR = VietQR()
          .setBeneficiaryOrganization('970436', '0123456789')
          .setTransactionAmount('200000')
          .setAdditionalDataFieldTemplate('Test Vietcombank');

      final qrCode = vietQR.build();
      debugPrint('Vietcombank QR: $qrCode');
      expect(qrCode, isNotEmpty);
      expect(qrCode, contains('970436'));
    });

    test('BIDV (970418)', () {
      final vietQR = VietQR()
          .setBeneficiaryOrganization('970418', '0123456789')
          .setTransactionAmount('300000')
          .setAdditionalDataFieldTemplate('Test BIDV');

      final qrCode = vietQR.build();
      debugPrint('BIDV QR: $qrCode');
      expect(qrCode, isNotEmpty);
      expect(qrCode, contains('970418'));
    });

    test('Agribank - VBA (970405)', () {
      final vietQR = VietQR()
          .setBeneficiaryOrganization('970405', '0123456789')
          .setTransactionAmount('400000')
          .setAdditionalDataFieldTemplate('Test Agribank');

      final qrCode = vietQR.build();
      debugPrint('Agribank QR: $qrCode');
      expect(qrCode, isNotEmpty);
      expect(qrCode, contains('970405'));
    });

    test('OCB (970448)', () {
      final vietQR = VietQR()
          .setBeneficiaryOrganization('970448', '0123456789')
          .setTransactionAmount('500000')
          .setAdditionalDataFieldTemplate('Test OCB');

      final qrCode = vietQR.build();
      debugPrint('OCB QR: $qrCode');
      expect(qrCode, isNotEmpty);
      expect(qrCode, contains('970448'));
    });

    test('MBBank - MB (970422)', () {
      final vietQR = VietQR()
          .setBeneficiaryOrganization('970422', '0123456789')
          .setTransactionAmount('600000')
          .setAdditionalDataFieldTemplate('Test MBBank');

      final qrCode = vietQR.build();
      debugPrint('MBBank QR: $qrCode');
      expect(qrCode, isNotEmpty);
      expect(qrCode, contains('970422'));
    });

    test('Techcombank - TCB (970407)', () {
      final vietQR = VietQR()
          .setBeneficiaryOrganization('970407', '0123456789')
          .setTransactionAmount('700000')
          .setAdditionalDataFieldTemplate('Test Techcombank');

      final qrCode = vietQR.build();
      debugPrint('Techcombank QR: $qrCode');
      expect(qrCode, isNotEmpty);
      expect(qrCode, contains('970407'));
    });

    test('ACB (970416)', () {
      final vietQR = VietQR()
          .setBeneficiaryOrganization('970416', '0123456789')
          .setTransactionAmount('800000')
          .setAdditionalDataFieldTemplate('Test ACB');

      final qrCode = vietQR.build();
      debugPrint('ACB QR: $qrCode');
      expect(qrCode, isNotEmpty);
      expect(qrCode, contains('970416'));
    });

    test('VPBank - VPB (970432)', () {
      final vietQR = VietQR()
          .setBeneficiaryOrganization('970432', '0123456789')
          .setTransactionAmount('900000')
          .setAdditionalDataFieldTemplate('Test VPBank');

      final qrCode = vietQR.build();
      debugPrint('VPBank QR: $qrCode');
      expect(qrCode, isNotEmpty);
      expect(qrCode, contains('970432'));
    });

    test('TPBank - TPB (970423)', () {
      final vietQR = VietQR()
          .setBeneficiaryOrganization('970423', '0123456789')
          .setTransactionAmount('1000000')
          .setAdditionalDataFieldTemplate('Test TPBank');

      final qrCode = vietQR.build();
      debugPrint('TPBank QR: $qrCode');
      expect(qrCode, isNotEmpty);
      expect(qrCode, contains('970423'));
    });

    test('Sacombank - STB (970403)', () {
      final vietQR = VietQR()
          .setBeneficiaryOrganization('970403', '0123456789')
          .setTransactionAmount('1100000')
          .setAdditionalDataFieldTemplate('Test Sacombank');

      final qrCode = vietQR.build();
      debugPrint('Sacombank QR: $qrCode');
      expect(qrCode, isNotEmpty);
      expect(qrCode, contains('970403'));
    });

    test('HDBank - HDB (970437)', () {
      final vietQR = VietQR()
          .setBeneficiaryOrganization('970437', '0123456789')
          .setTransactionAmount('1200000')
          .setAdditionalDataFieldTemplate('Test HDBank');

      final qrCode = vietQR.build();
      debugPrint('HDBank QR: $qrCode');
      expect(qrCode, isNotEmpty);
      expect(qrCode, contains('970437'));
    });

    test('VietCapitalBank - VCCB (970454)', () {
      final vietQR = VietQR()
          .setBeneficiaryOrganization('970454', '0123456789')
          .setTransactionAmount('1300000')
          .setAdditionalDataFieldTemplate('Test VietCapitalBank');

      final qrCode = vietQR.build();
      debugPrint('VietCapitalBank QR: $qrCode');
      expect(qrCode, isNotEmpty);
      expect(qrCode, contains('970454'));
    });

    test('SCB (970429)', () {
      final vietQR = VietQR()
          .setBeneficiaryOrganization('970429', '0123456789')
          .setTransactionAmount('1400000')
          .setAdditionalDataFieldTemplate('Test SCB');

      final qrCode = vietQR.build();
      debugPrint('SCB QR: $qrCode');
      expect(qrCode, isNotEmpty);
      expect(qrCode, contains('970429'));
    });

    test('VIB (970441)', () {
      final vietQR = VietQR()
          .setBeneficiaryOrganization('970441', '0123456789')
          .setTransactionAmount('1500000')
          .setAdditionalDataFieldTemplate('Test VIB');

      final qrCode = vietQR.build();
      debugPrint('VIB QR: $qrCode');
      expect(qrCode, isNotEmpty);
      expect(qrCode, contains('970441'));
    });

    test('SHB (970443)', () {
      final vietQR = VietQR()
          .setBeneficiaryOrganization('970443', '0123456789')
          .setTransactionAmount('1600000')
          .setAdditionalDataFieldTemplate('Test SHB');

      final qrCode = vietQR.build();
      debugPrint('SHB QR: $qrCode');
      expect(qrCode, isNotEmpty);
      expect(qrCode, contains('970443'));
    });

    test('Eximbank - EIB (970431)', () {
      final vietQR = VietQR()
          .setBeneficiaryOrganization('970431', '0123456789')
          .setTransactionAmount('1700000')
          .setAdditionalDataFieldTemplate('Test Eximbank');

      final qrCode = vietQR.build();
      debugPrint('Eximbank QR: $qrCode');
      expect(qrCode, isNotEmpty);
      expect(qrCode, contains('970431'));
    });

    test('MSB (970426)', () {
      final vietQR = VietQR()
          .setBeneficiaryOrganization('970426', '0123456789')
          .setTransactionAmount('1800000')
          .setAdditionalDataFieldTemplate('Test MSB');

      final qrCode = vietQR.build();
      debugPrint('MSB QR: $qrCode');
      expect(qrCode, isNotEmpty);
      expect(qrCode, contains('970426'));
    });

    test('CAKE by VPBank (546034)', () {
      final vietQR = VietQR()
          .setBeneficiaryOrganization('546034', '0123456789')
          .setTransactionAmount('1900000')
          .setAdditionalDataFieldTemplate('Test CAKE');

      final qrCode = vietQR.build();
      debugPrint('CAKE by VPBank QR: $qrCode');
      expect(qrCode, isNotEmpty);
      expect(qrCode, contains('546034'));
    });

    test('Ubank by VPBank (546035)', () {
      final vietQR = VietQR()
          .setBeneficiaryOrganization('546035', '0123456789')
          .setTransactionAmount('2000000')
          .setAdditionalDataFieldTemplate('Test Ubank');

      final qrCode = vietQR.build();
      debugPrint('Ubank by VPBank QR: $qrCode');
      expect(qrCode, isNotEmpty);
      expect(qrCode, contains('546035'));
    });

    test('ViettelMoney (971005)', () {
      final vietQR = VietQR()
          .setBeneficiaryOrganization('971005', '0123456789')
          .setTransactionAmount('2100000')
          .setAdditionalDataFieldTemplate('Test ViettelMoney');

      final qrCode = vietQR.build();
      debugPrint('ViettelMoney QR: $qrCode');
      expect(qrCode, isNotEmpty);
      expect(qrCode, contains('971005'));
    });

    test('Timo by Ban Viet Bank (963388)', () {
      final vietQR = VietQR()
          .setBeneficiaryOrganization('963388', '0123456789')
          .setTransactionAmount('2200000')
          .setAdditionalDataFieldTemplate('Test Timo');

      final qrCode = vietQR.build();
      debugPrint('Timo by Ban Viet Bank QR: $qrCode');
      expect(qrCode, isNotEmpty);
      expect(qrCode, contains('963388'));
    });

    test('VNPTMoney (971011)', () {
      final vietQR = VietQR()
          .setBeneficiaryOrganization('971011', '0123456789')
          .setTransactionAmount('2300000')
          .setAdditionalDataFieldTemplate('Test VNPTMoney');

      final qrCode = vietQR.build();
      debugPrint('VNPTMoney QR: $qrCode');
      expect(qrCode, isNotEmpty);
      expect(qrCode, contains('971011'));
    });

    test('SaigonBank - SGICB (970400)', () {
      final vietQR = VietQR()
          .setBeneficiaryOrganization('970400', '0123456789')
          .setTransactionAmount('2400000')
          .setAdditionalDataFieldTemplate('Test SaigonBank');

      final qrCode = vietQR.build();
      debugPrint('SaigonBank QR: $qrCode');
      expect(qrCode, isNotEmpty);
      expect(qrCode, contains('970400'));
    });

    test('BacABank - BAB (970409)', () {
      final vietQR = VietQR()
          .setBeneficiaryOrganization('970409', '0123456789')
          .setTransactionAmount('2500000')
          .setAdditionalDataFieldTemplate('Test BacABank');

      final qrCode = vietQR.build();
      debugPrint('BacABank QR: $qrCode');
      expect(qrCode, isNotEmpty);
      expect(qrCode, contains('970409'));
    });

    test('MoMo (971025)', () {
      final vietQR = VietQR()
          .setBeneficiaryOrganization('971025', '0123456789')
          .setTransactionAmount('2600000')
          .setAdditionalDataFieldTemplate('Test MoMo');

      final qrCode = vietQR.build();
      debugPrint('MoMo QR: $qrCode');
      expect(qrCode, isNotEmpty);
      expect(qrCode, contains('971025'));
    });

    test('PVcomBank Pay - PVDB (971133)', () {
      final vietQR = VietQR()
          .setBeneficiaryOrganization('971133', '0123456789')
          .setTransactionAmount('2700000')
          .setAdditionalDataFieldTemplate('Test PVcomBank Pay');

      final qrCode = vietQR.build();
      debugPrint('PVcomBank Pay QR: $qrCode');
      expect(qrCode, isNotEmpty);
      expect(qrCode, contains('971133'));
    });

    test('PVcomBank - PVCB (970412)', () {
      final vietQR = VietQR()
          .setBeneficiaryOrganization('970412', '0123456789')
          .setTransactionAmount('2800000')
          .setAdditionalDataFieldTemplate('Test PVcomBank');

      final qrCode = vietQR.build();
      debugPrint('PVcomBank QR: $qrCode');
      expect(qrCode, isNotEmpty);
      expect(qrCode, contains('970412'));
    });

    test('MBV (970414)', () {
      final vietQR = VietQR()
          .setBeneficiaryOrganization('970414', '0123456789')
          .setTransactionAmount('2900000')
          .setAdditionalDataFieldTemplate('Test MBV');

      final qrCode = vietQR.build();
      debugPrint('MBV QR: $qrCode');
      expect(qrCode, isNotEmpty);
      expect(qrCode, contains('970414'));
    });

    test('NCB (970419)', () {
      final vietQR = VietQR()
          .setBeneficiaryOrganization('970419', '0123456789')
          .setTransactionAmount('3000000')
          .setAdditionalDataFieldTemplate('Test NCB');

      final qrCode = vietQR.build();
      debugPrint('NCB QR: $qrCode');
      expect(qrCode, isNotEmpty);
      expect(qrCode, contains('970419'));
    });

    test('ShinhanBank - SHBVN (970424)', () {
      final vietQR = VietQR()
          .setBeneficiaryOrganization('970424', '0123456789')
          .setTransactionAmount('3100000')
          .setAdditionalDataFieldTemplate('Test ShinhanBank');

      final qrCode = vietQR.build();
      debugPrint('ShinhanBank QR: $qrCode');
      expect(qrCode, isNotEmpty);
      expect(qrCode, contains('970424'));
    });

    test('ABBANK - ABB (970425)', () {
      final vietQR = VietQR()
          .setBeneficiaryOrganization('970425', '0123456789')
          .setTransactionAmount('3200000')
          .setAdditionalDataFieldTemplate('Test ABBANK');

      final qrCode = vietQR.build();
      debugPrint('ABBANK QR: $qrCode');
      expect(qrCode, isNotEmpty);
      expect(qrCode, contains('970425'));
    });

    test('VietABank - VAB (970427)', () {
      final vietQR = VietQR()
          .setBeneficiaryOrganization('970427', '0123456789')
          .setTransactionAmount('3300000')
          .setAdditionalDataFieldTemplate('Test VietABank');

      final qrCode = vietQR.build();
      debugPrint('VietABank QR: $qrCode');
      expect(qrCode, isNotEmpty);
      expect(qrCode, contains('970427'));
    });

    test('NamABank - NAB (970428)', () {
      final vietQR = VietQR()
          .setBeneficiaryOrganization('970428', '0123456789')
          .setTransactionAmount('3400000')
          .setAdditionalDataFieldTemplate('Test NamABank');

      final qrCode = vietQR.build();
      debugPrint('NamABank QR: $qrCode');
      expect(qrCode, isNotEmpty);
      expect(qrCode, contains('970428'));
    });

    test('PGBank - PGB (970430)', () {
      final vietQR = VietQR()
          .setBeneficiaryOrganization('970430', '0123456789')
          .setTransactionAmount('3500000')
          .setAdditionalDataFieldTemplate('Test PGBank');

      final qrCode = vietQR.build();
      debugPrint('PGBank QR: $qrCode');
      expect(qrCode, isNotEmpty);
      expect(qrCode, contains('970430'));
    });

    test('VietBank - VIETBANK (970433)', () {
      final vietQR = VietQR()
          .setBeneficiaryOrganization('970433', '0123456789')
          .setTransactionAmount('3600000')
          .setAdditionalDataFieldTemplate('Test VietBank');

      final qrCode = vietQR.build();
      debugPrint('VietBank QR: $qrCode');
      expect(qrCode, isNotEmpty);
      expect(qrCode, contains('970433'));
    });

    test('BaoVietBank - BVB (970438)', () {
      final vietQR = VietQR()
          .setBeneficiaryOrganization('970438', '0123456789')
          .setTransactionAmount('3700000')
          .setAdditionalDataFieldTemplate('Test BaoVietBank');

      final qrCode = vietQR.build();
      debugPrint('BaoVietBank QR: $qrCode');
      expect(qrCode, isNotEmpty);
      expect(qrCode, contains('970438'));
    });

    test('SeABank - SEAB (970440)', () {
      final vietQR = VietQR()
          .setBeneficiaryOrganization('970440', '0123456789')
          .setTransactionAmount('3800000')
          .setAdditionalDataFieldTemplate('Test SeABank');

      final qrCode = vietQR.build();
      debugPrint('SeABank QR: $qrCode');
      expect(qrCode, isNotEmpty);
      expect(qrCode, contains('970440'));
    });

    test('COOPBANK (970446)', () {
      final vietQR = VietQR()
          .setBeneficiaryOrganization('970446', '0123456789')
          .setTransactionAmount('3900000')
          .setAdditionalDataFieldTemplate('Test COOPBANK');

      final qrCode = vietQR.build();
      debugPrint('COOPBANK QR: $qrCode');
      expect(qrCode, isNotEmpty);
      expect(qrCode, contains('970446'));
    });

    test('LPBank - LPB (970449)', () {
      final vietQR = VietQR()
          .setBeneficiaryOrganization('970449', '0123456789')
          .setTransactionAmount('4000000')
          .setAdditionalDataFieldTemplate('Test LPBank');

      final qrCode = vietQR.build();
      debugPrint('LPBank QR: $qrCode');
      expect(qrCode, isNotEmpty);
      expect(qrCode, contains('970449'));
    });

    test('KienLongBank - KLB (970452)', () {
      final vietQR = VietQR()
          .setBeneficiaryOrganization('970452', '0123456789')
          .setTransactionAmount('4100000')
          .setAdditionalDataFieldTemplate('Test KienLongBank');

      final qrCode = vietQR.build();
      debugPrint('KienLongBank QR: $qrCode');
      expect(qrCode, isNotEmpty);
      expect(qrCode, contains('970452'));
    });

    test('KBank (668888)', () {
      final vietQR = VietQR()
          .setBeneficiaryOrganization('668888', '0123456789')
          .setTransactionAmount('4200000')
          .setAdditionalDataFieldTemplate('Test KBank');

      final qrCode = vietQR.build();
      debugPrint('KBank QR: $qrCode');
      expect(qrCode, isNotEmpty);
      expect(qrCode, contains('668888'));
    });

    test('MAFC (977777)', () {
      final vietQR = VietQR()
          .setBeneficiaryOrganization('977777', '0123456789')
          .setTransactionAmount('4300000')
          .setAdditionalDataFieldTemplate('Test MAFC');

      final qrCode = vietQR.build();
      debugPrint('MAFC QR: $qrCode');
      expect(qrCode, isNotEmpty);
      expect(qrCode, contains('977777'));
    });

    test('HongLeong - HLBVN (970442)', () {
      final vietQR = VietQR()
          .setBeneficiaryOrganization('970442', '0123456789')
          .setTransactionAmount('4400000')
          .setAdditionalDataFieldTemplate('Test HongLeong');

      final qrCode = vietQR.build();
      debugPrint('HongLeong QR: $qrCode');
      expect(qrCode, isNotEmpty);
      expect(qrCode, contains('970442'));
    });

    test('KEBHANAHN (970467)', () {
      final vietQR = VietQR()
          .setBeneficiaryOrganization('970467', '0123456789')
          .setTransactionAmount('4500000')
          .setAdditionalDataFieldTemplate('Test KEBHANAHN');

      final qrCode = vietQR.build();
      debugPrint('KEBHANAHN QR: $qrCode');
      expect(qrCode, isNotEmpty);
      expect(qrCode, contains('970467'));
    });

    test('KEBHanaHCM - KEBHANAHCM (970466)', () {
      final vietQR = VietQR()
          .setBeneficiaryOrganization('970466', '0123456789')
          .setTransactionAmount('4600000')
          .setAdditionalDataFieldTemplate('Test KEBHanaHCM');

      final qrCode = vietQR.build();
      debugPrint('KEBHanaHCM QR: $qrCode');
      expect(qrCode, isNotEmpty);
      expect(qrCode, contains('970466'));
    });

    test('Citibank (533948)', () {
      final vietQR = VietQR()
          .setBeneficiaryOrganization('533948', '0123456789')
          .setTransactionAmount('4700000')
          .setAdditionalDataFieldTemplate('Test Citibank');

      final qrCode = vietQR.build();
      debugPrint('Citibank QR: $qrCode');
      expect(qrCode, isNotEmpty);
      expect(qrCode, contains('533948'));
    });

    test('CBBank - CBB (970444)', () {
      final vietQR = VietQR()
          .setBeneficiaryOrganization('970444', '0123456789')
          .setTransactionAmount('4800000')
          .setAdditionalDataFieldTemplate('Test CBBank');

      final qrCode = vietQR.build();
      debugPrint('CBBank QR: $qrCode');
      expect(qrCode, isNotEmpty);
      expect(qrCode, contains('970444'));
    });

    test('CIMB (422589)', () {
      final vietQR = VietQR()
          .setBeneficiaryOrganization('422589', '0123456789')
          .setTransactionAmount('4900000')
          .setAdditionalDataFieldTemplate('Test CIMB');

      final qrCode = vietQR.build();
      debugPrint('CIMB QR: $qrCode');
      expect(qrCode, isNotEmpty);
      expect(qrCode, contains('422589'));
    });

    test('DBSBank - DBS (796500)', () {
      final vietQR = VietQR()
          .setBeneficiaryOrganization('796500', '0123456789')
          .setTransactionAmount('5000000')
          .setAdditionalDataFieldTemplate('Test DBSBank');

      final qrCode = vietQR.build();
      debugPrint('DBSBank QR: $qrCode');
      expect(qrCode, isNotEmpty);
      expect(qrCode, contains('796500'));
    });

    test('Vikki (970406)', () {
      final vietQR = VietQR()
          .setBeneficiaryOrganization('970406', '0123456789')
          .setTransactionAmount('5100000')
          .setAdditionalDataFieldTemplate('Test Vikki');

      final qrCode = vietQR.build();
      debugPrint('Vikki QR: $qrCode');
      expect(qrCode, isNotEmpty);
      expect(qrCode, contains('970406'));
    });

    test('VBSP (999888)', () {
      final vietQR = VietQR()
          .setBeneficiaryOrganization('999888', '0123456789')
          .setTransactionAmount('5200000')
          .setAdditionalDataFieldTemplate('Test VBSP');

      final qrCode = vietQR.build();
      debugPrint('VBSP QR: $qrCode');
      expect(qrCode, isNotEmpty);
      expect(qrCode, contains('999888'));
    });

    test('GPBank - GPB (970408)', () {
      final vietQR = VietQR()
          .setBeneficiaryOrganization('970408', '0123456789')
          .setTransactionAmount('5300000')
          .setAdditionalDataFieldTemplate('Test GPBank');

      final qrCode = vietQR.build();
      debugPrint('GPBank QR: $qrCode');
      expect(qrCode, isNotEmpty);
      expect(qrCode, contains('970408'));
    });

    test('KookminHCM - KBHCM (970463)', () {
      final vietQR = VietQR()
          .setBeneficiaryOrganization('970463', '0123456789')
          .setTransactionAmount('5400000')
          .setAdditionalDataFieldTemplate('Test KookminHCM');

      final qrCode = vietQR.build();
      debugPrint('KookminHCM QR: $qrCode');
      expect(qrCode, isNotEmpty);
      expect(qrCode, contains('970463'));
    });

    test('KookminHN - KBHN (970462)', () {
      final vietQR = VietQR()
          .setBeneficiaryOrganization('970462', '0123456789')
          .setTransactionAmount('5500000')
          .setAdditionalDataFieldTemplate('Test KookminHN');

      final qrCode = vietQR.build();
      debugPrint('KookminHN QR: $qrCode');
      expect(qrCode, isNotEmpty);
      expect(qrCode, contains('970462'));
    });

    test('Woori - WVN (970457)', () {
      final vietQR = VietQR()
          .setBeneficiaryOrganization('970457', '0123456789')
          .setTransactionAmount('5600000')
          .setAdditionalDataFieldTemplate('Test Woori');

      final qrCode = vietQR.build();
      debugPrint('Woori QR: $qrCode');
      expect(qrCode, isNotEmpty);
      expect(qrCode, contains('970457'));
    });

    test('VRB (970421)', () {
      final vietQR = VietQR()
          .setBeneficiaryOrganization('970421', '0123456789')
          .setTransactionAmount('5700000')
          .setAdditionalDataFieldTemplate('Test VRB');

      final qrCode = vietQR.build();
      debugPrint('VRB QR: $qrCode');
      expect(qrCode, isNotEmpty);
      expect(qrCode, contains('970421'));
    });

    test('HSBC (458761)', () {
      final vietQR = VietQR()
          .setBeneficiaryOrganization('458761', '0123456789')
          .setTransactionAmount('5800000')
          .setAdditionalDataFieldTemplate('Test HSBC');

      final qrCode = vietQR.build();
      debugPrint('HSBC QR: $qrCode');
      expect(qrCode, isNotEmpty);
      expect(qrCode, contains('458761'));
    });

    test('IBKHN - IBK HN (970455)', () {
      final vietQR = VietQR()
          .setBeneficiaryOrganization('970455', '0123456789')
          .setTransactionAmount('5900000')
          .setAdditionalDataFieldTemplate('Test IBKHN');

      final qrCode = vietQR.build();
      debugPrint('IBKHN QR: $qrCode');
      expect(qrCode, isNotEmpty);
      expect(qrCode, contains('970455'));
    });

    test('IBKHCM - IBK HCM (970456)', () {
      final vietQR = VietQR()
          .setBeneficiaryOrganization('970456', '0123456789')
          .setTransactionAmount('6000000')
          .setAdditionalDataFieldTemplate('Test IBKHCM');

      final qrCode = vietQR.build();
      debugPrint('IBKHCM QR: $qrCode');
      expect(qrCode, isNotEmpty);
      expect(qrCode, contains('970456'));
    });

    // Additional tests for VietQR functionality
    test('genCRCCode - Generate CRC code from string', () {
      final vietQR = VietQR();

      // Test case 1: example từ tài liệu chính thức
      const vietQRExample =
          '00020101021138600010A00000072701300006970403011697040311012345670208QRIBFTTC53037045802VN6304';
      // 00020101021138570010A00000072701270006970403011200110123456780208QRIBFTTA53037045802VN6304F4E5
      // 00020101021138600010A00000072701300006970403011697040311012345670208QRIBFTTC53037045802VN63044F52
      final crc2 = vietQR.genCRCCode(vietQRExample);
      debugPrint('Test 2 - VietQR example: CRC = $crc2');
      expect(crc2, equals('4F52')); // Từ tài liệu VietQR chính thức

      debugPrint('\n✓ All genCRCCode tests completed');
    });

    test('verifyCRC - Verify QR code CRC', () {
      final vietQR = VietQR();
      // Test case 1: Valid QR code với CRC đúng - QR tĩnh đến tài khoản
      const validQR =
          '00020101021138570010A00000072701270006970403011200110123456780208QRIBFTTA53037045802VN6304F4E5';
      final isValid1 = vietQR.verifyCRC(validQR);
      debugPrint('Test 1 - Valid QR code: $isValid1');
      expect(isValid1, isTrue);

      // Test case 2: Invalid QR code với CRC sai - QR tĩnh đến tài khoản
      const invalidQR =
          '00020101021138570010A00000072701270006970403011200110123456780208QRIBFTTA53037045802VN6304FFFF';
      final isValid2 = vietQR.verifyCRC(invalidQR);
      debugPrint('Test 2 - Invalid CRC: $isValid2');
      expect(isValid2, isFalse);

      debugPrint('\n✓ All verifyCRC tests completed');
    });
  });
}
