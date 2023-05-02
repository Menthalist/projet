import 'package:ams_mobile/piedpage/home.dart';
import 'package:flutter/material.dart';
import 'package:flutter/services.dart';

class login extends StatefulWidget {
  const login({super.key});

  @override
  State<login> createState() => _loginState();
}

class _loginState extends State<login> {
  bool _password = false;
  @override
  Widget build(BuildContext context) {
    SystemChrome.setPreferredOrientations([
      DeviceOrientation.portraitUp,
      DeviceOrientation.portraitDown,
    ]);
    return Scaffold(
        body: ListView(
      children: [
        Align(
          alignment: Alignment.center,
          child: Container(
              margin: const EdgeInsets.only(top: 97),
              height: MediaQuery.of(context).size.height * 0.1,
              width: MediaQuery.of(context).size.width * 0.2,
              decoration: const BoxDecoration(
                image: DecorationImage(
                    image: AssetImage("assets/img/logo.png"), fit: BoxFit.fill),
              )),
        ),
        const SizedBox(
          height: 27,
        ),
        const Text(
          "CONNEXION",
          style: TextStyle(
            fontWeight: FontWeight.w900,
            fontSize: 20,
          ),
          textAlign: TextAlign.center,
        ),
        const SizedBox(
          height: 20,
        ),
        const Text(
          "Connectez vous et réaliser des etats de lieux",
          style: TextStyle(
            fontWeight: FontWeight.w600,
            fontSize: 15,
          ),
          textAlign: TextAlign.center,
        ),
        const SizedBox(
          height: 40,
        ),
        Container(
            margin: const EdgeInsets.only(left: 11),
            child: const Text(
              "E-mail addresse",
              style: TextStyle(fontSize: 14, fontWeight: FontWeight.w600),
            )),
        Container(
          height: MediaQuery.of(context).size.height * 0.06,
          width: MediaQuery.of(context).size.width * 0.08,
          margin: const EdgeInsets.only(left: 11, right: 11, top: 5),
          decoration: BoxDecoration(
            borderRadius: BorderRadius.circular(4),
            border: Border.all(
                width: 1.0, color: const Color.fromARGB(218, 219, 219, 215)),
          ),
          child: TextFormField(
            decoration: InputDecoration(
              border: InputBorder.none,
              hintText: "noadjedavid@gmail.com",
              contentPadding: const EdgeInsets.only(left: 9, top: 15),
              hintStyle:
                  const TextStyle(color: Colors.black, fontWeight: FontWeight.bold),
              suffixIcon: Icon(
                Icons.mail,
                color: Colors.grey.withOpacity(1),
              ),
            ),
          ),
        ),
        const SizedBox(
          height: 20,
        ),
        Container(
            margin: const EdgeInsets.only(left: 11, top: 10),
            child: const Text(
              "Mot de passe",
              style: TextStyle(fontSize: 14, fontWeight: FontWeight.w600),
            )),
        Container(
          height: MediaQuery.of(context).size.height * 0.06,
          width: MediaQuery.of(context).size.width * 0.08,
          margin: const EdgeInsets.only(left: 11, right: 11, top: 8),
          decoration: BoxDecoration(
            borderRadius: BorderRadius.circular(4),
            border: Border.all(
                width: 1.0, color: const Color.fromARGB(218, 219, 219, 215)),
          ),
          child: TextFormField(
            obscureText: _password,
            decoration: InputDecoration(
              border: InputBorder.none,
              hintText: ".........",
              hintStyle:
                  const TextStyle(color: Colors.black, fontWeight: FontWeight.bold),
              contentPadding: const EdgeInsets.only(left: 9, top: 15),
              suffixIcon: IconButton(
                  icon: Icon(
                      !_password ? Icons.visibility : Icons.visibility_off,
                      color: Colors.grey.withOpacity(1)),
                  onPressed: () {
                    setState(() {
                      _password = !_password;
                    });
                  }),
            ),
          ),
        ),
        const SizedBox(
          height: 30,
        ),
        InkWell(
          child: Container(
            margin: const EdgeInsets.only(left: 11, right: 11, top: 5),
            height: MediaQuery.of(context).size.height * 0.06,
            width: MediaQuery.of(context).size.width * 0.08,
            decoration: BoxDecoration(
              color: const Color(0xFF333333),
              borderRadius: BorderRadius.circular(6),
            ),
            child: const Align(
                alignment: Alignment.center,
                child: Text(
                  "SE CONNECTER",
                  style: TextStyle(color: Colors.white, fontSize: 16),
                )),
          ),
          onTap: () {
            Navigator.push(
                context, MaterialPageRoute(builder: (context) => const home()));
          },
        ),
        const SizedBox(
          height: 20,
        ),
        Align(
            alignment: Alignment.center,
            child: InkWell(
              child: const Text(
                "mot de passe oublié",
                style: TextStyle(
                    fontWeight: FontWeight.w600,
                    fontSize: 14,
                    decoration: TextDecoration.underline),
              ),
              onTap: () {
                Navigator.push(
                    context, MaterialPageRoute(builder: (context) => const home()));
              },
            )),
        const SizedBox(
          height: 170,
        ),
        const Align(
          alignment: Alignment.center,
          child: Text(
            "AMEXPERT",
            style: TextStyle(
              fontWeight: FontWeight.w900,
              fontSize: 13,
            ),
          ),
        ),
      ],
    ));
  }
}
