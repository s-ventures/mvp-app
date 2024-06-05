import 'dart:async';

import 'package:flutter/foundation.dart';
import 'package:flutter/widgets.dart';
import 'package:flutter_localizations/flutter_localizations.dart';
import 'package:intl/intl.dart' as intl;

import 'app_localizations_es.dart';

/// Callers can lookup localized strings with an instance of AppLocalizations
/// returned by `AppLocalizations.of(context)`.
///
/// Applications need to include `AppLocalizations.delegate()` in their app's
/// `localizationDelegates` list, and the locales they support in the app's
/// `supportedLocales` list. For example:
///
/// ```dart
/// import 'l10n/app_localizations.dart';
///
/// return MaterialApp(
///   localizationsDelegates: AppLocalizations.localizationsDelegates,
///   supportedLocales: AppLocalizations.supportedLocales,
///   home: MyApplicationHome(),
/// );
/// ```
///
/// ## Update pubspec.yaml
///
/// Please make sure to update your pubspec.yaml to include the following
/// packages:
///
/// ```yaml
/// dependencies:
///   # Internationalization support.
///   flutter_localizations:
///     sdk: flutter
///   intl: any # Use the pinned version from flutter_localizations
///
///   # Rest of dependencies
/// ```
///
/// ## iOS Applications
///
/// iOS applications define key application metadata, including supported
/// locales, in an Info.plist file that is built into the application bundle.
/// To configure the locales supported by your app, you’ll need to edit this
/// file.
///
/// First, open your project’s ios/Runner.xcworkspace Xcode workspace file.
/// Then, in the Project Navigator, open the Info.plist file under the Runner
/// project’s Runner folder.
///
/// Next, select the Information Property List item, select Add Item from the
/// Editor menu, then select Localizations from the pop-up menu.
///
/// Select and expand the newly-created Localizations item then, for each
/// locale your application supports, add a new item and select the locale
/// you wish to add from the pop-up menu in the Value field. This list should
/// be consistent with the languages listed in the AppLocalizations.supportedLocales
/// property.
abstract class AppLocalizations {
  AppLocalizations(String locale) : localeName = intl.Intl.canonicalizedLocale(locale.toString());

  final String localeName;

  static AppLocalizations of(BuildContext context) {
    return Localizations.of<AppLocalizations>(context, AppLocalizations)!;
  }

  static const LocalizationsDelegate<AppLocalizations> delegate = _AppLocalizationsDelegate();

  /// A list of this localizations delegate along with the default localizations
  /// delegates.
  ///
  /// Returns a list of localizations delegates containing this delegate along with
  /// GlobalMaterialLocalizations.delegate, GlobalCupertinoLocalizations.delegate,
  /// and GlobalWidgetsLocalizations.delegate.
  ///
  /// Additional delegates can be added by appending to this list in
  /// MaterialApp. This list does not have to be used at all if a custom list
  /// of delegates is preferred or required.
  static const List<LocalizationsDelegate<dynamic>> localizationsDelegates = <LocalizationsDelegate<dynamic>>[
    delegate,
    GlobalMaterialLocalizations.delegate,
    GlobalCupertinoLocalizations.delegate,
    GlobalWidgetsLocalizations.delegate,
  ];

  /// A list of this localizations delegate's supported locales.
  static const List<Locale> supportedLocales = <Locale>[
    Locale('es')
  ];

  /// Accounts
  ///
  /// In es, this message translates to:
  /// **'Cuentas'**
  String get dailyBankingAccounts;

  /// Available balance
  ///
  /// In es, this message translates to:
  /// **'Saldo disponible'**
  String get dailyBankingAccountsAvailableBalance;

  /// Account
  ///
  /// In es, this message translates to:
  /// **'Cuenta'**
  String get dailyBankingAccountsAccount;

  /// Button Add money
  ///
  /// In es, this message translates to:
  /// **'Añadir dinero'**
  String get dailyBankingAccountsAddMoney;

  /// Button Send money
  ///
  /// In es, this message translates to:
  /// **'Enviar dinero'**
  String get dailyBankingAccountsSendMoney;

  /// Button Schedule
  ///
  /// In es, this message translates to:
  /// **'Programado'**
  String get dailyBankingAccountsSchedule;

  /// Movements
  ///
  /// In es, this message translates to:
  /// **'Movimientos'**
  String get dailyBankingAccountsMovements;

  /// Add account
  ///
  /// In es, this message translates to:
  /// **'Añadir cuenta'**
  String get dailyBankingAccountsAddAccount;

  /// Menu account option accounts
  ///
  /// In es, this message translates to:
  /// **'Cuentas'**
  String get dailyBankingAccountsMenuAccount;

  /// Menu account option see details
  ///
  /// In es, this message translates to:
  /// **'Ver detalles'**
  String get dailyBankingAccountsMenuSeeDetails;

  /// Menu account option pay tax
  ///
  /// In es, this message translates to:
  /// **'Pagar un impuesto'**
  String get dailyBankingAccountsMenuPayTax;

  /// Menu account option certificates and documents
  ///
  /// In es, this message translates to:
  /// **'Certificados y documentos'**
  String get dailyBankingAccountsMenuCertsAndDocs;

  /// Modal filters movement types
  ///
  /// In es, this message translates to:
  /// **'Tipo de movimiento'**
  String get dailyBankingAccountsFiltersMovementTypes;

  /// Filter movement type card
  ///
  /// In es, this message translates to:
  /// **'Tarjeta'**
  String get dailyBankingAccountsFiltersMovementTypesCard;

  /// Filter movement type domiciliations
  ///
  /// In es, this message translates to:
  /// **'Domiciliaciones'**
  String get dailyBankingAccountsFiltersMovementTypesDomiciliations;

  /// Filter movement type receipts
  ///
  /// In es, this message translates to:
  /// **'Recibos'**
  String get dailyBankingAccountsFiltersMovementTypesReceipts;

  /// Filter movement type transfers sent
  ///
  /// In es, this message translates to:
  /// **'Transferencias emitidas'**
  String get dailyBankingAccountsFiltersMovementTypesTrasnfersSent;

  /// Filter movement type taxes
  ///
  /// In es, this message translates to:
  /// **'Impuestos'**
  String get dailyBankingAccountsFiltersMovementTypesTaxes;

  /// Filter movement type transfers received
  ///
  /// In es, this message translates to:
  /// **'Transferencias recibidas'**
  String get dailyBankingAccountsFiltersMovementTypesTransfersReceived;

  /// Filter recent categories
  ///
  /// In es, this message translates to:
  /// **'Categorías recientes'**
  String get dailyBankingAccountsFiltersRecentCategories;

  /// Title of page of accounts
  ///
  /// In es, this message translates to:
  /// **'Cuentas'**
  String get dailyBankingAccountsPageTitle;

  /// Subtitle of page of accounts
  ///
  /// In es, this message translates to:
  /// **'Cuentas'**
  String get dailyBankingAccountsPageSubtitle;

  /// Description of page of accounts
  ///
  /// In es, this message translates to:
  /// **'Selecciona las cuentas que quieres que estén visibles en la pantalla de inicio.'**
  String get dailyBankingAccountsPageDescription;

  /// Button to select account
  ///
  /// In es, this message translates to:
  /// **'Seleccionar cuenta'**
  String get dailyBankingAccountsPageButton;

  /// Title of page of account details
  ///
  /// In es, this message translates to:
  /// **'Detalles de la cuenta'**
  String get dailyBankingAccountsDetailsTitle;

  /// Available balance
  ///
  /// In es, this message translates to:
  /// **'Saldo disponible'**
  String get dailyBankingAccountsDetailsAvailableBalance;

  /// Account name
  ///
  /// In es, this message translates to:
  /// **'Nombre de la cuenta'**
  String get dailyBankingAccountsDetailsAccountName;

  /// Account alias
  ///
  /// In es, this message translates to:
  /// **'Alias de la cuenta'**
  String get dailyBankingAccountsDetailsAccountAlias;

  /// Beneficiary
  ///
  /// In es, this message translates to:
  /// **'Beneficiario'**
  String get dailyBankingAccountsDetailsBeneficiary;

  /// IBAN
  ///
  /// In es, this message translates to:
  /// **'IBAN'**
  String get dailyBankingAccountsDetailsIban;

  /// Bic swift
  ///
  /// In es, this message translates to:
  /// **'Código BIC/Swift'**
  String get dailyBankingAccountsDetailsBicSwift;

  /// Bank name
  ///
  /// In es, this message translates to:
  /// **'Nombre y dirección del banco'**
  String get dailyBankingAccountsDetailsBankName;

  /// Title certificate
  ///
  /// In es, this message translates to:
  /// **'Solicitar certificado de titularidad'**
  String get dailyBankingAccountsDetailsTitleCertificate;

  /// Title of page of payment tax
  ///
  /// In es, this message translates to:
  /// **'Liquidación de impuestos'**
  String get dailyBankingAccountsPaymentTaxTitle;

  /// Model
  ///
  /// In es, this message translates to:
  /// **'Modelo'**
  String get dailyBankingAccountsPaymentTaxModel;

  /// Proof
  ///
  /// In es, this message translates to:
  /// **'Justificante'**
  String get dailyBankingAccountsPaymentTaxProof;

  /// Accrual date
  ///
  /// In es, this message translates to:
  /// **'Fecha devengo'**
  String get dailyBankingAccountsPaymentTaxAccrualDate;

  /// File
  ///
  /// In es, this message translates to:
  /// **'Expediente'**
  String get dailyBankingAccountsPaymentTaxFile;

  /// Specific data
  ///
  /// In es, this message translates to:
  /// **'Datos específicos'**
  String get dailyBankingAccountsPaymentTaxSpecificData;

  /// Tax payment button
  ///
  /// In es, this message translates to:
  /// **'Pagar impuestos'**
  String get dailyBankingAccountsPaymentTaxButton;

  /// Title of modal reminder
  ///
  /// In es, this message translates to:
  /// **'Liquidar impuestos'**
  String get dailyBankingAccountsPaymentTaxModalTitle;

  /// Description of moda reminder
  ///
  /// In es, this message translates to:
  /// **'Recuerde que necesita tener la Carta de Pagos aprobada para procesar la liquidación de impuestos'**
  String get dailyBankingAccountsPaymentTaxModalDescription;

  /// Title of otp page
  ///
  /// In es, this message translates to:
  /// **'Liquidación de impuestos'**
  String get dailyBankingAccountsPaymentTaxOtpTitle;

  /// Text of button of otp page to confirm payment tax
  ///
  /// In es, this message translates to:
  /// **'Confirmar'**
  String get dailyBankingAccountsPaymentTaxOtpButton;

  /// Title of alert bottom sheet when payment is completed
  ///
  /// In es, this message translates to:
  /// **'Impuestos liquidados'**
  String get dailyBankingAccountsPaymentTaxOtpSuccessTitle;

  /// Description of alert bottom sheet when payment is completed
  ///
  /// In es, this message translates to:
  /// **'Tus impuestos han sido liquidados con éxito.'**
  String get dailyBankingAccountsPaymentTaxOtpSuccessDescription;

  /// Title of the alert bottom sheet when the payment of tax could not be pay
  ///
  /// In es, this message translates to:
  /// **'Error al liquidar impuestos'**
  String get dailyBankingAccountsPaymentTaxOtpErrorTitle;

  /// Description of the alert bottom sheet when the payment of tax could not be pay
  ///
  /// In es, this message translates to:
  /// **'No se han podido liquidar tus impuestos.'**
  String get dailyBankingAccountsPaymentTaxOtpErrorDescription;

  /// Title of the modal to request access to the camera and gallery
  ///
  /// In es, this message translates to:
  /// **'Permitir acceso a la cámara y a la galería de fotos'**
  String get dailyBankingAccountsPaymentTaxScanFileModalAllowCameraTitle;

  /// Description of the modal to request access to the camera and gallery
  ///
  /// In es, this message translates to:
  /// **'Soon necesita permiso para acceder a tu cámara y a tu galería.'**
  String get dailyBankingAccountsPaymentTaxScanFileModalAllowCameraDescription;

  /// Second description of the modal to request access to the camera and gallery
  ///
  /// In es, this message translates to:
  /// **'Esto permite escanear documentos.'**
  String get dailyBankingAccountsPaymentTaxScanFileModalAllowCameraSecondDescription;

  /// Modal title when the document has been scanned successfully
  ///
  /// In es, this message translates to:
  /// **'Escaneo completado'**
  String get dailyBankingAccountsPaymentTaxScanSuccessTitle;

  /// Modal description when the document has been scanned successfully
  ///
  /// In es, this message translates to:
  /// **'Los campos se rellenarán automáticamente'**
  String get dailyBankingAccountsPaymentTaxScanSuccessDescription;

  /// Modal title when the document has not been scanned properly
  ///
  /// In es, this message translates to:
  /// **'Escaneo incompleto'**
  String get dailyBankingAccountsPaymentTaxScanErrorTitle;

  /// Modal description when the document has not been scanned properly
  ///
  /// In es, this message translates to:
  /// **'Se ha producido un error al escanear tus documentos'**
  String get dailyBankingAccountsPaymentTaxScanErrorDescription;

  /// Modal button when the document has not been scanned properly
  ///
  /// In es, this message translates to:
  /// **'Volver a intentar'**
  String get dailyBankingAccountsPaymentTaxScanErrorButton;

  /// Title of the certificates page
  ///
  /// In es, this message translates to:
  /// **'Certificados y documentos'**
  String get dailyBankingAccountsCertificatesTitle;

  /// Request certificates
  ///
  /// In es, this message translates to:
  /// **'Solicitar certificados'**
  String get dailyBankingAccountsCertificatesRequestCertificates;

  /// Title of certificate of title
  ///
  /// In es, this message translates to:
  /// **'Certificado titularidad'**
  String get dailyBankingAccountsCertificatesTitleTitle;

  /// Description of certificate of title
  ///
  /// In es, this message translates to:
  /// **'Número CCC'**
  String get dailyBankingAccountsCertificatesTitleDescription;

  /// Title of certificate account balance
  ///
  /// In es, this message translates to:
  /// **'Certificado saldo en cuenta'**
  String get dailyBankingAccountsCertificatesAccountBalanceTitle;

  /// Description of certificate account balance
  ///
  /// In es, this message translates to:
  /// **'Saldo en cuenta'**
  String get dailyBankingAccountsCertificatesAccountBalanceDescription;

  /// Title of credit memo certificate
  ///
  /// In es, this message translates to:
  /// **'Certificado de abono'**
  String get dailyBankingAccountsCertificatesCreditTitle;

  /// Description of credit memo certificate
  ///
  /// In es, this message translates to:
  /// **'Ingreso en cuenta'**
  String get dailyBankingAccountsCertificatesCreditDescription;

  /// Title of certificate of indebtedness
  ///
  /// In es, this message translates to:
  /// **'Certificado de adeudo'**
  String get dailyBankingAccountsCertificatesDebitTitle;

  /// Description of certificate of indebtedness
  ///
  /// In es, this message translates to:
  /// **'Cargo en cuenta'**
  String get dailyBankingAccountsCertificatesDebitDescription;

  /// Request certificates
  ///
  /// In es, this message translates to:
  /// **'Solicitar certificado'**
  String get dailyBankingAccountsCertificatesRequestTitle;

  /// Certificate family
  ///
  /// In es, this message translates to:
  /// **'Familia'**
  String get dailyBankingAccountsCertificatesRequestFamily;

  /// Contract
  ///
  /// In es, this message translates to:
  /// **'Contrato'**
  String get dailyBankingAccountsCertificatesRequestContract;

  /// Certificate generation
  ///
  /// In es, this message translates to:
  /// **'Generación del certificado'**
  String get dailyBankingAccountsCertificatesRequestCertificateGeneration;

  /// When will I receive it
  ///
  /// In es, this message translates to:
  /// **'Cuándo lo recibiré'**
  String get dailyBankingAccountsCertificatesRequestWhenWillIReceiveIt;

  /// Commission of certificate
  ///
  /// In es, this message translates to:
  /// **'Comisión del certificado'**
  String get dailyBankingAccountsCertificatesRequestCommission;

  /// Payment certificate after request
  ///
  /// In es, this message translates to:
  /// **'Pago certificado'**
  String get dailyBankingAccountsCertificatesPaymentTitle;

  /// Commission of certificate
  ///
  /// In es, this message translates to:
  /// **'Comisión de certificado'**
  String get dailyBankingAccountsCertificatesPaymentCommission;

  /// Payment methods
  ///
  /// In es, this message translates to:
  /// **'Método de pago'**
  String get dailyBankingAccountsCertificatesPaymentMethod;

  /// Text of button of payment certificate
  ///
  /// In es, this message translates to:
  /// **'Pagar certificado'**
  String get dailyBankingAccountsCertificatesPaymentButton;

  /// Title of otp page
  ///
  /// In es, this message translates to:
  /// **'Confirmación pago'**
  String get dailyBankingAccountsCertificatesPaymentOtpTitle;

  /// Text of button of otp page to confirm certificate payment
  ///
  /// In es, this message translates to:
  /// **'Pagar certificado'**
  String get dailyBankingAccountsCertificatesPaymentOtpButton;

  /// Title of the alert bottom sheet when the certificate is paid for
  ///
  /// In es, this message translates to:
  /// **'¡Pago realizado!'**
  String get dailyBankingAccountsCertificatesPaymentOtpSuccessTitle;

  /// Description of the alert bottom sheet when the certificate is paid for
  ///
  /// In es, this message translates to:
  /// **'Tu certificado ya está listo.'**
  String get dailyBankingAccountsCertificatesPaymentOtpSuccessDescription;

  /// Button of the alert bottom sheet when the certificate is paid for
  ///
  /// In es, this message translates to:
  /// **'Ver certificado'**
  String get dailyBankingAccountsCertificatesPaymentOtpSuccessButton;

  /// Title of the alert bottom sheet when the certificate could not be paid for
  ///
  /// In es, this message translates to:
  /// **'Error realizando el pago'**
  String get dailyBankingAccountsCertificatesPaymentOtpErrorTitle;

  /// Description of the alert bottom sheet when the certificate could not be paid for
  ///
  /// In es, this message translates to:
  /// **'Ha ocurrido un error al realizar el pago.'**
  String get dailyBankingAccountsCertificatesPaymentOtpErrorDescription;

  /// Documentation index
  ///
  /// In es, this message translates to:
  /// **'Índice de documentación'**
  String get dailyBankingAccountsCertificatesDownloadIndex;

  /// Button download
  ///
  /// In es, this message translates to:
  /// **'Descargar certificado'**
  String get dailyBankingAccountsCertificatesDownloadButton;

  /// Open certificate
  ///
  /// In es, this message translates to:
  /// **'Abrir certificado'**
  String get dailyBankingAccountsCertificatesDownloadSuccessButton;

  /// Alert when the certificate has been successfully downloaded
  ///
  /// In es, this message translates to:
  /// **'La descarga se ha realizado con éxito.'**
  String get dailyBankingAccountsCertificatesDownloadSuccessAlertTitle;

  /// Action of alert when the certificate has been successfully downloaded
  ///
  /// In es, this message translates to:
  /// **'Abrir documento'**
  String get dailyBankingAccountsCertificatesDownloadSuccessAlertAction;

  /// Alert when the certificate has not been downloaded
  ///
  /// In es, this message translates to:
  /// **'Ha ocurrido un error al descargar el documento.'**
  String get dailyBankingAccountsCertificatesDownloadErrorAlertTitle;

  /// Add money title
  ///
  /// In es, this message translates to:
  /// **'Añadir dinero'**
  String get dailyBankingAddMoneyTitle;

  /// Add money balance
  ///
  /// In es, this message translates to:
  /// **'Saldo {amount}'**
  String dailyBankingAddMoneyBalance(Object amount);

  /// Add money button confirm
  ///
  /// In es, this message translates to:
  /// **'Añadir dinero'**
  String get dailyBankingAddMoneyButtonConfirm;

  /// Details of movement
  ///
  /// In es, this message translates to:
  /// **'Detalles de movimiento'**
  String get dailyBankingMovementDetails;

  /// See more receipts from the issuer
  ///
  /// In es, this message translates to:
  /// **'Ver más recibos del emisor'**
  String get dailyBankingMovementDetailsMenuViewMoreIssuerReceipts;

  /// Refuse charge
  ///
  /// In es, this message translates to:
  /// **'Rechazar cobro'**
  String get dailyBankingMovementDetailsMenuRefuseCharge;

  /// Title of alert bottom sheet to reject charge
  ///
  /// In es, this message translates to:
  /// **'¿Quieres rechazar el cobro?'**
  String get dailyBankingMovementDetailsModalTitel;

  /// Description of alert bottom sheet to reject charge
  ///
  /// In es, this message translates to:
  /// **'Al rechazar este cobro, se notificará al remitente y se iniciarán los procesos correspondientes para resolver cualquier discrepancia.'**
  String get dailyBankingMovementDetailsModalDescription;

  /// Button Reject of alert bottom sheet to reject charge
  ///
  /// In es, this message translates to:
  /// **'Rechazar'**
  String get dailyBankingMovementDetailsModalButtonReject;

  /// Title of success alert when downloading the voucher
  ///
  /// In es, this message translates to:
  /// **'La descarga se realizado con éxito.'**
  String get dailyBankingCardMovementDetailsDownloadSuccessAlertTitle;

  /// Action of success alert when downloading the voucher
  ///
  /// In es, this message translates to:
  /// **'Abrir documento'**
  String get dailyBankingCardMovementDetailsDownloadSuccessAlertAction;

  /// Title of the file upload modal
  ///
  /// In es, this message translates to:
  /// **'Añadir archivo'**
  String get dailyBankingCardMovementDetailsUploadFileModalTitle;

  /// Action of scan
  ///
  /// In es, this message translates to:
  /// **'Escanear'**
  String get dailyBankingCardMovementDetailsUploadFileModalScan;

  /// Action of galery
  ///
  /// In es, this message translates to:
  /// **'Galería'**
  String get dailyBankingCardMovementDetailsUploadFileModalGalery;

  /// Action of document
  ///
  /// In es, this message translates to:
  /// **'Documento'**
  String get dailyBankingCardMovementDetailsUploadFileModalDocumento;

  /// Title of error alert when upload the file
  ///
  /// In es, this message translates to:
  /// **'Error al subir archivo'**
  String get dailyBankingCardMovementDetailsUploadFileErrorAlertTitle;

  /// Receipt
  ///
  /// In es, this message translates to:
  /// **'Recibo'**
  String get dailyBankingCardMovementDetailsReceipt;

  /// Upload file
  ///
  /// In es, this message translates to:
  /// **'Subir archivo'**
  String get dailyBankingCardMovementDetailsUploadFile;

  /// Expense
  ///
  /// In es, this message translates to:
  /// **'Gasto'**
  String get dailyBankingCardMovementDetailsExpense;

  /// Create expense
  ///
  /// In es, this message translates to:
  /// **'Crear gasto'**
  String get dailyBankingCardMovementDetailsCreateExpense;

  /// Maximum return date
  ///
  /// In es, this message translates to:
  /// **'Fecha máxima devolución'**
  String get dailyBankingDirectDebitMovementDetailsMaximumReturnDate;

  /// Returned receipt
  ///
  /// In es, this message translates to:
  /// **'Recibo devuelto'**
  String get dailyBankingDirectDebitMovementDetailsReturnedReceipt;

  /// Name of issuer
  ///
  /// In es, this message translates to:
  /// **'Nombre emisor'**
  String get dailyBankingDirectDebitMovementDetailsNameIssuer;

  /// Mandatory reference
  ///
  /// In es, this message translates to:
  /// **'Referencia mandato'**
  String get dailyBankingDirectDebitMovementDetailsMandatoryReference;

  /// Payment date
  ///
  /// In es, this message translates to:
  /// **'Fecha pago'**
  String get dailyBankingDebitMovementDetailsPaymentDate;

  /// Charge date
  ///
  /// In es, this message translates to:
  /// **'Fecha cargo'**
  String get dailyBankingDebitMovementDetailsChargeDate;

  /// Name of issuer
  ///
  /// In es, this message translates to:
  /// **'Nombre emisor'**
  String get dailyBankingDebitMovementDetailsNameIssuer;

  /// Mandatory reference
  ///
  /// In es, this message translates to:
  /// **'Referencia mandato'**
  String get dailyBankingDebitMovementDetailsMandatoryReference;

  /// Identifier
  ///
  /// In es, this message translates to:
  /// **'Identificador'**
  String get dailyBankingDebitMovementDetailsIdentifier;

  /// Period imposed
  ///
  /// In es, this message translates to:
  /// **'Periodo impuesto'**
  String get dailyBankingTaxesMovementDetailsPeriodImposed;

  /// Charge date
  ///
  /// In es, this message translates to:
  /// **'Fecha cargo'**
  String get dailyBankingTaxesMovementDetailsChargeDate;

  /// Name of issuer
  ///
  /// In es, this message translates to:
  /// **'Nombre emisor'**
  String get dailyBankingTaxesMovementDetailsNameIssuer;

  /// Mandate reference
  ///
  /// In es, this message translates to:
  /// **'Referencia de mandato'**
  String get dailyBankingTaxesMovementDetailsMandateReference;

  /// Type of movement
  ///
  /// In es, this message translates to:
  /// **'Tipo de movimiento'**
  String get dailyBankingTaxesMovementDetailsTypeMovement;

  /// Identifier
  ///
  /// In es, this message translates to:
  /// **'Identificador'**
  String get dailyBankingTaxesMovementDetailsIdentifier;

  /// Periodic transfer
  ///
  /// In es, this message translates to:
  /// **'Transferencia periódica'**
  String get dailyBankingTransfersSentMovementDetailsPeriodicTransfer;

  /// Charge date
  ///
  /// In es, this message translates to:
  /// **'Fecha cargo'**
  String get dailyBankingTransfersSentMovementDetailsChargeDate;

  /// Date of credit
  ///
  /// In es, this message translates to:
  /// **'Fecha abono'**
  String get dailyBankingTransfersSentMovementDetailsCreditDate;

  /// Beneficiary
  ///
  /// In es, this message translates to:
  /// **'Beneficiario'**
  String get dailyBankingTransfersSentMovementDetailsBeneficiary;

  /// Account number
  ///
  /// In es, this message translates to:
  /// **'Número de cuenta'**
  String get dailyBankingTransfersSentMovementDetailsAccountNumber;

  /// Type of transfer
  ///
  /// In es, this message translates to:
  /// **'Tipo de transferencia'**
  String get dailyBankingTransfersSentMovementDetailsTypeTransfer;

  /// Charge date
  ///
  /// In es, this message translates to:
  /// **'Fecha cargo'**
  String get dailyBankingTransfersReceivedMovementDetailsChargeDate;

  /// Date of credit
  ///
  /// In es, this message translates to:
  /// **'Fecha abono'**
  String get dailyBankingTransfersReceivedMovementDetailsCreditDate;

  /// Sender
  ///
  /// In es, this message translates to:
  /// **'Ordenante'**
  String get dailyBankingTransfersReceivedMovementDetailsSender;

  /// Sender's account
  ///
  /// In es, this message translates to:
  /// **'Cuenta ordenante'**
  String get dailyBankingTransfersReceivedMovementDetailsSendersAccount;

  /// New transfer
  ///
  /// In es, this message translates to:
  /// **'Nueva transferencia'**
  String get dailyBankingNewTransfers;

  /// National transfer option title
  ///
  /// In es, this message translates to:
  /// **'Envío nacional'**
  String get dailyBankingNewTransfersNationalTitle;

  /// National transfer option description
  ///
  /// In es, this message translates to:
  /// **'Enviar dinero dentro de tu país'**
  String get dailyBankingNewTransfersNationalDescription;

  /// International transfer option title
  ///
  /// In es, this message translates to:
  /// **'Envío internacional'**
  String get dailyBankingNewTransfersInternationalTitle;

  /// International transfer option description
  ///
  /// In es, this message translates to:
  /// **'Enviar dinero al extranjero'**
  String get dailyBankingNewTransfersInternationalDescription;

  /// Soon transfer option title
  ///
  /// In es, this message translates to:
  /// **'Enviar a contacto soon'**
  String get dailyBankingNewTransfersSoonContactTitle;

  /// Soon transfer option description
  ///
  /// In es, this message translates to:
  /// **'Transferencias directas'**
  String get dailyBankingNewTransfersSoonContactDescription;

  /// Last transfers
  ///
  /// In es, this message translates to:
  /// **'Últimas transferencias'**
  String get dailyBankingNewTransfersLastTransfers;

  /// See all
  ///
  /// In es, this message translates to:
  /// **'Ver todas'**
  String get dailyBankingNewTransfersSeeAll;

  /// Favorite contacts
  ///
  /// In es, this message translates to:
  /// **'Contactos favoritos'**
  String get dailyBankingNewTransfersFavoriteContacts;

  /// Scheduled transfers
  ///
  /// In es, this message translates to:
  /// **'Transferencias programadas'**
  String get dailyBankingScheduledTransfers;

  /// Recent
  ///
  /// In es, this message translates to:
  /// **'Recientes'**
  String get dailyBankingScheduledTransfersRecent;

  /// Go to details of a schedule transfer
  ///
  /// In es, this message translates to:
  /// **'Ver detalles'**
  String get dailyBankingScheduledTransfersSeeDetails;

  /// Date since
  ///
  /// In es, this message translates to:
  /// **'Desde {date}'**
  String dailyBankingScheduledTransfersDateSince(Object date);

  /// New transfer
  ///
  /// In es, this message translates to:
  /// **'Nueva'**
  String get dailyBankingScheduledTransfersNew;

  /// New transfer
  ///
  /// In es, this message translates to:
  /// **'Nueva transferencia'**
  String get dailyBankingScheduledTransfersNewModalTitle;

  /// National shipment
  ///
  /// In es, this message translates to:
  /// **'Envío nacional'**
  String get dailyBankingScheduledTransfersNewModalNationalShipment;

  /// National shipment description
  ///
  /// In es, this message translates to:
  /// **'Enviar dinero dentro de tu país'**
  String get dailyBankingScheduledTransfersNewModalNationalShipmentDescription;

  /// Send to contact soon
  ///
  /// In es, this message translates to:
  /// **'Enviar a contacto soon'**
  String get dailyBankingScheduledTransfersNewModalSendToContactSoon;

  /// Send to contact soon description
  ///
  /// In es, this message translates to:
  /// **'Transferencias directas'**
  String get dailyBankingScheduledTransfersNewModalSendToContactSoonDescription;

  /// Started the
  ///
  /// In es, this message translates to:
  /// **'Comenzó el'**
  String get dailyBankingScheduledTransfersStartedThe;

  /// Next paid
  ///
  /// In es, this message translates to:
  /// **'Próximo pago'**
  String get dailyBankingScheduledTransfersNextPaid;

  /// Title of alert bottom sheet to send transfer
  ///
  /// In es, this message translates to:
  /// **'Transferencia realizada'**
  String get dailyBankingScheduledTransfersOtpModalSuccessTitle;

  /// Description of alert bottom sheet to send transfer
  ///
  /// In es, this message translates to:
  /// **'Se ha realizado la transferencia con exito'**
  String get dailyBankingScheduledTransfersOtpModalSuccessDescription;

  /// Remove transfer
  ///
  /// In es, this message translates to:
  /// **'Eliminar transferencia'**
  String get dailyBankingScheduledTransfersRemoveTransfer;

  /// No transfer fee
  ///
  /// In es, this message translates to:
  /// **'Sin comisión de transferencia'**
  String get dailyBankingScheduledTransfersNoTransferFee;

  /// Title of alert bottom sheet to remove transfer
  ///
  /// In es, this message translates to:
  /// **'¿Quieres eliminar el pago periódico?'**
  String get dailyBankingScheduledTransfersRemoveModalTitle;

  /// Description of alert bottom sheet to remove transfer
  ///
  /// In es, this message translates to:
  /// **'¿Estás seguro que deseas eliminar el pago periódico?'**
  String get dailyBankingScheduledTransfersRemoveModalDescription;

  /// Button remove of alert bottom sheet to remove transfer
  ///
  /// In es, this message translates to:
  /// **'Eliminar transferencia'**
  String get dailyBankingScheduledTransfersRemoveModalButtonRemove;

  /// Alert when the transfer has been successfully removed
  ///
  /// In es, this message translates to:
  /// **'Transferencia eliminada con éxito.'**
  String get dailyBankingScheduledTransfersRemovedSuccessAlertTitle;

  /// Alert when the transfer could not be deleted
  ///
  /// In es, this message translates to:
  /// **'Error al eliminar la transferencia.'**
  String get dailyBankingScheduledTransfersRemovedErrorAlertTitle;

  /// Title of edit scheduled transfer
  ///
  /// In es, this message translates to:
  /// **'Transferencias programadas'**
  String get dailyBankingScheduledTransfersEditTitle;

  /// Frequency of scheduled transfer
  ///
  /// In es, this message translates to:
  /// **'Programado {frequency}'**
  String dailyBankingScheduledTransfersEditFrequency(Object frequency);

  /// Confirm button of scheduled transfer
  ///
  /// In es, this message translates to:
  /// **'Guardar cambios'**
  String get dailyBankingScheduledTransfersEditButtonConfirm;

  /// Title of page national transfer
  ///
  /// In es, this message translates to:
  /// **'Transferencia nacional'**
  String get dailyBankingNationalTransfersTransfer;

  /// Transfer fee
  ///
  /// In es, this message translates to:
  /// **'Comisión de transferencia'**
  String get dailyBankingNationalTransfersTransferFee;

  /// Destination
  ///
  /// In es, this message translates to:
  /// **'Destino'**
  String get dailyBankingNationalTransfersDestination;

  /// Country of recipient bank
  ///
  /// In es, this message translates to:
  /// **'País del banco destinatario'**
  String get dailyBankingNationalTransfersCountryRecipientBank;

  /// Button send money
  ///
  /// In es, this message translates to:
  /// **'Enviar dinero'**
  String get dailyBankingNationalTransfersButtonSendMoney;

  /// Title of the modal to schedule a transfer
  ///
  /// In es, this message translates to:
  /// **'Programar'**
  String get dailyBankingNationalTransfersScheduledModalTitle;

  /// Input start date
  ///
  /// In es, this message translates to:
  /// **'Fecha de inicio'**
  String get dailyBankingNationalTransfersScheduledModalStartDate;

  /// Input repeat
  ///
  /// In es, this message translates to:
  /// **'Repetir'**
  String get dailyBankingNationalTransfersScheduledModalRepeat;

  /// Button of the modal to schedule a transfer
  ///
  /// In es, this message translates to:
  /// **'Establecer programación'**
  String get dailyBankingNationalTransfersScheduledModalButton;

  /// Button of the resume page
  ///
  /// In es, this message translates to:
  /// **'Confirmar'**
  String get dailyBankingNationalTransfersResumeButton;

  /// Title of otp page to send national transfer
  ///
  /// In es, this message translates to:
  /// **'Firma de operación'**
  String get dailyBankingNationalTransfersOtpTitle;

  /// Button of otp page to send national transfer
  ///
  /// In es, this message translates to:
  /// **'Confirmar'**
  String get dailyBankingNationalTransfersOtpButton;

  /// Title of alert bottom sheet to send transfer
  ///
  /// In es, this message translates to:
  /// **'Has programado {amount} € a {name}'**
  String dailyBankingNationalTransfersScheduledOtpModalSuccessTitle(Object amount, Object name);

  /// Description of alert bottom sheet to send transfer
  ///
  /// In es, this message translates to:
  /// **'Transferencia programada diariamente desde hoy.'**
  String get dailyBankingNationalTransfersScheduledOtpModalSuccessDescription;

  /// Title of alert bottom sheet to send transfer
  ///
  /// In es, this message translates to:
  /// **'Envío realizado'**
  String get dailyBankingNationalTransfersOtpModalSuccessTitle;

  /// Description of alert bottom sheet to send transfer
  ///
  /// In es, this message translates to:
  /// **'Se han enviado {amount} € a {name}'**
  String dailyBankingNationalTransfersOtpModalSuccessDescription(Object amount, Object name);

  /// Title of the alert bottom sheet when the transfer fails to be sent
  ///
  /// In es, this message translates to:
  /// **'Ha ocurrido un error'**
  String get dailyBankingNationalTransfersOtpModalErrorTitle;

  /// Description of the alert bottom sheet when the transfer fails to be sent
  ///
  /// In es, this message translates to:
  /// **'No se han podido enviar {amount} € a {name}.'**
  String dailyBankingNationalTransfersOtpModalErrorDescription(Object amount, Object name);

  /// Title of the alert when a transfer certificate has been downloaded successfully
  ///
  /// In es, this message translates to:
  /// **'La descarga se ha realizado con éxito.'**
  String get dailyBankingNationalTransfersOtpSuccessDownloadSuccessAlertTitle;

  /// Description of the alert when a transfer certificate has been downloaded successfully
  ///
  /// In es, this message translates to:
  /// **'Abrir documento'**
  String get dailyBankingNationalTransfersOtpSuccessDownloadSuccessAlertAction;

  /// Title of the alert when the certificate of a transfer has not been successfully downloaded
  ///
  /// In es, this message translates to:
  /// **'Ha ocurrido un error al descargar el documento.'**
  String get dailyBankingNationalTransfersOtpSuccessDownloadErrorAlertTitle;

  /// Reuse transfer
  ///
  /// In es, this message translates to:
  /// **'Reutilizar transferencia'**
  String get dailyBankingNationalTransfersMenuReuseTransfer;

  /// Cancel transfer
  ///
  /// In es, this message translates to:
  /// **'Anular transferencia'**
  String get dailyBankingNationalTransfersMenuCancelTransfer;

  /// Title of the modal when a transfer is cancelled
  ///
  /// In es, this message translates to:
  /// **'Transferencia anulada'**
  String get dailyBankingNationalTransfersMenuCancelTransferModalTitle;

  /// Description of the modal when a transfer is cancelled
  ///
  /// In es, this message translates to:
  /// **'La transferencia de {amount} € a {name} ha sido anulada con éxito.'**
  String dailyBankingNationalTransfersMenuCancelTransferModalDescription(Object amount, Object name);

  /// International transfer
  ///
  /// In es, this message translates to:
  /// **'Transferencia internacional'**
  String get dailyBankingInternationalTransfers;

  /// Destination
  ///
  /// In es, this message translates to:
  /// **'Destino'**
  String get dailyBankingInternationalTransfersDestination;

  /// Country of recipient bank
  ///
  /// In es, this message translates to:
  /// **'País del banco destinatario'**
  String get dailyBankinginternationalTransfersCountryRecipientBank;

  /// Button send money
  ///
  /// In es, this message translates to:
  /// **'Enviar dinero'**
  String get dailyBankingInternationalTransfersButtonSendMoney;

  /// Type of transfer
  ///
  /// In es, this message translates to:
  /// **'Tipo de transferencia'**
  String get dailyBankingInternationalTransfersType;

  /// Title of otp page to send national transfer
  ///
  /// In es, this message translates to:
  /// **'Firma de operación'**
  String get dailyBankingInternationalTransfersOtpTitle;

  /// Button of otp page to send national transfer
  ///
  /// In es, this message translates to:
  /// **'Confirmar'**
  String get dailyBankingInternationalTransfersOtpButton;

  /// Title of alert bottom sheet to send transfer
  ///
  /// In es, this message translates to:
  /// **'Has enviado {amount} € a {name}'**
  String dailyBankingInternationalTransfersOtpSuccessModalTitle(Object amount, Object name);

  /// Description of alert bottom sheet to send transfer
  ///
  /// In es, this message translates to:
  /// **'Transferencia enviada con éxito.'**
  String get dailyBankingInternationalTransfersOtpSuccessModalDescription;

  /// Title of the alert when a transfer certificate has been downloaded successfully
  ///
  /// In es, this message translates to:
  /// **'La descarga se realizado con éxito.'**
  String get dailyBankingInternationalTransfersOtpSuccessDownloadSuccessAlertTitle;

  /// Description of the alert when a transfer certificate has been downloaded successfully
  ///
  /// In es, this message translates to:
  /// **'Abrir documento'**
  String get dailyBankingInternationalTransfersOtpSuccessDownloadSuccessAlertAction;

  /// Title of the alert when the certificate of a transfer has not been successfully downloaded
  ///
  /// In es, this message translates to:
  /// **'Ha ocurrido un error al descargar el documento.'**
  String get dailyBankingInternationalTransfersOtpSuccessDownloadErrorAlertTitle;

  /// Title
  ///
  /// In es, this message translates to:
  /// **'soonPay'**
  String get dailyBankingSoonPay;

  /// Contacts soon
  ///
  /// In es, this message translates to:
  /// **'Contactos soon'**
  String get dailyBankingSoonPayContacts;

  /// Client
  ///
  /// In es, this message translates to:
  /// **'Cliente'**
  String get dailyBankingSoonPayClient;

  /// Favorite contacts
  ///
  /// In es, this message translates to:
  /// **'Contactos favoritos'**
  String get dailyBankingSoonPayFavorites;

  /// Supplier
  ///
  /// In es, this message translates to:
  /// **'Proveedor'**
  String get dailyBankingSoonPaySupplier;

  /// Transfer fee
  ///
  /// In es, this message translates to:
  /// **'Sin comisión de transferencia'**
  String get dailyBankingSoonPayWithoutTransferFee;

  /// Send money
  ///
  /// In es, this message translates to:
  /// **'Enviar dinero'**
  String get dailyBankingSoonPaySendMoney;

  /// soonPay scheduled modal
  ///
  /// In es, this message translates to:
  /// **'Programar'**
  String get dailyBankingSoonPayScheduledModal;

  /// soonPay scheduled modal button
  ///
  /// In es, this message translates to:
  /// **'Establecer programación'**
  String get dailyBankingSoonPayScheduledModalButton;

  /// Title of the page otp to send money to soon contact
  ///
  /// In es, this message translates to:
  /// **'Firma de operación'**
  String get dailyBankingSoonPayOtpTitle;

  /// Button of the page otp to send money to soon contact
  ///
  /// In es, this message translates to:
  /// **'Confirmar'**
  String get dailyBankingSoonPayOtpButton;

  /// Title of alert bottom sheet when otp is success
  ///
  /// In es, this message translates to:
  /// **'Has programado {amount} € a {name}'**
  String dailyBankingSoonPayScheduledOtpSuccessModalTitle(Object amount, Object name);

  /// Description of alert bottom sheet when otp is success
  ///
  /// In es, this message translates to:
  /// **'Transferencia programada mensualmente desde hoy.'**
  String get dailyBankingSoonPayScheduledOtpSuccessModalDescription;

  /// Button of alert bottom sheet when otp is success
  ///
  /// In es, this message translates to:
  /// **'Continuar'**
  String get dailyBankingSoonPayScheduledOtpSuccessModalButton;

  /// Title of alert bottom sheet when otp is success
  ///
  /// In es, this message translates to:
  /// **'Envío realizado'**
  String get dailyBankingSoonPayOtpSuccessModalTitle;

  /// Description of alert bottom sheet when otp is success
  ///
  /// In es, this message translates to:
  /// **'Se han enviado {amount} € a {name}.'**
  String dailyBankingSoonPayOtpSuccessModalDescription(Object amount, Object name);

  /// Button of alert bottom sheet when otp is success
  ///
  /// In es, this message translates to:
  /// **'Continuar'**
  String get dailyBankingSoonPayOtpSuccessModalButton;

  /// Title of alert bottom sheet when otp is wrong
  ///
  /// In es, this message translates to:
  /// **'Ha ocurrido un error'**
  String get dailyBankingSoonPayOtpErrorModalTitle;

  /// Description of alert bottom sheet when otp is wrong
  ///
  /// In es, this message translates to:
  /// **'No se han podido enviar {amount} € a {name}.'**
  String dailyBankingSoonPayOtpErrorModalDescription(Object amount, Object name);

  /// Button of alert bottom sheet when otp is wrong
  ///
  /// In es, this message translates to:
  /// **'Volver a intentar'**
  String get dailyBankingSoonPayOtpErrorModalButton;

  /// Cards
  ///
  /// In es, this message translates to:
  /// **'Tarjetas'**
  String get dailyBankingCards;

  /// Alias
  ///
  /// In es, this message translates to:
  /// **'Alias'**
  String get dailyBankingCardsAlias;

  /// Virtual card
  ///
  /// In es, this message translates to:
  /// **'Virtual'**
  String get dailyBankingCardsVirtual;

  /// Physical card
  ///
  /// In es, this message translates to:
  /// **'Física'**
  String get dailyBankingCardsPhysical;

  /// Basic card
  ///
  /// In es, this message translates to:
  /// **'Basic'**
  String get dailyBankingCardsBasic;

  /// Premium card
  ///
  /// In es, this message translates to:
  /// **'Premium'**
  String get dailyBankingCardsPremium;

  /// Menu cards deactivate card
  ///
  /// In es, this message translates to:
  /// **'Desactivar'**
  String get dailyBankingCardsMenuDeactivate;

  /// Menu cards see details
  ///
  /// In es, this message translates to:
  /// **'Ver detalles'**
  String get dailyBankingCardsMenuSeeDetails;

  /// Menu cards settings
  ///
  /// In es, this message translates to:
  /// **'Ajustes'**
  String get dailyBankingCardsMenuSettings;

  /// Title of modal deactivate card
  ///
  /// In es, this message translates to:
  /// **'Desactivar tarjeta'**
  String get dailyBankingCardsMenuDeactivateModalTitle;

  /// Subtitle of modal deactivate card
  ///
  /// In es, this message translates to:
  /// **'¿Estás seguro de proceder?'**
  String get dailyBankingCardsMenuDeactivateModalSubtitle;

  /// Description of modal deactivate card
  ///
  /// In es, this message translates to:
  /// **'Antes de continuar, por favor, confirma que deseas desactivar tu tarjeta. Este proceso desactivará temporalmente tu tarjeta y no podrás realizar transacciones.'**
  String get dailyBankingCardsMenuDeactivateModalDescription;

  /// Title of otp page to deactivate card
  ///
  /// In es, this message translates to:
  /// **'Desactivar Tarjeta'**
  String get dailyBankingCardsMenuDeactivateOtpTitle;

  /// Text of button of otp page to deactivate card
  ///
  /// In es, this message translates to:
  /// **'Confirmar desactivación'**
  String get dailyBankingCardsMenuDeactivateOtpButton;

  /// Title of alert bottom sheet when card is deactivated
  ///
  /// In es, this message translates to:
  /// **'¡Tarjeta Desactivada!'**
  String get dailyBankingCardsMenuDeactivateOtpSuccessTitle;

  /// Description of alert bottom sheet when card is deactivated
  ///
  /// In es, this message translates to:
  /// **'Tu tarjeta ha sido desactivada con éxito'**
  String get dailyBankingCardsMenuDeactivateOtpSuccessDescription;

  /// Title of the alert bottom sheet when the card could not be deactivated
  ///
  /// In es, this message translates to:
  /// **'Error al desactivar tarjeta'**
  String get dailyBankingCardsMenuDeactivateOtpErrorTitle;

  /// Description of the alert bottom sheet when the card could not be deactivated
  ///
  /// In es, this message translates to:
  /// **'Ha ocurrido un error, no ha sido posible desactivar tu tarjeta.'**
  String get dailyBankingCardsMenuDeactivateOtpErrorDescription;

  /// Title card details
  ///
  /// In es, this message translates to:
  /// **'Detalles de tarjeta'**
  String get dailyBankingCardsDetailsTitle;

  /// Holder of card
  ///
  /// In es, this message translates to:
  /// **'Titular'**
  String get dailyBankingCardsDetailsHolder;

  /// Card number
  ///
  /// In es, this message translates to:
  /// **'Número de tarjeta'**
  String get dailyBankingCardsDetailsCardNumber;

  /// Expiration date
  ///
  /// In es, this message translates to:
  /// **'Fecha de caducidad'**
  String get dailyBankingCardsDetailsExpirationDate;

  /// Cvv
  ///
  /// In es, this message translates to:
  /// **'CVV'**
  String get dailyBankingCardsDetailsCvv;

  /// Title card settings
  ///
  /// In es, this message translates to:
  /// **'Ajustes'**
  String get dailyBankingCardsSettingsTitle;

  /// Limits of card
  ///
  /// In es, this message translates to:
  /// **'Límites de tarjeta'**
  String get dailyBankingCardsSettingsCardLimits;

  /// Limits of card description
  ///
  /// In es, this message translates to:
  /// **'Establece límites de gasto'**
  String get dailyBankingCardsSettingsCardLimitsDescription;

  /// Alias card
  ///
  /// In es, this message translates to:
  /// **'Editar alias'**
  String get dailyBankingCardsSettingsCardAlias;

  /// Alias card description
  ///
  /// In es, this message translates to:
  /// **'Establece un alias a tu tarjeta'**
  String get dailyBankingCardsSettingsCardAliasDescription;

  /// Online payment
  ///
  /// In es, this message translates to:
  /// **'Pagos online'**
  String get dailyBankingCardsSettingsCardOnlinePayment;

  /// Atm withdrawals
  ///
  /// In es, this message translates to:
  /// **'Retiradas de cajero'**
  String get dailyBankingCardsSettingsCardAtmWithdrawals;

  /// Contactless payments
  ///
  /// In es, this message translates to:
  /// **'Pagos contactless'**
  String get dailyBankingCardsSettingsCardContactlessPayment;

  /// Report theft or loss
  ///
  /// In es, this message translates to:
  /// **'Reportar robo o pérdida'**
  String get dailyBankingCardsSettingsCardReportTheftOrLoss;

  /// Title of page of card limits
  ///
  /// In es, this message translates to:
  /// **'Límites de tarjeta'**
  String get dailyBankingCardsSettingsCardLimitsTitle;

  /// Limit of daily payment
  ///
  /// In es, this message translates to:
  /// **'Límite de pago diario'**
  String get dailyBankingCardsSettingsCardLimitsDailyPayment;

  /// Limit of monthly payment
  ///
  /// In es, this message translates to:
  /// **'Límite de pago mensual'**
  String get dailyBankingCardsSettingsCardLimitsMonthlyPayment;

  /// Limit of online payment
  ///
  /// In es, this message translates to:
  /// **'Límite de pago online'**
  String get dailyBankingCardsSettingsCardLimitsOnlinePayment;

  /// Limit of atm withdrawals
  ///
  /// In es, this message translates to:
  /// **'Límite de retirada en cajero'**
  String get dailyBankingCardsSettingsCardLimitsAtmWithdrawals;

  /// Apply limits
  ///
  /// In es, this message translates to:
  /// **'Aplicar límites'**
  String get dailyBankingCardsSettingsCardLimitsApply;

  /// Insurances
  ///
  /// In es, this message translates to:
  /// **'Seguros'**
  String get dailyBankingInsurances;

  /// Policy
  ///
  /// In es, this message translates to:
  /// **'Póliza'**
  String get dailyBankingInsurancesPolicy;

  /// Policies
  ///
  /// In es, this message translates to:
  /// **'Pólizas'**
  String get dailyBankingInsurancesPolicies;

  /// Policy number
  ///
  /// In es, this message translates to:
  /// **'Número de póliza'**
  String get dailyBankingInsurancesPolicyNumber;

  /// Policy number
  ///
  /// In es, this message translates to:
  /// **'Número de póliza: {number}'**
  String dailyBankingInsurancesPolicyNumberWithParams(Object number);

  /// Claims
  ///
  /// In es, this message translates to:
  /// **'Siniestros'**
  String get dailyBankingInsurancesClaims;

  /// Claims number
  ///
  /// In es, this message translates to:
  /// **'Número de expediente: {number}'**
  String dailyBankingInsurancesClaimsNumber(Object number);

  /// Filter of claims status
  ///
  /// In es, this message translates to:
  /// **'Estado'**
  String get dailyBankingInsurancesClaimsFilterStatus;

  /// Filter of claims status open
  ///
  /// In es, this message translates to:
  /// **'Abierto'**
  String get dailyBankingInsurancesClaimsFilterStatusOpen;

  /// Filter of claims status in progress
  ///
  /// In es, this message translates to:
  /// **'En curso'**
  String get dailyBankingInsurancesClaimsFilterStatusInProgress;

  /// Filter of claims status finished
  ///
  /// In es, this message translates to:
  /// **'Finalizado'**
  String get dailyBankingInsurancesClaimsFilterStatusFinished;

  /// Policy details
  ///
  /// In es, this message translates to:
  /// **'Detalles de la póliza'**
  String get dailyBankingInsurancesPolicyDetails;

  /// Date of issue
  ///
  /// In es, this message translates to:
  /// **'Emisión'**
  String get dailyBankingInsurancesPolicyDetailsDateOfIssue;

  /// Date of expiration
  ///
  /// In es, this message translates to:
  /// **'Vencimiento'**
  String get dailyBankingInsurancesPolicyDetailsExpirationDate;

  /// Amount
  ///
  /// In es, this message translates to:
  /// **'Cuantía'**
  String get dailyBankingInsurancesPolicyDetailsAmount;

  /// Amount of last receipt
  ///
  /// In es, this message translates to:
  /// **'Importe del último recibo'**
  String get dailyBankingInsurancesPolicyDetailsAmountLastReceipt;

  /// Frequency of payment
  ///
  /// In es, this message translates to:
  /// **'Periodicidad de pago'**
  String get dailyBankingInsurancesPolicyDetailsFrequencyPayment;

  /// Cover included
  ///
  /// In es, this message translates to:
  /// **'Coberturas incluidas'**
  String get dailyBankingInsurancesPolicyDetailsCoverageIncluded;

  /// General claims and breakdowns
  ///
  /// In es, this message translates to:
  /// **'Siniestros y averías generales'**
  String get dailyBankingInsurancesPolicyDetailsCoverageIncludedClaimsGeneralBreakdowns;

  /// Computer Assistance
  ///
  /// In es, this message translates to:
  /// **'Asistencia Informática'**
  String get dailyBankingInsurancesPolicyDetailsCoverageIncludedComputerAssistance;

  /// Robbery with and without violence
  ///
  /// In es, this message translates to:
  /// **'Robo con y sin violencia'**
  String get dailyBankingInsurancesPolicyDetailsCoverageIncludedRobberyWithAndWithoutViolence;

  /// Electrical Damage
  ///
  /// In es, this message translates to:
  /// **'Daños Eléctricos'**
  String get dailyBankingInsurancesPolicyDetailsCoverageIncludedElectricalDamage;

  /// Machinery Breakdown
  ///
  /// In es, this message translates to:
  /// **'Avería de Maquinaria'**
  String get dailyBankingInsurancesPolicyDetailsCoverageIncludedMachineryBreakdown;

  /// Glass breakage
  ///
  /// In es, this message translates to:
  /// **'Roturas de cristales'**
  String get dailyBankingInsurancesPolicyDetailsCoverageIncludedGlassBreakage;

  /// Aesthetic Damage
  ///
  /// In es, this message translates to:
  /// **'Daños Estéticos'**
  String get dailyBankingInsurancesPolicyDetailsCoverageIncludedAestheticDamage;

  /// Liability
  ///
  /// In es, this message translates to:
  /// **'Responsabilidad Civil'**
  String get dailyBankingInsurancesPolicyDetailsCoverageIncludedLiability;

  /// Daily Loss of Profit
  ///
  /// In es, this message translates to:
  /// **'Pérdida de Beneficios diaria'**
  String get dailyBankingInsurancesPolicyDetailsCoverageIncludedDailyLossProfit;

  /// Forced Eviction
  ///
  /// In es, this message translates to:
  /// **'Desalojo Forzoso'**
  String get dailyBankingInsurancesPolicyDetailsCoverageIncludedForcedEviction;

  /// Report a claim
  ///
  /// In es, this message translates to:
  /// **'Declarar un siniestro'**
  String get dailyBankingInsurancesPolicyDetailsClaimsReportButton;

  /// Details of the claim
  ///
  /// In es, this message translates to:
  /// **'Detalles del siniestro'**
  String get dailyBankingInsurancesPolicyDetailsClaimsDetails;

  /// File No.
  ///
  /// In es, this message translates to:
  /// **'Nº Expediente'**
  String get dailyBankingInsurancesPolicyDetailsClaimsDetailsNumber;

  /// Opening date
  ///
  /// In es, this message translates to:
  /// **'Fecha apertura'**
  String get dailyBankingInsurancesPolicyDetailsClaimsDetailsOpeningDate;

  /// Start date of processing
  ///
  /// In es, this message translates to:
  /// **'Fecha inicio tramitación'**
  String get dailyBankingInsurancesPolicyDetailsClaimsDetailsStartDateProcessing;

  /// End date of processing
  ///
  /// In es, this message translates to:
  /// **'Fecha fin de tramitación'**
  String get dailyBankingInsurancesPolicyDetailsClaimsDetailsEndDateProcessing;

  /// State of claim
  ///
  /// In es, this message translates to:
  /// **'Estado de siniestro'**
  String get dailyBankingInsurancesPolicyDetailsClaimsDetailsStateClaim;

  /// Contact person
  ///
  /// In es, this message translates to:
  /// **'Persona de contacto'**
  String get dailyBankingInsurancesPolicyDetailsClaimsDetailsContactPerson;

  /// Title of the mode of assistance
  ///
  /// In es, this message translates to:
  /// **'Servicio de atención al cliente'**
  String get dailyBankingInsurancesPolicyDetailsClaimsDetailsAssistanceModalTitle;

  /// Description of the mode of assistance
  ///
  /// In es, this message translates to:
  /// **'Vas a ponerte en contacto con el Servicio de atención al cliente de soon. '**
  String get dailyBankingInsurancesPolicyDetailsClaimsDetailsAssistanceModalDescription;

  /// App Title
  ///
  /// In es, this message translates to:
  /// **'soon'**
  String get commonAppTitle;

  /// Bottom navigation home
  ///
  /// In es, this message translates to:
  /// **'Inicio'**
  String get commonBottomNavigationHome;

  /// Bottom navigation business
  ///
  /// In es, this message translates to:
  /// **'Negocio'**
  String get commonBottomNavigationBusiness;

  /// Bottom navigation agenda
  ///
  /// In es, this message translates to:
  /// **'Agenda'**
  String get commonBottomNavigationAgenda;

  /// Bottom navigation analitycs
  ///
  /// In es, this message translates to:
  /// **'Analítica'**
  String get commonBottomNavigationAnalitycs;

  /// Bottom navigation protection
  ///
  /// In es, this message translates to:
  /// **'Protección'**
  String get commonBottomNavigationProtection;

  /// Search
  ///
  /// In es, this message translates to:
  /// **'Buscar'**
  String get commonSearch;

  /// Filter
  ///
  /// In es, this message translates to:
  /// **'Filtrar'**
  String get commonFilter;

  /// Discard filters
  ///
  /// In es, this message translates to:
  /// **'Descartar filtros'**
  String get commonFilterDiscard;

  /// Apply filters
  ///
  /// In es, this message translates to:
  /// **'Aplicar'**
  String get commonFilterApply;

  /// Select
  ///
  /// In es, this message translates to:
  /// **'Seleccionar'**
  String get commonFilterSelect;

  /// Amount
  ///
  /// In es, this message translates to:
  /// **'Importe'**
  String get commonAmount;

  /// All
  ///
  /// In es, this message translates to:
  /// **'Todos'**
  String get commonAll;

  /// Revenue
  ///
  /// In es, this message translates to:
  /// **'Ingresos'**
  String get commonRevenue;

  /// Expenses
  ///
  /// In es, this message translates to:
  /// **'Gastos'**
  String get commonExpenses;

  /// Category
  ///
  /// In es, this message translates to:
  /// **'Categoría'**
  String get commonCategory;

  /// Categories
  ///
  /// In es, this message translates to:
  /// **'Categorías'**
  String get commonCategories;

  /// Category energy
  ///
  /// In es, this message translates to:
  /// **'Energía'**
  String get commonCategoryEnergy;

  /// Category feeding
  ///
  /// In es, this message translates to:
  /// **'Alimentación'**
  String get commonCategoryFeeding;

  /// Caregory culture
  ///
  /// In es, this message translates to:
  /// **'Cultura'**
  String get commonCategoryCulture;

  /// Category education
  ///
  /// In es, this message translates to:
  /// **'Educación'**
  String get commonCategoryEducation;

  /// Category entertainment
  ///
  /// In es, this message translates to:
  /// **'Entretenimiento'**
  String get commonCategoryEntertainment;

  /// Category home
  ///
  /// In es, this message translates to:
  /// **'Hogar'**
  String get commonCategoryHome;

  /// Category fashion
  ///
  /// In es, this message translates to:
  /// **'Moda'**
  String get commonCategoryFashion;

  /// Category health
  ///
  /// In es, this message translates to:
  /// **'Salud'**
  String get commonCategoryHealth;

  /// Category technology
  ///
  /// In es, this message translates to:
  /// **'Tecnología'**
  String get commonCategoryTechnology;

  /// Category transport
  ///
  /// In es, this message translates to:
  /// **'Transporte'**
  String get commonCategoryTransport;

  /// Caregory travel
  ///
  /// In es, this message translates to:
  /// **'Viajes'**
  String get commonCategoryTravel;

  /// Movements
  ///
  /// In es, this message translates to:
  /// **'Movimientos'**
  String get commonMovements;

  /// Change
  ///
  /// In es, this message translates to:
  /// **'Cambiar'**
  String get commonChange;

  /// Cancelar
  ///
  /// In es, this message translates to:
  /// **'Cancelar'**
  String get commonCancel;

  /// Desactivar
  ///
  /// In es, this message translates to:
  /// **'Desactivar'**
  String get commonDeactivate;

  /// Subtitle of otp page
  ///
  /// In es, this message translates to:
  /// **'Código de confirmación'**
  String get commonOtpSubtitle;

  /// Description of otp page
  ///
  /// In es, this message translates to:
  /// **'Ingresa el código de confirmación que has recibido por SMS para confirmar la operación.'**
  String get commonOtpDescription;

  /// Text button resend code
  ///
  /// In es, this message translates to:
  /// **'Reenviar'**
  String get commonOtpResend;

  /// Help text of otp page
  ///
  /// In es, this message translates to:
  /// **'¿No recibes el código?'**
  String get commonOtpHelp;

  /// Continue
  ///
  /// In es, this message translates to:
  /// **'Continuar'**
  String get commonContinue;

  /// Settings
  ///
  /// In es, this message translates to:
  /// **'Ajustes'**
  String get commonSettings;

  /// Security
  ///
  /// In es, this message translates to:
  /// **'Seguridad'**
  String get commonSecurity;

  /// Total
  ///
  /// In es, this message translates to:
  /// **'Total'**
  String get commonTotal;

  /// Account
  ///
  /// In es, this message translates to:
  /// **'Cuenta'**
  String get commonAccount;

  /// Account name
  ///
  /// In es, this message translates to:
  /// **'Cuenta {name}'**
  String commonAccountName(Object name);

  /// IBAN
  ///
  /// In es, this message translates to:
  /// **'IBAN'**
  String get commonIban;

  /// Code BIC/SWIFT
  ///
  /// In es, this message translates to:
  /// **'Código BIC/SWIFT'**
  String get commonBicSwift;

  /// Certificates
  ///
  /// In es, this message translates to:
  /// **'Certificados'**
  String get commonCertificates;

  /// Certificate
  ///
  /// In es, this message translates to:
  /// **'Certificado'**
  String get commonCertificate;

  /// Next
  ///
  /// In es, this message translates to:
  /// **'Siguiente'**
  String get commonNext;

  /// Policy
  ///
  /// In es, this message translates to:
  /// **'Póliza'**
  String get commonPolicy;

  /// Claims
  ///
  /// In es, this message translates to:
  /// **'Siniestros'**
  String get commonClaims;

  /// Insurance commercial
  ///
  /// In es, this message translates to:
  /// **'Seguro de comercios'**
  String get commonInsuranceCommercial;

  /// Insurance responsability
  ///
  /// In es, this message translates to:
  /// **'Seguro de Responsabilidad Civil'**
  String get commonInsuranceResponsability;

  /// Insurance cibersecurity
  ///
  /// In es, this message translates to:
  /// **'Seguro de Ciberseguridad'**
  String get commonInsuranceCibersecurity;

  /// Insurance health
  ///
  /// In es, this message translates to:
  /// **'Seguro de Salud'**
  String get commonInsuranceHealth;

  /// Insurance accidents
  ///
  /// In es, this message translates to:
  /// **'Seguro de Accidentes'**
  String get commonInsuranceAccidents;

  /// Phone
  ///
  /// In es, this message translates to:
  /// **'Teléfono'**
  String get commonPhone;

  /// Email
  ///
  /// In es, this message translates to:
  /// **'Mail'**
  String get commonEmail;

  /// SMS
  ///
  /// In es, this message translates to:
  /// **'SMS'**
  String get commonSms;

  /// Whatsapp
  ///
  /// In es, this message translates to:
  /// **'Whatsapp'**
  String get commonWhatsapp;

  /// City
  ///
  /// In es, this message translates to:
  /// **'Ciudad'**
  String get commonCity;

  /// Contact
  ///
  /// In es, this message translates to:
  /// **'Contactar'**
  String get commonContact;

  /// Description
  ///
  /// In es, this message translates to:
  /// **'Descripción'**
  String get commonDescription;

  /// Voucher
  ///
  /// In es, this message translates to:
  /// **'Comprobante'**
  String get commonVoucher;

  /// Attachments
  ///
  /// In es, this message translates to:
  /// **'Adjuntos'**
  String get commonAttachments;

  /// Getting help
  ///
  /// In es, this message translates to:
  /// **'Obtener ayuda'**
  String get commonGettingHelp;

  /// Add file
  ///
  /// In es, this message translates to:
  /// **'Añadir archivo'**
  String get commonAddFile;

  /// Create expense
  ///
  /// In es, this message translates to:
  /// **'Crear gasto'**
  String get commonCreateExpense;

  /// Banking information
  ///
  /// In es, this message translates to:
  /// **'Información bancaria'**
  String get commonBankingInformation;

  /// Movement details
  ///
  /// In es, this message translates to:
  /// **'Detalles de movimiento'**
  String get commonMovementDetails;

  /// Beneficiary
  ///
  /// In es, this message translates to:
  /// **'Beneficiario'**
  String get commonBeneficiary;

  /// Concept
  ///
  /// In es, this message translates to:
  /// **'Concepto'**
  String get commonConcept;

  /// Programmed
  ///
  /// In es, this message translates to:
  /// **'Programado'**
  String get commonProgrammed;

  /// Currency
  ///
  /// In es, this message translates to:
  /// **'Divisa'**
  String get commonCurrency;

  /// Download
  ///
  /// In es, this message translates to:
  /// **'Descargar'**
  String get commonDownload;

  /// Ordinary
  ///
  /// In es, this message translates to:
  /// **'Ordinaria'**
  String get commonTransferTypeOrdinary;

  /// Immediate
  ///
  /// In es, this message translates to:
  /// **'Inmediata'**
  String get commonTransferTypeImmediate;

  /// From
  ///
  /// In es, this message translates to:
  /// **'Desde'**
  String get commonFrom;

  /// To
  ///
  /// In es, this message translates to:
  /// **'Hasta'**
  String get commonTo;

  /// Date
  ///
  /// In es, this message translates to:
  /// **'Fecha'**
  String get commonDate;

  /// Since
  ///
  /// In es, this message translates to:
  /// **'Desde'**
  String get commonDateSince;

  /// Since with date
  ///
  /// In es, this message translates to:
  /// **'Desde {date}'**
  String commonDateSinceDate(Object date);

  /// Until
  ///
  /// In es, this message translates to:
  /// **'Hasta'**
  String get commonDateUntil;

  /// Date of dispatch
  ///
  /// In es, this message translates to:
  /// **'Fecha de envío'**
  String get commonDateDispatch;

  /// Estimated arrival
  ///
  /// In es, this message translates to:
  /// **'Llegada estimada'**
  String get commonDateEstimatedArrival;

  /// Today
  ///
  /// In es, this message translates to:
  /// **'Hoy'**
  String get commonDateToday;

  /// Yesterday
  ///
  /// In es, this message translates to:
  /// **'Ayer'**
  String get commonDateYesterday;

  /// Year
  ///
  /// In es, this message translates to:
  /// **'Año'**
  String get commonDateYear;

  /// Month
  ///
  /// In es, this message translates to:
  /// **'Mes'**
  String get commonDateMonth;

  /// Day
  ///
  /// In es, this message translates to:
  /// **'Día'**
  String get commonDateDay;

  /// Frequency
  ///
  /// In es, this message translates to:
  /// **'Frecuencia'**
  String get commonFrequency;

  /// Daily
  ///
  /// In es, this message translates to:
  /// **'Diariamente'**
  String get commonFrequencyDaily;

  /// Weekly
  ///
  /// In es, this message translates to:
  /// **'Semanalmente'**
  String get commonFrequencyWeekly;

  /// Monthly
  ///
  /// In es, this message translates to:
  /// **'Mensualmente'**
  String get commonFrequencyMonthly;

  /// Quarterly
  ///
  /// In es, this message translates to:
  /// **'Trimestralmente'**
  String get commonFrequencyQuarterly;

  /// Yearly
  ///
  /// In es, this message translates to:
  /// **'Anualmente'**
  String get commonFrequencyYearly;

  /// Occasional
  ///
  /// In es, this message translates to:
  /// **'Puntual'**
  String get commonFrequencyOccasional;

  /// Periodicity
  ///
  /// In es, this message translates to:
  /// **'Periodicidad'**
  String get commonPeriodicity;

  /// Amount from
  ///
  /// In es, this message translates to:
  /// **'Desde'**
  String get commonAmountFrom;

  /// Amount to
  ///
  /// In es, this message translates to:
  /// **'Hasta'**
  String get commonAmountTo;

  /// No concept
  ///
  /// In es, this message translates to:
  /// **'Sin concepto'**
  String get commonNoConcept;

  /// Country
  ///
  /// In es, this message translates to:
  /// **'País'**
  String get commonCountry;

  /// Spain
  ///
  /// In es, this message translates to:
  /// **'España'**
  String get commonCountriesSpain;

  /// Portugal
  ///
  /// In es, this message translates to:
  /// **'Portugal'**
  String get commonCountriesPortugal;

  /// France
  ///
  /// In es, this message translates to:
  /// **'Francia'**
  String get commonCountriesFrance;

  /// Name or corporate name
  ///
  /// In es, this message translates to:
  /// **'Nombre o razón social'**
  String get commonCorporateName;

  /// Holder
  ///
  /// In es, this message translates to:
  /// **'Titular'**
  String get commonHolder;

  /// Transfer fee
  ///
  /// In es, this message translates to:
  /// **'Comisión de transferencia'**
  String get commonTransferFee;

  /// Confirm
  ///
  /// In es, this message translates to:
  /// **'Confirmar'**
  String get commonConfirm;

  /// Signature of operation
  ///
  /// In es, this message translates to:
  /// **'Firma de operación'**
  String get commonSignatureOperation;

  /// See more receipts from the issuer
  ///
  /// In es, this message translates to:
  /// **'Ver más recibos del emisor'**
  String get commonSeeMoreReceipts;

  /// Refuse collection
  ///
  /// In es, this message translates to:
  /// **'Rechazar cobro'**
  String get commonRefuseCollection;

  /// Account number
  ///
  /// In es, this message translates to:
  /// **'Número de cuenta'**
  String get commonAccountNumber;

  /// Request a certificate
  ///
  /// In es, this message translates to:
  /// **'Solicitar certificado de {name}'**
  String commonRequestCertificateName(Object name);

  /// Issuer Name
  ///
  /// In es, this message translates to:
  /// **'Nombre Emisor'**
  String get commonIssuerName;

  /// Details of the movement
  ///
  /// In es, this message translates to:
  /// **'Detalles del movimiento'**
  String get commonDetailsMovement;

  /// Save
  ///
  /// In es, this message translates to:
  /// **'Guardar'**
  String get commonSave;

  /// Attachment deleted
  ///
  /// In es, this message translates to:
  /// **'Documento adjunto eliminado'**
  String get commonAttachmentDeleted;

  /// Client
  ///
  /// In es, this message translates to:
  /// **'Cliente'**
  String get commonClient;

  /// Supplier
  ///
  /// In es, this message translates to:
  /// **'Proveedor'**
  String get commonSupplier;

  /// Charged
  ///
  /// In es, this message translates to:
  /// **'Cobrado'**
  String get commonCharged;

  /// Pending
  ///
  /// In es, this message translates to:
  /// **'Pendiente'**
  String get commonPending;

  /// Overdue
  ///
  /// In es, this message translates to:
  /// **'Vencido'**
  String get commonOverdue;

  /// Unpaid
  ///
  /// In es, this message translates to:
  /// **'Impagado'**
  String get commonUnpaid;

  /// Paid
  ///
  /// In es, this message translates to:
  /// **'Pagado'**
  String get commonPaid;

  /// Type
  ///
  /// In es, this message translates to:
  /// **'Tipo'**
  String get commonType;

  /// Status
  ///
  /// In es, this message translates to:
  /// **'Estado'**
  String get commonStatus;

  /// Document
  ///
  /// In es, this message translates to:
  /// **'Documento'**
  String get commonDocument;

  /// Address
  ///
  /// In es, this message translates to:
  /// **'Dirección'**
  String get commonAddress;

  /// Address extra information
  ///
  /// In es, this message translates to:
  /// **'Piso, puerta, nº casa'**
  String get commonAddressExtraInfo;

  /// Accept
  ///
  /// In es, this message translates to:
  /// **'Aceptar'**
  String get commonAccept;

  /// Postal code
  ///
  /// In es, this message translates to:
  /// **'Código postal'**
  String get commonPostalCode;

  /// Tax information
  ///
  /// In es, this message translates to:
  /// **'Información fiscal'**
  String get commonTaxInformation;

  /// Name or corporate name
  ///
  /// In es, this message translates to:
  /// **'Nombre o razón social'**
  String get commonNameOrCompanyName;

  /// CIF / NIF
  ///
  /// In es, this message translates to:
  /// **'CIF/NIF'**
  String get commonCifOrNif;

  /// NIF with param
  ///
  /// In es, this message translates to:
  /// **'NIF: {nif}'**
  String commonNifWithParams(Object nif);

  /// Notes
  ///
  /// In es, this message translates to:
  /// **'Notas'**
  String get commonNotes;

  /// Communication preferences
  ///
  /// In es, this message translates to:
  /// **'Preferencias de comunicación'**
  String get commonCommunicationPreferences;

  ///
  ///
  /// In es, this message translates to:
  /// **'Contactos'**
  String get contacts;

  ///
  ///
  /// In es, this message translates to:
  /// **'Impagos'**
  String get contactsSelectorUnpaid;

  ///
  ///
  /// In es, this message translates to:
  /// **'Ingresos'**
  String get contactsSelectorIncome;

  ///
  ///
  /// In es, this message translates to:
  /// **'Contactos favoritos'**
  String get contactsFavourites;

  ///
  ///
  /// In es, this message translates to:
  /// **'Añadir'**
  String get contactsAdd;

  ///
  ///
  /// In es, this message translates to:
  /// **'Manual'**
  String get contactsAddModalManual;

  ///
  ///
  /// In es, this message translates to:
  /// **'Desde agenda'**
  String get contactsAddModalFromAgenda;

  ///
  ///
  /// In es, this message translates to:
  /// **'Subir contactos'**
  String get contactsAddModalFromUploadFile;

  ///
  ///
  /// In es, this message translates to:
  /// **'Importar'**
  String get contactsUploadFilePageTitle;

  ///
  ///
  /// In es, this message translates to:
  /// **'Importa tus contactos fácilmente con nuestra plantilla diseñada para simplificar el proceso.'**
  String get contactsUploadFilePageDescription;

  ///
  ///
  /// In es, this message translates to:
  /// **'Plantilla para importar contactos'**
  String get contactsUploadFilePageTemplateImportingContacts;

  ///
  ///
  /// In es, this message translates to:
  /// **'Plantilla'**
  String get contactsUploadFilePageTemplate;

  ///
  ///
  /// In es, this message translates to:
  /// **'La descarga se ha realizado con éxito.'**
  String get contactsUploadFilePageTemplateSuccessDownloadedAlertTitle;

  ///
  ///
  /// In es, this message translates to:
  /// **'Abrir documento'**
  String get contactsUploadFilePageTemplateSuccessDownloadedAlertDescription;

  ///
  ///
  /// In es, this message translates to:
  /// **'Archivo seleccionado'**
  String get contactsUploadFilePageSelectedFile;

  ///
  ///
  /// In es, this message translates to:
  /// **'Selecciona archivo'**
  String get contactsUploadFilePageSelectFile;

  ///
  ///
  /// In es, this message translates to:
  /// **'Elige el archivo para subir.'**
  String get contactsUploadFilePageChooseFile;

  ///
  ///
  /// In es, this message translates to:
  /// **'Seleccionar archivo'**
  String get contactsUploadFilePageSelectFileButton;

  ///
  ///
  /// In es, this message translates to:
  /// **'Subir archivo'**
  String get contactsUploadFilePageUploadFileButton;

  ///
  ///
  /// In es, this message translates to:
  /// **'Subir archivo'**
  String get contactsUploadFilePageModalToSelectDocumentTitle;

  ///
  ///
  /// In es, this message translates to:
  /// **'Envío completado'**
  String get contactsUploadFilePageModalToSelectDocumentSuccessTitle;

  ///
  ///
  /// In es, this message translates to:
  /// **'Archivo subido con éxito'**
  String get contactsUploadFilePageModalToSelectDocumentSuccessDescription;

  ///
  ///
  /// In es, this message translates to:
  /// **'Error al importar'**
  String get contactsUploadFilePageModalToSelectDocumentErrorTitle;

  ///
  ///
  /// In es, this message translates to:
  /// **'No se ha podido subir el archivo'**
  String get contactsUploadFilePageModalToSelectDocumentErrorDescription;

  ///
  ///
  /// In es, this message translates to:
  /// **'Error al subir {filename}'**
  String contactsUploadFilePageModalToSelectDocumentErrorAlertTitle(Object filename);

  ///
  ///
  /// In es, this message translates to:
  /// **'Acceso agenda'**
  String get contactsAddFromAgendaModalRequestPermissionsTitle;

  ///
  ///
  /// In es, this message translates to:
  /// **'Para poder añadir contactos desde tu agenda, necesitamos acceder a ella. Por favor, pulsa en \"Aceptar\" para permitir el acceso. ¡Gracias!'**
  String get contactsAddFromAgendaModalRequestPermissionsDescription;

  ///
  ///
  /// In es, this message translates to:
  /// **'Agenda'**
  String get contactsAddFromAgendaPageTitle;

  ///
  ///
  /// In es, this message translates to:
  /// **'Seleccionar todos'**
  String get contactsAddFromAgendaSelectContactsAll;

  ///
  ///
  /// In es, this message translates to:
  /// **'Añadir'**
  String get contactsAddFromAgendaAddButton;

  ///
  ///
  /// In es, this message translates to:
  /// **'Nuevo contacto agregado.'**
  String get contactsAddFromAgendaSelectContactsSuccessAddedAlertTitle;

  ///
  ///
  /// In es, this message translates to:
  /// **'Error al añadir contacto.'**
  String get contactsAddFromAgendaSelectContactsErrorAddedAlertTitle;

  ///
  ///
  /// In es, this message translates to:
  /// **'Nuevo contacto'**
  String get contactsAddManualNewContactPageTitle;

  ///
  ///
  /// In es, this message translates to:
  /// **'Información del contacto'**
  String get contactsAddManualNewContactPageContactInfo;

  ///
  ///
  /// In es, this message translates to:
  /// **'Crear'**
  String get contactsAddManualNewContactPageButton;

  ///
  ///
  /// In es, this message translates to:
  /// **'Contacto'**
  String get contactsDetailsPageTitle;

  ///
  ///
  /// In es, this message translates to:
  /// **'Perfil'**
  String get contactsDetailsTabProfile;

  ///
  ///
  /// In es, this message translates to:
  /// **'Ingresos'**
  String get contactsDetailsTabRevenue;

  ///
  ///
  /// In es, this message translates to:
  /// **'Gastos'**
  String get contactsDetailsTabExpenses;

  ///
  ///
  /// In es, this message translates to:
  /// **'Enviar mail'**
  String get contactsDetailsActionsSendEmail;

  ///
  ///
  /// In es, this message translates to:
  /// **'Llamar'**
  String get contactsDetailsActionsCall;

  ///
  ///
  /// In es, this message translates to:
  /// **'Marcar como favorito'**
  String get contactsDetailsMarkAsFavourite;

  ///
  ///
  /// In es, this message translates to:
  /// **'Notas'**
  String get contactsDetailsNotes;

  ///
  ///
  /// In es, this message translates to:
  /// **'Ej: Llamar a Marta el sábado'**
  String get contactsDetailsNotesHintText;

  ///
  ///
  /// In es, this message translates to:
  /// **'Preferencias de comunicación'**
  String get contactsDetailsComunicationsPreferences;

  ///
  ///
  /// In es, this message translates to:
  /// **'Eliminar contacto'**
  String get contactsDetailsDeleteContactButton;

  ///
  ///
  /// In es, this message translates to:
  /// **'Eliminar contacto'**
  String get contactsDetailsDeleteContactModalTitle;

  ///
  ///
  /// In es, this message translates to:
  /// **'Se perderán todos los datos y no podrás recuperarlos'**
  String get contactsDetailsDeleteContactModalDescription;

  ///
  ///
  /// In es, this message translates to:
  /// **'Contacto eliminado'**
  String get contactsDetailsDeleteContactModalSuccessAlertTitle;

  ///
  ///
  /// In es, this message translates to:
  /// **'Campos incorrectos'**
  String get contactsDetailsIncorrectFieldsAlertTitle;

  ///
  ///
  /// In es, this message translates to:
  /// **'Campos incompletos'**
  String get contactsDetailsIncompleteFieldsModalTitle;

  ///
  ///
  /// In es, this message translates to:
  /// **'Tu contacto está activo, pero aún hay campos por completar para una gestión más completa y precisa.'**
  String get contactsDetailsIncompleteFieldsModalDescription;

  ///
  ///
  /// In es, this message translates to:
  /// **'Completar'**
  String get contactsDetailsIncompleteFieldsModalOkButton;

  ///
  ///
  /// In es, this message translates to:
  /// **'Lo haré más tarde'**
  String get contactsDetailsIncompleteFieldsModalCancelButton;

  ///
  ///
  /// In es, this message translates to:
  /// **'Resultado'**
  String get contactsDetailsRevenueAndExpensesResult;

  ///
  ///
  /// In es, this message translates to:
  /// **'Contacto'**
  String get contactsEditPageTitle;

  ///
  ///
  /// In es, this message translates to:
  /// **'Información del contacto'**
  String get contactsEditPageContactInfo;
}

class _AppLocalizationsDelegate extends LocalizationsDelegate<AppLocalizations> {
  const _AppLocalizationsDelegate();

  @override
  Future<AppLocalizations> load(Locale locale) {
    return SynchronousFuture<AppLocalizations>(lookupAppLocalizations(locale));
  }

  @override
  bool isSupported(Locale locale) => <String>['es'].contains(locale.languageCode);

  @override
  bool shouldReload(_AppLocalizationsDelegate old) => false;
}

AppLocalizations lookupAppLocalizations(Locale locale) {


  // Lookup logic when only language code is specified.
  switch (locale.languageCode) {
    case 'es': return AppLocalizationsEs();
  }

  throw FlutterError(
    'AppLocalizations.delegate failed to load unsupported locale "$locale". This is likely '
    'an issue with the localizations generation tool. Please file an issue '
    'on GitHub with a reproducible sample app and the gen-l10n configuration '
    'that was used.'
  );
}
