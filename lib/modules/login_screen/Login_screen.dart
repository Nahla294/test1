import 'package:course_app/shared/components%20/components.dart';
import 'package:flutter/material.dart';

class LoginScreen extends StatefulWidget {
  //const ({Key? key}) : super(key: key);
  @override
  State<LoginScreen> createState() => _LoginScreenState();
}

class _LoginScreenState extends State<LoginScreen> {
var EmailController= TextEditingController();

var PasswordController= TextEditingController();

var FormKey = GlobalKey<FormState>();

bool isPassword= true;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
    appBar: AppBar(),
    body: Padding(
      padding: const EdgeInsets.all(20.0),
      child: Center(
        child: SingleChildScrollView(
          child: Form(
            key: FormKey,
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.center,
              //mainAxisAlignment: MainAxisAlignment.center,
              children: [
                Text(
                  'Login',
                  style: TextStyle(
                    fontSize: 35.0,
                    fontWeight: FontWeight.bold,

                  ),
                ),
                SizedBox(
                  height: 30.0,
                ),
               DefaultForm(controller: EmailController,
                   type: TextInputType.emailAddress,
                   label: 'E-mail',
                   validate: (String value){
                       if (value.isEmpty)
                       {
                         return 'Please enter your email';
                       }
                       return null;
                   },
                   prefix: Icons.email,
               ),
                SizedBox(
                  height: 15.0,
                ),
                DefaultForm(
                  controller: PasswordController,
                    type: TextInputType.visiblePassword,
                    label: 'Password',
                    validate: (String value){
                      if (value.isEmpty)
                      {
                        return 'Please enter your password';
                      }
                      return null;
                },
                    prefix: Icons.lock,
                  suffix: isPassword? Icons.visibility : Icons.visibility_off ,
                  isPassword: isPassword,
                  suffixPressed: ()
                  {
                    setState(() {
                      isPassword =! isPassword;
                    });
                  }

                ),
                SizedBox(
                  height: 25.0,
                ),
                DefaultButton(
                    text: 'login',
                    function: ()
                    {
                      if(FormKey.currentState.validate())
                      {
                        print(EmailController.text);
                        print(PasswordController.text);
                      }
                    },
                  background: Colors.red,
                  radius: 10.0,
                    ),
                SizedBox(
                  height: 10.0,
                ),
                Row(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: [
                    Text(
                      'Don\'t have an account?'
                    ),
                    TextButton(onPressed: (){

                    },
                      child: Text(
                      'Register Now'
                    ),),
                  ],
                ),
              ],
            ),

          ),
        ),
      ),
    ),
    );
  }
}
