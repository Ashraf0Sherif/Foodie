// GENERATED CODE - DO NOT MODIFY BY HAND
import 'package:flutter/material.dart';
import 'package:intl/intl.dart';
import 'intl/messages_all.dart';

// **************************************************************************
// Generator: Flutter Intl IDE plugin
// Made by Localizely
// **************************************************************************

// ignore_for_file: non_constant_identifier_names, lines_longer_than_80_chars
// ignore_for_file: join_return_with_assignment, prefer_final_in_for_each
// ignore_for_file: avoid_redundant_argument_values, avoid_escaping_inner_quotes

class S {
  S();

  static S? _current;

  static S get current {
    assert(_current != null,
        'No instance of S was loaded. Try to initialize the S delegate before accessing S.current.');
    return _current!;
  }

  static const AppLocalizationDelegate delegate = AppLocalizationDelegate();

  static Future<S> load(Locale locale) {
    final name = (locale.countryCode?.isEmpty ?? false)
        ? locale.languageCode
        : locale.toString();
    final localeName = Intl.canonicalizedLocale(name);
    return initializeMessages(localeName).then((_) {
      Intl.defaultLocale = localeName;
      final instance = S();
      S._current = instance;

      return instance;
    });
  }

  static S of(BuildContext context) {
    final instance = S.maybeOf(context);
    assert(instance != null,
        'No instance of S present in the widget tree. Did you add S.delegate in localizationsDelegates?');
    return instance!;
  }

  static S? maybeOf(BuildContext context) {
    return Localizations.of<S>(context, S);
  }

  /// `Welcome to Foodie`
  String get welcomeToFoodie {
    return Intl.message(
      'Welcome to Foodie',
      name: 'welcomeToFoodie',
      desc: '',
      args: [],
    );
  }

  /// `Please Login to continue`
  String get pleaseLoginToContinue {
    return Intl.message(
      'Please Login to continue',
      name: 'pleaseLoginToContinue',
      desc: '',
      args: [],
    );
  }

  /// `E-mail`
  String get emailLabel {
    return Intl.message(
      'E-mail',
      name: 'emailLabel',
      desc: '',
      args: [],
    );
  }

  /// `Password`
  String get passwordLabel {
    return Intl.message(
      'Password',
      name: 'passwordLabel',
      desc: '',
      args: [],
    );
  }

  /// `Please enter a valid email`
  String get pleaseEnterValidEmail {
    return Intl.message(
      'Please enter a valid email',
      name: 'pleaseEnterValidEmail',
      desc: '',
      args: [],
    );
  }

  /// `Please enter a valid password`
  String get pleaseEnterValidPassword {
    return Intl.message(
      'Please enter a valid password',
      name: 'pleaseEnterValidPassword',
      desc: '',
      args: [],
    );
  }

  /// `Forgot Password?`
  String get forgotPassword {
    return Intl.message(
      'Forgot Password?',
      name: 'forgotPassword',
      desc: '',
      args: [],
    );
  }

  /// `LOGIN`
  String get loginButton {
    return Intl.message(
      'LOGIN',
      name: 'loginButton',
      desc: '',
      args: [],
    );
  }

  /// `Or Continue as Guest`
  String get continueAsGuest {
    return Intl.message(
      'Or Continue as Guest',
      name: 'continueAsGuest',
      desc: '',
      args: [],
    );
  }

  /// `Please verify your email`
  String get pleaseVerifyEmail {
    return Intl.message(
      'Please verify your email',
      name: 'pleaseVerifyEmail',
      desc: '',
      args: [],
    );
  }

  /// `Got it`
  String get gotIt {
    return Intl.message(
      'Got it',
      name: 'gotIt',
      desc: '',
      args: [],
    );
  }

  /// `Nice to meet you!`
  String get niceToMeetYou {
    return Intl.message(
      'Nice to meet you!',
      name: 'niceToMeetYou',
      desc: '',
      args: [],
    );
  }

  /// `I hope you spend your all money here :)`
  String get spendAllMoneyHere {
    return Intl.message(
      'I hope you spend your all money here :)',
      name: 'spendAllMoneyHere',
      desc: '',
      args: [],
    );
  }

  /// `First Name`
  String get firstNameLabel {
    return Intl.message(
      'First Name',
      name: 'firstNameLabel',
      desc: '',
      args: [],
    );
  }

  /// `Last Name`
  String get lastNameLabel {
    return Intl.message(
      'Last Name',
      name: 'lastNameLabel',
      desc: '',
      args: [],
    );
  }

  /// `Phone Number`
  String get phoneNumberLabel {
    return Intl.message(
      'Phone Number',
      name: 'phoneNumberLabel',
      desc: '',
      args: [],
    );
  }

  /// `Confirm Password`
  String get confirmPasswordLabel {
    return Intl.message(
      'Confirm Password',
      name: 'confirmPasswordLabel',
      desc: '',
      args: [],
    );
  }

  /// `REGISTER`
  String get registerButton {
    return Intl.message(
      'REGISTER',
      name: 'registerButton',
      desc: '',
      args: [],
    );
  }

  /// `Please enter your first name`
  String get pleaseEnterFirstName {
    return Intl.message(
      'Please enter your first name',
      name: 'pleaseEnterFirstName',
      desc: '',
      args: [],
    );
  }

  /// `Please enter your last name`
  String get pleaseEnterLastName {
    return Intl.message(
      'Please enter your last name',
      name: 'pleaseEnterLastName',
      desc: '',
      args: [],
    );
  }

  /// `Please enter a valid phone number`
  String get pleaseEnterValidPhoneNumber {
    return Intl.message(
      'Please enter a valid phone number',
      name: 'pleaseEnterValidPhoneNumber',
      desc: '',
      args: [],
    );
  }

  /// `Password does not match`
  String get passwordDoesNotMatch {
    return Intl.message(
      'Password does not match',
      name: 'passwordDoesNotMatch',
      desc: '',
      args: [],
    );
  }

  /// `At least 8 characters`
  String get passwordValidationMinLength {
    return Intl.message(
      'At least 8 characters',
      name: 'passwordValidationMinLength',
      desc: '',
      args: [],
    );
  }

  /// `Contains at least one uppercase letter`
  String get passwordValidationUppercase {
    return Intl.message(
      'Contains at least one uppercase letter',
      name: 'passwordValidationUppercase',
      desc: '',
      args: [],
    );
  }

  /// `Contains at least one lowercase letter`
  String get passwordValidationLowercase {
    return Intl.message(
      'Contains at least one lowercase letter',
      name: 'passwordValidationLowercase',
      desc: '',
      args: [],
    );
  }

  /// `Contains at least one number`
  String get passwordValidationNumber {
    return Intl.message(
      'Contains at least one number',
      name: 'passwordValidationNumber',
      desc: '',
      args: [],
    );
  }

  /// `Contains at least one special character`
  String get passwordValidationSpecialCharacter {
    return Intl.message(
      'Contains at least one special character',
      name: 'passwordValidationSpecialCharacter',
      desc: '',
      args: [],
    );
  }

  /// `By creating an account, you are agreeing to our `
  String get termsAndConditionsText {
    return Intl.message(
      'By creating an account, you are agreeing to our ',
      name: 'termsAndConditionsText',
      desc: '',
      args: [],
    );
  }

  /// `Terms of Service`
  String get termsOfService {
    return Intl.message(
      'Terms of Service',
      name: 'termsOfService',
      desc: '',
      args: [],
    );
  }

  /// ` and `
  String get and {
    return Intl.message(
      ' and ',
      name: 'and',
      desc: '',
      args: [],
    );
  }

  /// `Privacy Policy`
  String get privacyPolicy {
    return Intl.message(
      'Privacy Policy',
      name: 'privacyPolicy',
      desc: '',
      args: [],
    );
  }

  /// `Welcome to Foodie! By using our app, you agree to these terms:\n1. Use: You must be 13+ to use Foodie. Maintain your account's confidentiality.\n2. Content: You own your uploaded content but grant Foodie a license to use it.\n3. Prohibited Actions: No misuse, interference, or harmful content allowed.\n4. Liability: Foodie isn't liable for user content or third-party actions. By continuing to use Foodie, you accept these terms.`
  String get termsOfServiceContent {
    return Intl.message(
      'Welcome to Foodie! By using our app, you agree to these terms:\n1. Use: You must be 13+ to use Foodie. Maintain your account\'s confidentiality.\n2. Content: You own your uploaded content but grant Foodie a license to use it.\n3. Prohibited Actions: No misuse, interference, or harmful content allowed.\n4. Liability: Foodie isn\'t liable for user content or third-party actions. By continuing to use Foodie, you accept these terms.',
      name: 'termsOfServiceContent',
      desc: '',
      args: [],
    );
  }

  /// `At Foodie, we value your privacy. We collect personal information like your name and email to provide and improve our services. We do not share your information with third parties except to comply with the law or with your consent. We use reasonable security measures to protect your data. For questions, contact us at shifoashraf75@gmail.com.`
  String get privacyPolicyContent {
    return Intl.message(
      'At Foodie, we value your privacy. We collect personal information like your name and email to provide and improve our services. We do not share your information with third parties except to comply with the law or with your consent. We use reasonable security measures to protect your data. For questions, contact us at shifoashraf75@gmail.com.',
      name: 'privacyPolicyContent',
      desc: '',
      args: [],
    );
  }

  /// `We have sent you a verification email. Please verify your email address.`
  String get verificationEmailSent {
    return Intl.message(
      'We have sent you a verification email. Please verify your email address.',
      name: 'verificationEmailSent',
      desc: '',
      args: [],
    );
  }

  /// `Order Details`
  String get orderDetails {
    return Intl.message(
      'Order Details',
      name: 'orderDetails',
      desc: '',
      args: [],
    );
  }

  /// `Customize Order`
  String get customizeOrder {
    return Intl.message(
      'Customize Order',
      name: 'customizeOrder',
      desc: '',
      args: [],
    );
  }

  /// `There is no data to show right now`
  String get noDataToShow {
    return Intl.message(
      'There is no data to show right now',
      name: 'noDataToShow',
      desc: '',
      args: [],
    );
  }

  /// `Error`
  String get error {
    return Intl.message(
      'Error',
      name: 'error',
      desc: '',
      args: [],
    );
  }

  /// `Error loading categories`
  String get errorLoadingCategories {
    return Intl.message(
      'Error loading categories',
      name: 'errorLoadingCategories',
      desc: '',
      args: [],
    );
  }

  /// `Ingredients`
  String get ingredients {
    return Intl.message(
      'Ingredients',
      name: 'ingredients',
      desc: '',
      args: [],
    );
  }

  /// `EGP`
  String get egp {
    return Intl.message(
      'EGP',
      name: 'egp',
      desc: '',
      args: [],
    );
  }

  /// `Error loading food items`
  String get errorLoadingFoodItems {
    return Intl.message(
      'Error loading food items',
      name: 'errorLoadingFoodItems',
      desc: '',
      args: [],
    );
  }

  /// `No Food Items Found`
  String get noFoodItemsFound {
    return Intl.message(
      'No Food Items Found',
      name: 'noFoodItemsFound',
      desc: '',
      args: [],
    );
  }

  /// `Please login to add to cart`
  String get pleaseLoginToAddToCart {
    return Intl.message(
      'Please login to add to cart',
      name: 'pleaseLoginToAddToCart',
      desc: '',
      args: [],
    );
  }

  /// `Close`
  String get close {
    return Intl.message(
      'Close',
      name: 'close',
      desc: '',
      args: [],
    );
  }

  /// `Add to cart`
  String get addToCart {
    return Intl.message(
      'Add to cart',
      name: 'addToCart',
      desc: '',
      args: [],
    );
  }

  /// `Extra Ingredients`
  String get extraIngredients {
    return Intl.message(
      'Extra Ingredients',
      name: 'extraIngredients',
      desc: '',
      args: [],
    );
  }

  /// `Main Ingredients`
  String get mainIngredients {
    return Intl.message(
      'Main Ingredients',
      name: 'mainIngredients',
      desc: '',
      args: [],
    );
  }

  /// `Foodie`
  String get foodie {
    return Intl.message(
      'Foodie',
      name: 'foodie',
      desc: '',
      args: [],
    );
  }

  /// `Enter search query`
  String get enterSearchQuery {
    return Intl.message(
      'Enter search query',
      name: 'enterSearchQuery',
      desc: '',
      args: [],
    );
  }

  /// `Search`
  String get search {
    return Intl.message(
      'Search',
      name: 'search',
      desc: '',
      args: [],
    );
  }

  /// `Recent`
  String get recent {
    return Intl.message(
      'Recent',
      name: 'recent',
      desc: '',
      args: [],
    );
  }

  /// `CLEAR ALL`
  String get clearAll {
    return Intl.message(
      'CLEAR ALL',
      name: 'clearAll',
      desc: '',
      args: [],
    );
  }

  /// `Pizza`
  String get pizza {
    return Intl.message(
      'Pizza',
      name: 'pizza',
      desc: '',
      args: [],
    );
  }

  /// `The food item you are looking for could not be found.`
  String get noSearchResultsTitle {
    return Intl.message(
      'The food item you are looking for could not be found.',
      name: 'noSearchResultsTitle',
      desc: '',
      args: [],
    );
  }

  /// `We couldn't find any food with the name you searched for. Please try searching with different names.`
  String get noSearchResultsDescription {
    return Intl.message(
      'We couldn\'t find any food with the name you searched for. Please try searching with different names.',
      name: 'noSearchResultsDescription',
      desc: '',
      args: [],
    );
  }

  /// `Search For Your Favorite Food`
  String get emptySearchTitle {
    return Intl.message(
      'Search For Your Favorite Food',
      name: 'emptySearchTitle',
      desc: '',
      args: [],
    );
  }

  /// `Find what you want among hundreds of different dishes.`
  String get emptySearchDescription {
    return Intl.message(
      'Find what you want among hundreds of different dishes.',
      name: 'emptySearchDescription',
      desc: '',
      args: [],
    );
  }

  /// `Cart`
  String get cart {
    return Intl.message(
      'Cart',
      name: 'cart',
      desc: '',
      args: [],
    );
  }

  /// `You are not logged in`
  String get notLoggedInTitle {
    return Intl.message(
      'You are not logged in',
      name: 'notLoggedInTitle',
      desc: '',
      args: [],
    );
  }

  /// `Login to your account to start your order.`
  String get notLoggedInDescription {
    return Intl.message(
      'Login to your account to start your order.',
      name: 'notLoggedInDescription',
      desc: '',
      args: [],
    );
  }

  /// `Your cart is empty`
  String get emptyCartTitle {
    return Intl.message(
      'Your cart is empty',
      name: 'emptyCartTitle',
      desc: '',
      args: [],
    );
  }

  /// `Find what you want among hundreds of different dishes.`
  String get emptyCartDescription {
    return Intl.message(
      'Find what you want among hundreds of different dishes.',
      name: 'emptyCartDescription',
      desc: '',
      args: [],
    );
  }

  /// `Order Now`
  String get orderNow {
    return Intl.message(
      'Order Now',
      name: 'orderNow',
      desc: '',
      args: [],
    );
  }

  /// `Payment Gateway`
  String get paymentGateway {
    return Intl.message(
      'Payment Gateway',
      name: 'paymentGateway',
      desc: '',
      args: [],
    );
  }

  /// `Total`
  String get total {
    return Intl.message(
      'Total',
      name: 'total',
      desc: '',
      args: [],
    );
  }

  /// `Delivery`
  String get delivery {
    return Intl.message(
      'Delivery',
      name: 'delivery',
      desc: '',
      args: [],
    );
  }

  /// `Free`
  String get free {
    return Intl.message(
      'Free',
      name: 'free',
      desc: '',
      args: [],
    );
  }

  /// `CHECKOUT`
  String get checkout {
    return Intl.message(
      'CHECKOUT',
      name: 'checkout',
      desc: '',
      args: [],
    );
  }

  /// `No addresses found`
  String get noAddressesFound {
    return Intl.message(
      'No addresses found',
      name: 'noAddressesFound',
      desc: '',
      args: [],
    );
  }

  /// `Please add an address first`
  String get addAddressFirst {
    return Intl.message(
      'Please add an address first',
      name: 'addAddressFirst',
      desc: '',
      args: [],
    );
  }

  /// `OK`
  String get ok {
    return Intl.message(
      'OK',
      name: 'ok',
      desc: '',
      args: [],
    );
  }

  /// `Choose Address`
  String get chooseAddress {
    return Intl.message(
      'Choose Address',
      name: 'chooseAddress',
      desc: '',
      args: [],
    );
  }

  /// `CONFIRM`
  String get confirm {
    return Intl.message(
      'CONFIRM',
      name: 'confirm',
      desc: '',
      args: [],
    );
  }

  /// `Are you sure?`
  String get areYouSure {
    return Intl.message(
      'Are you sure?',
      name: 'areYouSure',
      desc: '',
      args: [],
    );
  }

  /// `Do you want to clear the cart?`
  String get clearCartConfirmation {
    return Intl.message(
      'Do you want to clear the cart?',
      name: 'clearCartConfirmation',
      desc: '',
      args: [],
    );
  }

  /// `Cancel`
  String get cancel {
    return Intl.message(
      'Cancel',
      name: 'cancel',
      desc: '',
      args: [],
    );
  }

  /// `Clear`
  String get clear {
    return Intl.message(
      'Clear',
      name: 'clear',
      desc: '',
      args: [],
    );
  }

  /// `Delete from cart`
  String get deleteFromCart {
    return Intl.message(
      'Delete from cart',
      name: 'deleteFromCart',
      desc: '',
      args: [],
    );
  }

  /// `Payment Success!`
  String get paymentSuccess {
    return Intl.message(
      'Payment Success!',
      name: 'paymentSuccess',
      desc: '',
      args: [],
    );
  }

  /// `Order ID:`
  String get orderId {
    return Intl.message(
      'Order ID:',
      name: 'orderId',
      desc: '',
      args: [],
    );
  }

  /// `Date:`
  String get date {
    return Intl.message(
      'Date:',
      name: 'date',
      desc: '',
      args: [],
    );
  }

  /// `Payment ID:`
  String get paymentId {
    return Intl.message(
      'Payment ID:',
      name: 'paymentId',
      desc: '',
      args: [],
    );
  }

  /// `Clear Cart`
  String get clearCart {
    return Intl.message(
      'Clear Cart',
      name: 'clearCart',
      desc: '',
      args: [],
    );
  }

  /// `Don’t worry!`
  String get dontWorry {
    return Intl.message(
      'Don’t worry!',
      name: 'dontWorry',
      desc: '',
      args: [],
    );
  }

  /// `You can easily reset your password`
  String get resetPasswordMessage {
    return Intl.message(
      'You can easily reset your password',
      name: 'resetPasswordMessage',
      desc: '',
      args: [],
    );
  }

  /// `Password reset link has been sent to your email`
  String get passwordResetLinkSent {
    return Intl.message(
      'Password reset link has been sent to your email',
      name: 'passwordResetLinkSent',
      desc: '',
      args: [],
    );
  }

  /// `RESET`
  String get resetButton {
    return Intl.message(
      'RESET',
      name: 'resetButton',
      desc: '',
      args: [],
    );
  }

  /// `Experience Convenient and Fast Food Delivery with Foodie`
  String get onboardingTitle {
    return Intl.message(
      'Experience Convenient and Fast Food Delivery with Foodie',
      name: 'onboardingTitle',
      desc: '',
      args: [],
    );
  }

  /// `Say goodbye to waiting in line or dealing with traffic, our food delivery app will make ordering and receiving your food a breeze.`
  String get onboardingDescription {
    return Intl.message(
      'Say goodbye to waiting in line or dealing with traffic, our food delivery app will make ordering and receiving your food a breeze.',
      name: 'onboardingDescription',
      desc: '',
      args: [],
    );
  }

  /// `Get Started`
  String get getStartedButton {
    return Intl.message(
      'Get Started',
      name: 'getStartedButton',
      desc: '',
      args: [],
    );
  }

  /// `Edit Address`
  String get editAddress {
    return Intl.message(
      'Edit Address',
      name: 'editAddress',
      desc: '',
      args: [],
    );
  }

  /// `Add Address`
  String get addAddress {
    return Intl.message(
      'Add Address',
      name: 'addAddress',
      desc: '',
      args: [],
    );
  }

  /// `Addresses`
  String get addresses {
    return Intl.message(
      'Addresses',
      name: 'addresses',
      desc: '',
      args: [],
    );
  }

  /// `Your address list is empty`
  String get emptyAddressListTitle {
    return Intl.message(
      'Your address list is empty',
      name: 'emptyAddressListTitle',
      desc: '',
      args: [],
    );
  }

  /// `You look like you haven't given any addresses yet.`
  String get emptyAddressListDescription {
    return Intl.message(
      'You look like you haven\'t given any addresses yet.',
      name: 'emptyAddressListDescription',
      desc: '',
      args: [],
    );
  }

  /// `Verify your new email!`
  String get verifyNewEmail {
    return Intl.message(
      'Verify your new email!',
      name: 'verifyNewEmail',
      desc: '',
      args: [],
    );
  }

  /// `Profile updated successfully`
  String get profileUpdatedSuccessfully {
    return Intl.message(
      'Profile updated successfully',
      name: 'profileUpdatedSuccessfully',
      desc: '',
      args: [],
    );
  }

  /// `Something went wrong`
  String get somethingWentWrong {
    return Intl.message(
      'Something went wrong',
      name: 'somethingWentWrong',
      desc: '',
      args: [],
    );
  }

  /// `You are not logged in`
  String get notLoggedInError {
    return Intl.message(
      'You are not logged in',
      name: 'notLoggedInError',
      desc: '',
      args: [],
    );
  }

  /// `Receipt Details`
  String get receiptDetails {
    return Intl.message(
      'Receipt Details',
      name: 'receiptDetails',
      desc: '',
      args: [],
    );
  }

  /// `Order Information`
  String get orderInformation {
    return Intl.message(
      'Order Information',
      name: 'orderInformation',
      desc: '',
      args: [],
    );
  }

  /// `Order Number`
  String get orderNumber {
    return Intl.message(
      'Order Number',
      name: 'orderNumber',
      desc: '',
      args: [],
    );
  }

  /// `Order Summary`
  String get orderSummary {
    return Intl.message(
      'Order Summary',
      name: 'orderSummary',
      desc: '',
      args: [],
    );
  }

  /// `Shipping`
  String get shipping {
    return Intl.message(
      'Shipping',
      name: 'shipping',
      desc: '',
      args: [],
    );
  }

  /// `Payment Information`
  String get paymentInformation {
    return Intl.message(
      'Payment Information',
      name: 'paymentInformation',
      desc: '',
      args: [],
    );
  }

  /// `Order Items`
  String get orderItems {
    return Intl.message(
      'Order Items',
      name: 'orderItems',
      desc: '',
      args: [],
    );
  }

  /// `Receipts`
  String get receipts {
    return Intl.message(
      'Receipts',
      name: 'receipts',
      desc: '',
      args: [],
    );
  }

  /// `No receipts found`
  String get noReceiptsFound {
    return Intl.message(
      'No receipts found',
      name: 'noReceiptsFound',
      desc: '',
      args: [],
    );
  }

  /// `Start your first order!`
  String get startFirstOrder {
    return Intl.message(
      'Start your first order!',
      name: 'startFirstOrder',
      desc: '',
      args: [],
    );
  }

  /// `Address Title`
  String get addressTitle {
    return Intl.message(
      'Address Title',
      name: 'addressTitle',
      desc: '',
      args: [],
    );
  }

  /// `Please enter your address title`
  String get pleaseEnterAddressTitle {
    return Intl.message(
      'Please enter your address title',
      name: 'pleaseEnterAddressTitle',
      desc: '',
      args: [],
    );
  }

  /// `Street`
  String get street {
    return Intl.message(
      'Street',
      name: 'street',
      desc: '',
      args: [],
    );
  }

  /// `Please enter your street`
  String get pleaseEnterStreet {
    return Intl.message(
      'Please enter your street',
      name: 'pleaseEnterStreet',
      desc: '',
      args: [],
    );
  }

  /// `Floor`
  String get floor {
    return Intl.message(
      'Floor',
      name: 'floor',
      desc: '',
      args: [],
    );
  }

  /// `Building`
  String get building {
    return Intl.message(
      'Building',
      name: 'building',
      desc: '',
      args: [],
    );
  }

  /// `Apartment`
  String get apartment {
    return Intl.message(
      'Apartment',
      name: 'apartment',
      desc: '',
      args: [],
    );
  }

  /// `UPDATE`
  String get update {
    return Intl.message(
      'UPDATE',
      name: 'update',
      desc: '',
      args: [],
    );
  }

  /// `Delete`
  String get delete {
    return Intl.message(
      'Delete',
      name: 'delete',
      desc: '',
      args: [],
    );
  }

  /// `Current Password`
  String get currentPassword {
    return Intl.message(
      'Current Password',
      name: 'currentPassword',
      desc: '',
      args: [],
    );
  }

  /// `Please enter your current password`
  String get pleaseEnterCurrentPassword {
    return Intl.message(
      'Please enter your current password',
      name: 'pleaseEnterCurrentPassword',
      desc: '',
      args: [],
    );
  }

  /// `Password must be at least 8 characters long and contain at least one uppercase letter, one lowercase letter, one number, and one special character.`
  String get passwordRequirements {
    return Intl.message(
      'Password must be at least 8 characters long and contain at least one uppercase letter, one lowercase letter, one number, and one special character.',
      name: 'passwordRequirements',
      desc: '',
      args: [],
    );
  }

  /// `Save Changes`
  String get saveChanges {
    return Intl.message(
      'Save Changes',
      name: 'saveChanges',
      desc: '',
      args: [],
    );
  }

  /// `Your order list is empty`
  String get emptyOrderListTitle {
    return Intl.message(
      'Your order list is empty',
      name: 'emptyOrderListTitle',
      desc: '',
      args: [],
    );
  }

  /// `You look like you haven't given any addresses yet.`
  String get emptyOrderListDescription {
    return Intl.message(
      'You look like you haven\'t given any addresses yet.',
      name: 'emptyOrderListDescription',
      desc: '',
      args: [],
    );
  }

  /// `Loading...`
  String get loading {
    return Intl.message(
      'Loading...',
      name: 'loading',
      desc: '',
      args: [],
    );
  }

  /// `Total Orders`
  String get totalOrders {
    return Intl.message(
      'Total Orders',
      name: 'totalOrders',
      desc: '',
      args: [],
    );
  }

  /// `Total Spent`
  String get totalSpent {
    return Intl.message(
      'Total Spent',
      name: 'totalSpent',
      desc: '',
      args: [],
    );
  }

  /// `Manage Profile`
  String get manageProfile {
    return Intl.message(
      'Manage Profile',
      name: 'manageProfile',
      desc: '',
      args: [],
    );
  }

  /// `Logout`
  String get logout {
    return Intl.message(
      'Logout',
      name: 'logout',
      desc: '',
      args: [],
    );
  }

  /// `Home`
  String get home {
    return Intl.message(
      'Home',
      name: 'home',
      desc: '',
      args: [],
    );
  }

  /// `Profile`
  String get profile {
    return Intl.message(
      'Profile',
      name: 'profile',
      desc: '',
      args: [],
    );
  }

  /// `No Network`
  String get noNetwork {
    return Intl.message(
      'No Network',
      name: 'noNetwork',
      desc: '',
      args: [],
    );
  }

  /// `Please check your network connection`
  String get checkNetworkConnection {
    return Intl.message(
      'Please check your network connection',
      name: 'checkNetworkConnection',
      desc: '',
      args: [],
    );
  }

  /// `At least one lowercase letter`
  String get atLeastOneLowercase {
    return Intl.message(
      'At least one lowercase letter',
      name: 'atLeastOneLowercase',
      desc: '',
      args: [],
    );
  }

  /// `At least one uppercase letter`
  String get atLeastOneUppercase {
    return Intl.message(
      'At least one uppercase letter',
      name: 'atLeastOneUppercase',
      desc: '',
      args: [],
    );
  }

  /// `At least one number`
  String get atLeastOneNumber {
    return Intl.message(
      'At least one number',
      name: 'atLeastOneNumber',
      desc: '',
      args: [],
    );
  }

  /// `At least one special character`
  String get atLeastOneSpecialCharacter {
    return Intl.message(
      'At least one special character',
      name: 'atLeastOneSpecialCharacter',
      desc: '',
      args: [],
    );
  }

  /// `At least 8 characters long`
  String get atLeast8Characters {
    return Intl.message(
      'At least 8 characters long',
      name: 'atLeast8Characters',
      desc: '',
      args: [],
    );
  }

  /// `Don't have an account?`
  String get dontHaveAnAccount {
    return Intl.message(
      'Don\'t have an account?',
      name: 'dontHaveAnAccount',
      desc: '',
      args: [],
    );
  }

  /// `Create One`
  String get createOne {
    return Intl.message(
      'Create One',
      name: 'createOne',
      desc: '',
      args: [],
    );
  }

  /// `change`
  String get change {
    return Intl.message(
      'change',
      name: 'change',
      desc: '',
      args: [],
    );
  }

  /// `Language`
  String get language {
    return Intl.message(
      'Language',
      name: 'language',
      desc: '',
      args: [],
    );
  }

  /// `Select language`
  String get selectLanguage {
    return Intl.message(
      'Select language',
      name: 'selectLanguage',
      desc: '',
      args: [],
    );
  }

  /// `What language do you prefer?`
  String get whatLanguageDoYouPrefer {
    return Intl.message(
      'What language do you prefer?',
      name: 'whatLanguageDoYouPrefer',
      desc: '',
      args: [],
    );
  }

  /// `English`
  String get english {
    return Intl.message(
      'English',
      name: 'english',
      desc: '',
      args: [],
    );
  }

  /// `Arabic`
  String get arabic {
    return Intl.message(
      'Arabic',
      name: 'arabic',
      desc: '',
      args: [],
    );
  }
}

class AppLocalizationDelegate extends LocalizationsDelegate<S> {
  const AppLocalizationDelegate();

  List<Locale> get supportedLocales {
    return const <Locale>[
      Locale.fromSubtags(languageCode: 'en'),
      Locale.fromSubtags(languageCode: 'ar'),
    ];
  }

  @override
  bool isSupported(Locale locale) => _isSupported(locale);
  @override
  Future<S> load(Locale locale) => S.load(locale);
  @override
  bool shouldReload(AppLocalizationDelegate old) => false;

  bool _isSupported(Locale locale) {
    for (var supportedLocale in supportedLocales) {
      if (supportedLocale.languageCode == locale.languageCode) {
        return true;
      }
    }
    return false;
  }
}
