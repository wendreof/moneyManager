import 'package:flutter/material.dart';
import 'package:flutter_modular/flutter_modular.dart';
import 'package:moneyManager/app/modules/store/main_store.dart';
import 'package:provider/provider.dart';

class StepperPage extends StatefulWidget {
  @override
  _StepperPageState createState() => _StepperPageState();
}

class _StepperPageState extends State<StepperPage> {
  var _store;
  final TextEditingController _name = TextEditingController();
  final TextEditingController _email = TextEditingController();
  final TextEditingController _rendaMensal = TextEditingController();
  final TextEditingController _demaisRendas = TextEditingController();
  final TextEditingController _conta1 = TextEditingController();
  final TextEditingController _conta2 = TextEditingController();

  @override
  void initState() {
    // TODO: implement initState
    super.initState();
  }

  int _currentStep = 0;
  StepperType stepperType = StepperType.vertical;

  @override
  Widget build(BuildContext context) {
    _store = Provider.of<MainStore>(context);
    _store.nome = "Nome provider";

    _name.text = "wendreof";
    _email.text = "wendreo@outlook.com";
    _rendaMensal.text = "2056";
    _demaisRendas.text = "0";
    _conta1.text = "89";
    _conta2.text = "100";

    return Scaffold(
      appBar: AppBar(
        automaticallyImplyLeading: false,
        title: Text('Gerenciar Financeiro'),
        centerTitle: true,
      ),
      body: Container(
        child: Column(
          children: [
            Expanded(
              child: Stepper(
                type: stepperType,
                physics: ScrollPhysics(),
                currentStep: _currentStep,
                onStepTapped: (step) => tapped(step),
                onStepContinue: continued,
                onStepCancel: cancel,
                steps: <Step>[
                  Step(
                    title: new Text('Dados Pessoais'),
                    content: Column(
                      children: <Widget>[
                        TextFormField(
                          controller: _name,
                          decoration: InputDecoration(labelText: 'Nome'),
                        ),
                        TextFormField(
                          controller: _email,
                          decoration: InputDecoration(labelText: 'E-mail'),
                        ),
                      ],
                    ),
                    isActive: _currentStep >= 0,
                    state: _currentStep >= 0
                        ? StepState.complete
                        : StepState.disabled,
                  ),
                  Step(
                    title: new Text('Entrada'),
                    content: Column(
                      children: <Widget>[
                        TextFormField(
                          controller: _rendaMensal,
                          keyboardType:
                              TextInputType.numberWithOptions(decimal: true),
                          decoration:
                              InputDecoration(labelText: 'Renda Mensal'),
                        ),
                        TextFormField(
                          controller: _demaisRendas,
                          keyboardType:
                              TextInputType.numberWithOptions(decimal: true),
                          decoration:
                              InputDecoration(labelText: 'Demais Rendas'),
                        ),
                      ],
                    ),
                    isActive: _currentStep >= 0,
                    state: _currentStep >= 1
                        ? StepState.complete
                        : StepState.disabled,
                  ),
                  Step(
                    title: new Text('Contas'),
                    content: Column(
                      children: <Widget>[
                        TextFormField(
                          controller: _conta1,
                          decoration:
                              InputDecoration(labelText: 'Conta de Internet'),
                        ),
                        TextFormField(
                          controller: _conta2,
                          decoration:
                              InputDecoration(labelText: 'Conta de Luz'),
                        ),
                      ],
                    ),
                    isActive: _currentStep >= 0,
                    state: _currentStep >= 2
                        ? StepState.complete
                        : StepState.disabled,
                  ),
                ],
              ),
            ),
          ],
        ),
      ),
      floatingActionButton: FloatingActionButton(
        child: Icon(Icons.list),
        onPressed: switchStepsType,
      ),
    );
  }

  switchStepsType() {
    setState(() => stepperType == StepperType.vertical
        ? stepperType = StepperType.horizontal
        : stepperType = StepperType.vertical);
  }

  tapped(int step) {
    setState(() {
      _currentStep = step;
    });
  }

  continued() {
    if (_currentStep == 2) {
      _store.nome = _name.text;
      _store.email = _email.text;
      _store.rendaMensal = double.tryParse(_rendaMensal.text);
      _store.demaisRendas = double.tryParse(_demaisRendas.text);
      _store.conta1 = double.tryParse(_conta1.text);
      _store.conta2 = double.tryParse(_conta2.text);
      _store.setSaldo();
      Modular.to.pushReplacementNamed("/home");
    }
    _currentStep < 2 ? setState(() => _currentStep += 1) : null;
  }

  cancel() {
    _currentStep > 0 ? setState(() => _currentStep -= 1) : null;
  }
}
