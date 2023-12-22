import 'package:flutter/material.dart';
import 'package:flutter_svg/svg.dart';
import 'package:netcart_flutter/view_model/utiles/assests.dart';

import '../../../view_model/utiles/colors.dart';

class LogInScreen extends StatefulWidget {
   LogInScreen({super.key});

  @override
  State<LogInScreen> createState() => _LogInScreenState();
}

class _LogInScreenState extends State<LogInScreen> {
  @override
  String pattern = r"(?:[a-z0-9!#$%&'*+/=?^_`{|}~-]+(?:\.[a-z0-9!#$%&'"
      r'*+/=?^_`{|}~-]+)*|"(?:[\x01-\x08\x0b\x0c\x0e-\x1f\x21\x23-\x5b\x5d-'
      r'\x7f]|\\[\x01-\x09\x0b\x0c\x0e-\x7f])*")@(?:(?:[a-z0-9](?:[a-z0-9-]*'
      r'[a-z0-9])?\.)+[a-z0-9](?:[a-z0-9-]*[a-z0-9])?|\[(?:(?:(2(5[0-5]|[0-4]'
      r'[0-9])|1[0-9][0-9]|[1-9]?[0-9]))\.){3}(?:(2(5[0-5]|[0-4][0-9])|1[0-9]'
      r'[0-9]|[1-9]?[0-9])|[a-z0-9-]*[a-z0-9]:(?:[\x01-\x08\x0b\x0c\x0e-\x1f\'
      r'x21-\x5a\x53-\x7f]|\\[\x01-\x09\x0b\x0c\x0e-\x7f])+)\])';

  GlobalKey<FormState> formKey = GlobalKey<FormState>();

  TextEditingController emailController = TextEditingController();

  TextEditingController passWord = TextEditingController();

  bool obscure = true;

  Widget build(BuildContext context) {
    return Scaffold(
      resizeToAvoidBottomInset: false,
      body: SafeArea(
        child: Padding(
          padding: const EdgeInsets.all(25.0),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Center(child: SvgPicture.asset(Appassest.carrot,height: 80,width: 80,)),
              SizedBox(height: 90,),
              Text('Loging',style: TextStyle(color: AppColors.black,fontSize: 30),),
              SizedBox(height: 5,),
              Text('Enter your emails and password',style: TextStyle(color: AppColors.grey,fontSize: 15,fontWeight: FontWeight.bold)),
              SizedBox(height: 35,),
              Text('Email',style: TextStyle(color: AppColors.grey,fontSize: 15,fontWeight: FontWeight.bold)),
              SizedBox(height: 5,),
              TextFormField(
                controller: emailController,
                decoration: InputDecoration(
                    hintText: 'Email',
                  focusColor: AppColors.white,
                  fillColor:AppColors.white ,
                  hoverColor: AppColors.white
                ),
                validator: (value) {
                  if ((value ?? '').isEmpty) {
                    return 'Please , Entre your Email';
                  } else if (!RegExp(pattern)
                      .hasMatch(value ?? '')) {
                    return 'Please Entre a valid email';
                  }
                  return null;
                },
                autovalidateMode: AutovalidateMode.onUserInteraction,
              ),
              SizedBox(height: 25,),
              Text('Password',style: TextStyle(color: AppColors.grey,fontSize: 15,fontWeight: FontWeight.bold)),
              SizedBox(height: 5,),
              TextFormField(
                controller: passWord,
                decoration: InputDecoration(
                    hintText: 'Password',
                    suffixIcon: IconButton(onPressed: () {
                      setState(() {
                        obscure = !obscure;
                      });
                    },
                        icon: Icon(
                          obscure ? Icons.visibility : Icons.visibility_off,
                          color: obscure ? AppColors.ofGrey2 : AppColors.grey,)
                    )
                ),
                obscureText: obscure,
                obscuringCharacter: '.',
                autovalidateMode: AutovalidateMode.onUserInteraction,
                validator: (value) {
                  if ((value ?? '').isEmpty) {
                    return 'please, entre your password';
                  } else if (!RegExp(r'[A-Z]').hasMatch(value ?? '')) {
                    return 'Password must contain at least one capital letter';
                  } else if (!RegExp(r'[0-9]').hasMatch(value ?? '')) {
                    return 'Password must contain at least one number';
                  } else
                  if (!RegExp(r'[!@#$%^&*(),.?":{}|<>]').hasMatch(value ?? '')) {
                    return 'Password must contain at least one special character';
                  } else if ((value?.length ?? 0) < 8) {
                    return 'Password Can\'t be less than 8 charachters';
                  }
                  return null;
                },
              ),
              Align(
                alignment: AlignmentDirectional.centerEnd,
                child: TextButton(
                    onPressed: () {}
                    ,
                    child: Text('Forgot Password ?', style: TextStyle(
                        color: AppColors.black,
                        fontSize: 15
                    ),
                    )
                ),
              ),
              SizedBox(height: 10,),
              SizedBox(
                width: 350,
                height: 70,
                child: ElevatedButton(
                  onPressed: () {},
                  child:
                  Text('Log In',
                    style: TextStyle(color: AppColors.white, fontSize: 20),),
                  style: ElevatedButton.styleFrom(
                    shape: RoundedRectangleBorder(
                        borderRadius: BorderRadius.circular(20)
                    ),
                    backgroundColor: AppColors.green,
                  ),
                ),
              ),
              SizedBox(height: 10,),
              Row(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  Text('Don\'t have an account ?',
                    style: TextStyle(color: AppColors.black, fontSize: 20,fontWeight: FontWeight.bold),),
                  TextButton(
                      onPressed: () {}
                      ,
                      child: Text('Sign up', style: TextStyle(
                          color: AppColors.green,
                          fontSize: 20,
                          fontWeight: FontWeight.bold),)
                  ),
                ],
              )
            ],
          ),
        ),
      ),
    );
  }
}

