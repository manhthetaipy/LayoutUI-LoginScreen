import 'package:flutter/material.dart';
import 'dart:ui';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({Key? key}) : super(key: key);

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Flutter Demo',
      theme: ThemeData(
        
        primarySwatch: Colors.blue,
      ),
      home: const MyHomePage(title: 'Flutter Demo Home Page'),
    );
  }
}

class MyHomePage extends StatefulWidget {
  const MyHomePage({Key? key, required this.title}) : super(key: key);

  
  final String title;

  @override
  State<MyHomePage> createState() => _MyHomePageState();
}

class _MyHomePageState extends State<MyHomePage> {
  int _counter = 0;

  void _incrementCounter() {
    setState(() {
      
      _counter++;
    });
  }

  @override
  Widget build(BuildContext context) {
    
    return Scaffold(
      appBar: AppBar(
        
        title: Text(widget.title),
      ),
          
      body: Stack(
        children: [
          const Image(
            fit: BoxFit.cover,
            width: double.infinity,
            height: double.infinity,
            image: NetworkImage('https://1.bp.blogspot.com/-r5rxoPmE4fU/XlsU83PnxkI/AAAAAAAAgKM/b1YN3sEVViwqGXQsNi-7hZ90tMajtlRiQCEwYBhgL/s1600/vach-nui-nham-thach-hinh-nen-thien-nhien-dep-cho-dien-thoai.jpg'),
          ),
           Container(
            child: BackdropFilter(
              filter: ImageFilter.blur(sigmaX: 5, sigmaY: 6),
              child: Container(
                decoration: BoxDecoration(
                  color: Colors.grey.shade100.withOpacity(0.2),
                )
              ),
            )
            ),
          Container(
            padding: const EdgeInsets.only(left: 30, right: 30),
            child: Center(
              child: Column(
                mainAxisAlignment: MainAxisAlignment.center,
                children: <Widget>[
                  const Text('FELLOW4U', style: TextStyle(fontSize: 60, color: Colors.white)),
                  const TextField(
                    decoration: InputDecoration(
                      suffixIcon: Icon(Icons.mail, size: 30, color: Colors.white),
                      border: OutlineInputBorder(),
                      labelText: "Email",
                      enabledBorder: OutlineInputBorder(
                          borderSide: BorderSide(color: Colors.white, width: 1.0),
                      ),
                      labelStyle: TextStyle(
                      color:  Colors.white, fontSize: 18,
                      
                    )
                    ),
                  ),
                  const SizedBox(height: 30),
                  const TextField(
                    obscureText: true,
                    decoration: InputDecoration(
                       suffixIcon: Icon(Icons.lock, size: 30, color: Colors.white),
                      border: OutlineInputBorder(),
                      labelText: "Password",
                      enabledBorder: OutlineInputBorder(
                          borderSide: BorderSide(color: Colors.white, width: 1.0),
                      ),
                      labelStyle: TextStyle(
                      color:  Colors.white, fontSize: 18
                    )
                    ),
                  ),
                  const SizedBox(height: 40),
                  SizedBox(
                    width: double.infinity,
                    height: 50, 
                    child: ElevatedButton(
                      onPressed: () {},
                      child: const Text('Sign in'),
                    ),
                  ),
                  const SizedBox(height: 30),
                  const Text('Forgot your password', style: TextStyle(color: Colors.white)),
                  const SizedBox(height: 30),
                  const Text('Sign up with email', style: TextStyle(color: Colors.white)),
                  const SizedBox(height: 30),
                  Center(
                   
                    child: Row(
                      crossAxisAlignment : CrossAxisAlignment.center,
                      mainAxisAlignment: MainAxisAlignment.center,
                      children: [
                         SizedBox(
                           width: 120,
                           height: 1,
                           child: const DecoratedBox(
                            decoration: const BoxDecoration(
                              color: Colors.white
                            ),
                          ),
                         ),
                        const Text('   Or login with   ', style: TextStyle(color: Colors.white)),
                        SizedBox(
                           width: 120,
                           height: 1,
                           child: const DecoratedBox(
                            decoration: const BoxDecoration(
                              color: Colors.white
                            ),
                          ),
                         ),
                      ],
                    ),
                  ),
                  const SizedBox(height: 30),
                  Row(
                    mainAxisAlignment: MainAxisAlignment.center,
                    crossAxisAlignment: CrossAxisAlignment.center,
                    children: <Widget>[
                      IconButton(
                        icon: const Icon(IconData(0xe255, fontFamily: 'MaterialIcons'), size: 50, color: Colors.white),
                        onPressed: () {},
                      ),
                      Padding(
                        padding: const EdgeInsets.only(left: 30, right: 30),
                        child: IconButton(
                          icon: const Icon(
                              Icons.ad_units_rounded,
                              size: 50, 
                              color: Colors.white
                          ),
                          onPressed: () {},
                        ),
                      ),
                      IconButton(
                        icon: const Icon(Icons.account_balance_sharp, size: 50, color: Colors.white),
                        onPressed: () {},
                      ),
                      Padding(
                        padding: const EdgeInsets.only(left: 30, right: 30),
                        child: IconButton(
                          icon: const Icon(
                              Icons.add_ic_call,
                              size: 50,
                              color: Colors.white
                          ),
                          onPressed: () {},
                        ),
                      ),
                    ],
                  )
                ],
              ),
            ),
          ),
        ],
      ),
    );
  }
}



/**
 * 
 * const Image(
                width: double.infinity,
                height: double.infinity,
                image: NetworkImage('https://images.unsplash.com/photo-1635623268187-d301a0337012?ixid=MnwxMjA3fDB8MHxwaG90by1wYWdlfHx8fGVufDB8fHx8&ixlib=rb-1.2.1&auto=format&fit=crop&w=464&q=80'),
              ),
 * 
 * ------------------
 * 
 * body: Container(
        padding: const EdgeInsets.only(left: 30, right: 30),
        child: Center(
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            children: <Widget>[
              const Text('FELLOW4U', style: TextStyle(fontSize: 60)),
              const TextField(
                decoration: InputDecoration(
                  suffixIcon: Icon(Icons.account_circle, size: 50),
                  border: OutlineInputBorder(),
                  labelText: "Email"
                ),
              ),
              const SizedBox(height: 30),
              const TextField(
                obscureText: true,
                decoration: InputDecoration(
                  border: OutlineInputBorder(),
                  labelText: "Password"
                ),
              ),
              const SizedBox(height: 40),
              SizedBox(
                width: double.infinity,
                height: 50, 
                child: ElevatedButton(
                  onPressed: () {},
                  child: const Text('Login with Email'),
                ),
              ),
              const SizedBox(height: 30),
              const Text('Forgot your password', style: TextStyle(color: Colors.blue)),
              const SizedBox(height: 30),
              const Text('Sign up with email', style: TextStyle(color: Colors.blue)),
              const SizedBox(height: 30),
              const Text('Or login with', style: TextStyle(color: Colors.blue)),
              const SizedBox(height: 30),
              Row(
                mainAxisAlignment: MainAxisAlignment.center,
                crossAxisAlignment: CrossAxisAlignment.center,
                children: <Widget>[
                  IconButton(
                    icon: const Icon(Icons.account_circle, size: 50),
                    onPressed: () {},
                  ),
                  Padding(
                    padding: const EdgeInsets.only(left: 30, right: 30),
                    child: IconButton(
                      icon: const Icon(
                          Icons.account_circle_outlined,
                          size: 50, 
                          color: Colors.blue
                      ),
                      onPressed: () {},
                    ),
                  ),
                  IconButton(
                    icon: const Icon(Icons.account_circle, size: 50),
                    onPressed: () {},
                  ),
                ],
              )
            ],
          ),
        ),
      ),
 * 
 */