import 'package:raj_resturant/constants/exports.dart';
import 'package:shared_preferences/shared_preferences.dart';

class CacheController {
  CacheController._() {
    init();
  }

  static final CacheController _instance = CacheController._();

  static CacheController get instance => _instance;

  late SharedPreferences _sharedPreferences;

  Future init() async {
    _sharedPreferences = await SharedPreferences.getInstance();
  }

  Future setToken(String token) async {
    await _sharedPreferences.setString('token', token);
  }

  String getToken() {
    return _sharedPreferences.getString('token') ?? '';
  }

  Future setBaseLink(String link) async {
    await _sharedPreferences.setString('base_link', link);
  }

  String getBaseLink() {
    return _sharedPreferences.getString('base_link') ?? 'https://wm.hudoor.net';
  }

  Future setAppKey(String appKey) async {
    await _sharedPreferences.setString('app_key', appKey);
  }

  String getAppKey() {
    return _sharedPreferences.getString('app_key') ?? '';
  }

  Future setUserId(String id) async {
    await _sharedPreferences.setString('userId', id);
  }

  String getUserId() {
    return _sharedPreferences.getString('userId') ?? "";
  }

  Future setEmployeeObject(String employee) async {
    await _sharedPreferences.setString('employee_object', employee);
  }

  String getEmployeeObject() {
    return _sharedPreferences.getString('employee_object') ?? "";
  }

  Future setLangCode(String langCode) async {
    await _sharedPreferences.setString('langCode', langCode);
  }

  String getLangCode() {
    return _sharedPreferences.getString('langCode') ??
        Get.deviceLocale!.languageCode;
  }

  Future setUserDisplayName(String userDisplayName) async {
    await _sharedPreferences.setString('userDisplayName', userDisplayName);
  }

  String getuserDisplayName() {
    return _sharedPreferences.getString('userDisplayName') ?? '';
  }

  Future setUserEmail(String email) async {
    await _sharedPreferences.setString('email', email);
  }

  String getUserEmail() {
    return _sharedPreferences.getString('email') ?? '';
  }

  Future setUserImage(String image) async {
    await _sharedPreferences.setString('user_img', image);
  }

  String getUserImage() {
    return _sharedPreferences.getString('user_img') ?? '';
  }

  Future setAvatarLink(String avatar) async {
    await _sharedPreferences.setString('avatar', avatar);
  }

  String getAvatarLink() {
    return _sharedPreferences.getString('avatar') ??
        "https://secure.gravatar.com/avatar/?s=96&d=mm&r=g";
  }

  Future setAuthed(bool authed) async {
    await _sharedPreferences.setBool('authed', authed);
  }

  bool authenticated() {
    return _sharedPreferences.getBool('authed') ?? false;
  }

  Future setIsAcceptAuthPermission(bool auth) async {
    await _sharedPreferences.setBool('accept_auth', auth);
  }

  bool getIsAcceptAuthPermission() {
    return _sharedPreferences.getBool('accept_auth') ?? false;
  }

  Future setIs24HourFormat(bool format) async {
    await _sharedPreferences.setBool('format_24', format);
  }

  bool getIs24HourFormat() {
    return _sharedPreferences.getBool('format_24') ?? false;
  }

  Future setLoginAuthed(bool authed) async {
    await _sharedPreferences.setBool('login_authed', authed);
  }

  bool loginAuthenticated() {
    return _sharedPreferences.getBool('login_authed') ?? false;
  }
}
