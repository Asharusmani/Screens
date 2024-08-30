import 'package:flutter/material.dart';
import 'package:signup_screen/pages/register.dart';

class Mylogin extends StatefulWidget {
  const Mylogin({super.key});

  @override
  State<Mylogin> createState() => _MyloginState();
}
bool  changeButton = false;
class _MyloginState extends State<Mylogin> {
  @override
  Widget build(BuildContext context) {
    return Container(
      decoration: const BoxDecoration(
        image: DecorationImage(
          image: AssetImage('assets/images/login.png'),
          fit: BoxFit.cover,// Optionally set the fit property to cover the container
        ),
      ),
      child: Scaffold(
        backgroundColor: Colors.transparent,
        body: Stack(
            children: [
              Container(padding: EdgeInsets.only(left: 35,top: 130),
                child:
                Text("Welcome \n Back",style: TextStyle(
                    color: Colors.white,fontSize: 33 ),),),

              Container(padding: EdgeInsets.only(top: MediaQuery.of(context).size.height*0.4,right: 35,left: 35),
                child: SingleChildScrollView(
                  child: Column(
                      children: [
                        TextFormField(
                          decoration: const InputDecoration(
                            hintText: 'Enter the Email',hintStyle: TextStyle(color: Colors.black12),
                            label: Text('Email'),

                          ),
                        ),
                        SizedBox(
                          height: 7,
                        ),
                        TextFormField(obscureText: true,
                          decoration: const InputDecoration(
                            hintText: 'Enter the Password',hintStyle: TextStyle(color: Colors.black12),
                            label: Text('Password'),

                          ),),



                        SizedBox(
                          height: 40.0,
                        ),
                        // Material(
                        //   color: const Color(0xff4c505b),
                        //   borderRadius: BorderRadius.circular(changeButton ? 60: 10),
                        //     child:
                        //      AnimatedContainer(
                        //         duration: const Duration(seconds: 1),
                        //         width: changeButton ? 40 : 150,
                        //         height: 40,
                        //
                        //         alignment: Alignment.center,
                        //         child: changeButton ?  const Icon(
                        //           Icons.done,color: Colors.white,
                        //         )
                        //             : Text("Login", style: TextStyle(
                        //           fontSize: 15,
                        //           fontWeight: FontWeight.bold,
                        //           color: Colors.white,
                        //
                        //         ),),
                        //
                        //
                        //      ),
                        //
                        //  )
                        Row(
                          mainAxisAlignment: MainAxisAlignment.spaceBetween,
                          children: [
                            Text("Sign In", style: TextStyle(fontSize: 25,fontWeight: FontWeight.w500),),
                            CircleAvatar(
                              radius: 30,
                              backgroundColor: Color(0xff4c505b),
                              child: IconButton(color: Colors.white,
                                onPressed: () {
                                }, icon: const Icon(Icons.arrow_forward),),
                            )
                          ],
                        ),
                        SizedBox(
                          height: 20.0,
                        ),
                        Row(
                          mainAxisAlignment: MainAxisAlignment.spaceBetween,
                          children: [
                            TextButton(onPressed: () {
                              Navigator.pushNamed(context, 'register');
                            }, child: Text("Sign Up",style: TextStyle(
                              decoration: TextDecoration.underline,
                              fontSize: 14, color: Color(0xff4c505b),
                            ),)),
                            TextButton(onPressed: () {

                            }, child: Text("Forget Password",style: TextStyle(
                              decoration: TextDecoration.underline,
                              fontSize: 14, color: Color(0xff4c505b),
                            ),)),
                          ],
                        ),

                        SizedBox(
                          height: 25.0,
                        ),


                      ]),
                ),

              ),
            ]),
      ),
    );
  }
}
