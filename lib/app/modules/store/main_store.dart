import 'package:mobx/mobx.dart';
import 'package:shared_preferences/shared_preferences.dart';

part 'main_store.g.dart';

class MainStore = _MainStore with _$MainStore;

abstract class _MainStore with Store {
  @observable
  String nome = "kkk";
  @observable
  String agencia = "";
  // @observable
  // String nome = "";
  // @observable
  // String deviceId = "";
  // @observable
  // String documento = "";
  // @observable
  // int tipoDocumento = 0;
  // @observable
  // String numeroCelular = "";
  // @observable
  // var saldo;
  // @observable
  // int totalChaves = 0;
  // @observable
  // int totalChavesAtivas = 0;
  // @observable
  // Chave chaveFavorita;
  // @observable
  // bool pix_termos_iniciais = false;
  // @observable
  // bool visible = false;
  // @observable
  // bool reAuth = false;

  // bool isvisible() => visible;

  // @action
  // Future<void> setDataAccess(String pConta, String pAgencia, String pNome,
  //     String pDocumento, double pSaldo) async {
  //   SharedPreferences prefs = await SharedPreferences.getInstance();
  //   visible = await prefs.containsKey('visible')
  //       ? await prefs.getBool('visible')
  //       : false;
  //   conta = pConta;
  //   agencia = pAgencia;
  //   nome = pNome;
  //   documento = pDocumento;
  //   tipoDocumento = documento.length == 11 ? 1 : 0;
  //   saldo = pSaldo;
  // }

  // @action
  // void setNumeroCelular(String pNumero) {
  //   numeroCelular = pNumero;
  // }

  // @action
  // Future<void> storeDevice(String device) async {

  //   SharedPreferences prefs = await SharedPreferences.getInstance();
  //   prefs.setString('deviceId', device);
  //   deviceId = device;
  // }

  // @action
  // Future<void> setVisible(visible) async {
  //   visible = visible;
  //   SharedPreferences prefs = await SharedPreferences.getInstance();
  //   prefs.setBool('visible', visible);
  // }

  // @action
  // Future<void> setDataChaves(int totalChave, Chave favorita, int ativas) {
  //   totalChaves = totalChave;
  //   chaveFavorita = favorita;
  //   totalChavesAtivas = ativas;
  // }

  // @action
  // Future<void> setTotalChaves(int totalChave) {
  //   totalChaves = totalChave;
  // }
  // @action
  // Future<void> setTotalChavesAtivas(int totalAtivas) {
  //   totalChavesAtivas = totalAtivas;
  // }

  // @action
  // Future<void> setChaveFavorita(Chave favorita){
  //   chaveFavorita = favorita;
  // }

  // @action
  // Future<void> setLogOut() async {
  //   var prefs = await SharedPreferences.getInstance();
  //   conta = "";
  //   agencia = "";
  //   nome = "";
  //   documento = "";
  //   tipoDocumento = 0;
  //   numeroCelular = "";
  //   saldo = 0;
  //   totalChaves = 0;
  //   totalChavesAtivas = 0;
  //   pix_termos_iniciais = false;
  //   chaveFavorita = null;
  //   await prefs.clear();
  // }

  // @action
  // void termos() {
  //   pix_termos_iniciais = true;
  // }

  // @action
  // void setReAuth() {
  //   reAuth = true;
  // }

  // @action
  // void setNotReAuth() {
  //   reAuth = false;
  // }
  // @action
  // Future<void> setSaldo(double pSaldo) async {
  //   saldo = pSaldo;
  // }
}