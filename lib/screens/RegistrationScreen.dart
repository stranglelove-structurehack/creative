import 'package:flutter/material.dart';

bool newUser = false;

class RegistrationScreen extends StatelessWidget {
  RegistrationScreen({Key? key}) : super(key: key);

  final _loginController = TextEditingController();
  final _phoneController = TextEditingController();
  final _passwordController = TextEditingController();
  final _passwordConfirmController = TextEditingController();

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: const Color(0xFF5E5BBB),
      body: SafeArea(
        child: Padding(
          padding: const EdgeInsets.symmetric(horizontal: 40),
          child: Column(
            children: [
              // Expanded(flex: 1, child: Container()),
              // Container(
              //   width: 87,
              //   height: 117,
              //   child: Image.asset('assets/icons/CreativeIcon.png'),
              // ),
              Expanded(flex: 1, child: Container()),
              Row(
                mainAxisAlignment: MainAxisAlignment.center,
                children: const [
                  Text(
                    'Регистрация',
                    style: TextStyle(
                      color: Colors.white,
                      fontSize: 32,
                    ),
                  ), // FormTe
                ],
              ),
              // SizedBox(height: 80),
              Expanded(child: Container()),
              _phoneTextField(),
              const SizedBox(height: 30),
              _loginTextField(),
              const SizedBox(height: 30),
              _passwordTextfield(),
              const SizedBox(height: 30),
              _passwordConfirmTextfield(),
              Expanded(flex: 1, child: Container()),
              _nextButton(context),
              Expanded(flex: 2, child: Container()),
            ],
          ),
        ),
      ),
    );
  }

  Widget _loginTextField() {
    return TextField(
      controller: _loginController,
      obscureText: false,
      decoration: InputDecoration(
        hintText: 'Логин',
        border: const OutlineInputBorder(
          borderRadius: BorderRadius.all(
            Radius.circular(10.0),
          ),
        ),
        filled: true, //<-- SEE HERE
        fillColor: Colors.white.withOpacity(0.50),
      ),
    );
  }

  Widget _passwordTextfield() {
    return TextField(
      controller: _passwordController,
      obscureText: true,
      decoration: InputDecoration(
        hintText: 'Пароль',
        border: const OutlineInputBorder(
          borderRadius: BorderRadius.all(
            Radius.circular(10.0),
          ),
        ),
        filled: true,
        fillColor: Colors.white.withOpacity(0.50),
      ),
    );
  }

  Widget _passwordConfirmTextfield() {
    return TextField(
      controller: _passwordController,
      obscureText: true,
      decoration: InputDecoration(
        hintText: 'Подтверждение пароля',
        border: const OutlineInputBorder(
          borderRadius: BorderRadius.all(
            Radius.circular(15.0),
          ),
        ),
        filled: true,
        fillColor: Colors.white.withOpacity(0.50),
      ),
    );
  }

  Widget _phoneTextField() {
    return TextField(
      controller: _phoneController,
      obscureText: false,
      decoration:  InputDecoration(
        hintText: 'Номер телефона',
        border: const OutlineInputBorder(
          borderRadius: BorderRadius.all(
            Radius.circular(10.0),
          ),
        ),
        filled: true,
        fillColor: Colors.white.withOpacity(0.50),
      ),
    );
  }

  Widget _nextButton(BuildContext context) {
    return InkWell(
      onTap: () {
        if (true) {
          Navigator.pushNamed(context, '/navigationBar');
        }
      },
      borderRadius: BorderRadius.circular(15),
      child: Container(
        alignment: Alignment.center,
        width: 220,
        height: 50,
        decoration: BoxDecoration(
            borderRadius: BorderRadius.circular(15),
            border: Border.all(
                color: Colors.white
            )
        ),
        child: const Text(
          'Зарегестрироваться',
          style: TextStyle(color: Colors.white),
        ),
      ),
    );
  }
}




