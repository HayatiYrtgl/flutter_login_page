import "package:flutter/material.dart";
import "components/text_field.dart";

// class for login page
class LoginPage extends StatelessWidget{

  // controller

  final user_name_controller = TextEditingController();
  final password_controller = TextEditingController();

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.grey[300],
      body: SafeArea(
        child: Center(
          child: Column(
            children: [
              // Sized box
              const SizedBox(height: 50,),
              // Logo
              const Icon(
                Icons.lock,
                size: 100,
              ),
              // Sized box
              const SizedBox(height: 50,),
              
              // welcome text
              Text("Tekrardan Hoşgeldiniz",
              style: TextStyle(color: Colors.grey[700]),),

              // Sized box
              const SizedBox(height: 25,),

              // username textfield
              UpFields(
                controller: user_name_controller,
                hintText: "Username",
                obsecureText: false,
              ),

              const SizedBox(height: 10,),

              UpFields(
                controller: password_controller,
                hintText: "Password",
                obsecureText: true,
              ),

              const SizedBox(height: 10,),

              const Padding(
                padding: EdgeInsets.symmetric(horizontal: 25.0),
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.end,
                  children: [
                    Text("Forgot Password ?"),
                  ],
                ),
              ),

              const SizedBox(height: 50,),

              ElevatedButton(
                  onPressed: (){},
                  child: const Text("LOGIN"),
                  
              ),

              const SizedBox(height: 25,),

              const Row(
                children: [
                  Expanded(child: Divider(thickness: 0.5,)),
                  Text("First Flutter Gui"),
                  Expanded(child: Divider(thickness: 0.5,)),
                ],
              ),


            ],
          ),
        ),
      ),
    );
    throw UnimplementedError();
  }
}
