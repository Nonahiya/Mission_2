part of 'pages.dart';

class FormPage extends StatefulWidget {
  const FormPage({Key? key}) : super(key: key);

  @override
  _FormPageState createState() => _FormPageState();
}

class _FormPageState extends State<FormPage> {
  @override
  void initState() {
    super.initState();
  }

  final _loginKey = GlobalKey<FormState>();
  final ctrlName = TextEditingController();
  final ctrlEmail = TextEditingController();
  // final ctrlPass = TextEditingController();
  final ctrlNumber = TextEditingController();
  final ctrlCity = TextEditingController();
  bool isHidden = true;

  @override
  void dispose() {
    ctrlName.dispose();
    ctrlEmail.dispose();
    // ctrlPass.dispose();
    ctrlNumber.dispose();
    ctrlCity.dispose();
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBar(
          title: const Text('Booking Form'),
          centerTitle: true,
          backgroundColor: const Color(0XFF79018C),
        ),
        body: Container(
            decoration: const BoxDecoration(
              gradient: LinearGradient(
                begin: Alignment.topCenter,
                end: Alignment.bottomCenter,
                colors: <Color>[
                  Color.fromARGB(255, 185, 108, 196),
                  Color.fromARGB(255, 255, 255, 255),
                ],
              ),
            ),
            padding: const EdgeInsets.fromLTRB(24, 16, 24, 16),
            child: Form(
              key: _loginKey,
              child: Column(children: [
                const SizedBox(height: 16),
                TextFormField(
                  decoration: const InputDecoration(
                    labelText: "Full Name",
                    labelStyle: TextStyle(color: Colors.black),
                    prefixIcon: Icon(Icons.person, color: Colors.black),
                    filled: true,
                    focusedBorder: OutlineInputBorder(
                      borderSide: BorderSide(
                        color: Color(0XFF79018C),
                      ),
                    ),
                    enabledBorder: OutlineInputBorder(
                      borderSide: BorderSide(
                        color: Colors.black,
                      ),
                    ),
                    errorBorder: OutlineInputBorder(
                      borderSide: BorderSide(
                        color: Colors.red,
                      ),
                    ),
                    focusedErrorBorder: OutlineInputBorder(
                      borderSide: BorderSide(
                        color: Colors.red,
                      ),
                    ),
                  ),
                  controller: ctrlName,
                  autovalidateMode: AutovalidateMode.onUserInteraction,
                  validator: (value) {
                    return value.toString().isEmpty
                        ? 'Full name must not be empty!'
                        : null;
                  },
                ),

                const SizedBox(height: 16),
                TextFormField(
                  keyboardType: TextInputType.emailAddress,
                  decoration: const InputDecoration(
                    labelText: "Email",
                    labelStyle: TextStyle(color: Colors.black),
                    prefixIcon: Icon(Icons.email, color: Colors.black),
                    filled: true,
                    focusedBorder: OutlineInputBorder(
                      borderSide: BorderSide(
                        color: Color(0XFF79018C),
                      ),
                    ),
                    enabledBorder: OutlineInputBorder(
                      borderSide: BorderSide(
                        color: Colors.black,
                      ),
                    ),
                    errorBorder: OutlineInputBorder(
                      borderSide: BorderSide(
                        color: Colors.red,
                      ),
                    ),
                    focusedErrorBorder: OutlineInputBorder(
                      borderSide: BorderSide(
                        color: Colors.red,
                      ),
                    ),
                  ),
                  controller: ctrlEmail,
                  autovalidateMode: AutovalidateMode.onUserInteraction,
                  validator: (value) {
                    return !EmailValidator.validate(value.toString())
                        ? 'Invalid email!'
                        : null;
                  },
                ),

                // const SizedBox(height: 16),
                // TextFormField(
                //   obscureText: isHidden,
                //   decoration: InputDecoration(
                //     labelText: "Password",
                //     suffixIcon: GestureDetector(
                //       onTap: () {
                //         setState(() {
                //           isHidden = !isHidden;
                //         });
                //       },
                //       child: Icon(
                //           isHidden ? Icons.visibility : Icons.visibility_off,
                //           color: Colors.black),
                //     ),
                //     labelStyle: const TextStyle(color: Colors.black),
                //     prefixIcon: const Icon(Icons.lock, color: Colors.black),
                //     filled: true,
                //     focusedBorder: const OutlineInputBorder(
                //       borderSide: BorderSide(
                //         color: Color(0XFF79018C),
                //       ),
                //     ),
                //     enabledBorder: const OutlineInputBorder(
                //       borderSide: BorderSide(
                //         color: Colors.black,
                //       ),
                //     ),
                //     errorBorder: const OutlineInputBorder(
                //       borderSide: BorderSide(
                //         color: Colors.red,
                //       ),
                //     ),
                //     focusedErrorBorder: const OutlineInputBorder(
                //       borderSide: BorderSide(
                //         color: Colors.red,
                //       ),
                //     ),
                //   ),
                //   controller: ctrlPass,
                //   autovalidateMode: AutovalidateMode.onUserInteraction,
                //   validator: (value) {
                //     return value.toString().length < 8
                //         ? 'Password must be at least 8 characters!'
                //         : null;
                //   },
                // ),

                const SizedBox(height: 16),
                TextFormField(
                  keyboardType: TextInputType.phone,
                  decoration: const InputDecoration(
                    labelText: "Phone Number",
                    labelStyle: TextStyle(color: Colors.black),
                    prefixIcon: Icon(Icons.phone_android, color: Colors.black),
                    filled: true,
                    focusedBorder: OutlineInputBorder(
                      borderSide: BorderSide(
                        color: Color(0XFF79018C),
                      ),
                    ),
                    enabledBorder: OutlineInputBorder(
                      borderSide: BorderSide(
                        color: Colors.black,
                      ),
                    ),
                    errorBorder: OutlineInputBorder(
                      borderSide: BorderSide(
                        color: Colors.red,
                      ),
                    ),
                    focusedErrorBorder: OutlineInputBorder(
                      borderSide: BorderSide(
                        color: Colors.red,
                      ),
                    ),
                  ),
                  controller: ctrlNumber,
                  autovalidateMode: AutovalidateMode.onUserInteraction,
                  validator: (value) {
                    return value.toString().length != 10
                        ? 'Phone number must be 10 characters!'
                        : null;
                  },
                ),
                const SizedBox(height: 16),
                TextFormField(
                  decoration: const InputDecoration(
                    labelText: "City",
                    labelStyle: TextStyle(color: Colors.black),
                    prefixIcon: Icon(Icons.location_city, color: Colors.black),
                    filled: true,
                    focusedBorder: OutlineInputBorder(
                      borderSide: BorderSide(
                        color: Color(0XFF79018C),
                      ),
                    ),
                    enabledBorder: OutlineInputBorder(
                      borderSide: BorderSide(
                        color: Colors.black,
                      ),
                    ),
                    errorBorder: OutlineInputBorder(
                      borderSide: BorderSide(
                        color: Colors.red,
                      ),
                    ),
                    focusedErrorBorder: OutlineInputBorder(
                      borderSide: BorderSide(
                        color: Colors.red,
                      ),
                    ),
                  ),
                  controller: ctrlCity,
                  autovalidateMode: AutovalidateMode.onUserInteraction,
                  validator: (value) {
                    return value.toString().length < 2
                        ? 'City must be at least 2 characters!'
                        : null;
                  },
                ),
                const SizedBox(height: 16),
                ElevatedButton.icon(
                    style: ElevatedButton.styleFrom(
                        shape: const StadiumBorder(),
                        backgroundColor: const Color(0XFF79018C)),
                    onPressed: () {
                      if (_loginKey.currentState!.validate()) {
                        showDialog(
                          context: context,
                          builder: (context) => AlertDialog(
                            title: const Text(
                              'Booking Confirmation',
                              style: TextStyle(fontWeight: FontWeight.bold),
                            ),
                            content: Text(
                              // 'Email: ${ctrlEmail.text}\nPass: ${ctrlPass.text}\nPhone Number: ${ctrlNumber.text}\nCity: ${ctrlCity.text}',
                              'Name: ${ctrlName.text}\nEmail: ${ctrlEmail.text}\nPhone: ${ctrlNumber.text}\nCity: ${ctrlCity.text}',
                            ),
                            actions: [
                              TextButton(
                                  style: TextButton.styleFrom(
                                      backgroundColor: Colors.white,
                                      foregroundColor: const Color(0XFF79018C)),
                                  onPressed: () {
                                    Navigator.pop(context);
                                  },
                                  child: const Text('Back')),
                              TextButton(
                                  style: TextButton.styleFrom(
                                      backgroundColor: Colors.white,
                                      foregroundColor: const Color(0XFF79018C)),
                                  onPressed: () {
                                    Navigator.pushAndRemoveUntil<dynamic>(
                                        context,
                                        MaterialPageRoute<dynamic>(
                                            builder: (conrext) =>
                                                const HomePage()),
                                        (route) => false);
                                  },
                                  child: const Text('Continue'))
                            ],
                          ),
                        );
                      } else {
                        showDialog(
                          context: context,
                          builder: (context) => AlertDialog(
                            title: const Text(
                              'Booking Failed',
                              style: TextStyle(fontWeight: FontWeight.bold),
                            ),
                            content: const Text('Please fill all the fields!'),
                            actions: [
                              TextButton(
                                  style: TextButton.styleFrom(
                                      backgroundColor: Colors.white,
                                      foregroundColor: const Color(0XFF79018C)),
                                  onPressed: () {
                                    Navigator.pop(context);
                                  },
                                  child: const Text('Try Again'))
                            ],
                          ),
                        );
                      }
                    },
                    icon: const Icon(Icons.save),
                    label: const Text("Book Now")),
              ]),
            )));
  }
}
