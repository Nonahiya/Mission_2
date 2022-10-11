part of 'pages.dart';

class HomePage extends StatefulWidget {
  const HomePage({super.key});

  @override
  State<HomePage> createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
  IconData icon = Icons.favorite_border;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text("Character Detail"),
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
        width: double.infinity,
        height: double.infinity,
        child: Column(
          mainAxisAlignment: MainAxisAlignment.start,
          children: [
            const Flexible(
              flex: 9,
              child: Image(
                  image: AssetImage('assets/images/shirai1.png'),
                  fit: BoxFit.cover),
            ),
            const SizedBox(height: 10),
            Flexible(
              flex: 3,
              child: Row(
                mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                children: [
                  Container(
                      width: 115,
                      clipBehavior: Clip.hardEdge,
                      decoration: BoxDecoration(
                        borderRadius: BorderRadius.circular(5),
                      ),
                      child: const AspectRatio(
                        aspectRatio: 1 / 1,
                        child: Image(
                            image: AssetImage('assets/images/shirai2.png'),
                            fit: BoxFit.cover),
                      )),
                  Container(
                      width: 115,
                      clipBehavior: Clip.hardEdge,
                      decoration: BoxDecoration(
                        borderRadius: BorderRadius.circular(5),
                      ),
                      child: const AspectRatio(
                        aspectRatio: 1 / 1,
                        child: Image(
                            image: AssetImage('assets/images/shirai3.jpg'),
                            fit: BoxFit.cover),
                      )),
                  Container(
                      width: 115,
                      clipBehavior: Clip.hardEdge,
                      decoration: BoxDecoration(
                        borderRadius: BorderRadius.circular(5),
                      ),
                      child: const AspectRatio(
                        aspectRatio: 1 / 1,
                        child: Image(
                            image: AssetImage('assets/images/shirai4.png'),
                            fit: BoxFit.cover),
                      )),
                  Container(
                      width: 115,
                      clipBehavior: Clip.hardEdge,
                      decoration: BoxDecoration(
                        borderRadius: BorderRadius.circular(5),
                      ),
                      child: const AspectRatio(
                        aspectRatio: 1 / 1,
                        child: Image(
                            image: AssetImage('assets/images/shirai5.jpg'),
                            fit: BoxFit.cover),
                      )),
                ],
              ),
            ),
            const SizedBox(height: 15),
            const Flexible(
              flex: 1,
              child: Text(
                "Shirai Kuroko",
                style: TextStyle(fontSize: 24, fontWeight: FontWeight.bold),
              ),
            ),
            Flexible(
              flex: 5,
              child: Container(
                margin: const EdgeInsets.only(left: 7.5),
                child: ListView(
                    scrollDirection: Axis.vertical,
                    children: const <Widget>[
                      Flexible(
                        child: Text(
                            "Shirai Kuroko (白井 黒子 Shirai Kuroko) is a Level 4 esper and a student of Tokiwadai Middle School, as well as a member of Judgment. She can usually be found accompanying the third-ranked Level 5 esper Misaka Mikoto — her best friend, partner, and roommate. Though a minor character in Toaru Majutsu no Index, she gets a starring role alongside Mikoto in the Toaru Kagaku no Railgun sidestory."),
                      ),
                      SizedBox(height: 10),
                      Flexible(
                        child: Text(
                            "The name Shirai Kuroko is quite interesting because it contains both the meanings of 'white' and 'black'. The family name 'Shirai' (kanji: 白井) can be literally interpreted as 'white' plus '(water) well'; while the given name 'Kuroko' (kanji: 黒子) is more interesting: as a name, it can be interpreted as the stem 'Kuro-' (meaning 'black') plus the suffix '-ko' - which is commonly seen in Japanese female names (other examples include Saten Ruiko and Kongou Mitsuko); while not used as a name, the term 'kuroko' means stagehands in traditional Japanese theater, who dress all in black."),
                      ),
                      SizedBox(height: 10),
                      Flexible(
                        child: Text(
                            "Kuroko is a girl with tawny hair tied into two curly pigtails; the rest of her hair is left to hang as two rows of fringes divided in the middle. Her pigtails are tied in place by a red bow each. Her hair is naturally curly and as such needs to get a straight perm for it. With 152 cm she isn't very big and with a flat chest her appearance is the usual appearance of an average girl at her age. As per ruling of both Academy City and Judgment, she wears the uniform of Tokiwadai Middle School and the Judgment armband though the latter only during on duty. On her thighs, she secures a pair of black straps where she stores the metal spikes used to secure criminals."),
                      ),
                    ]),
              ),
            ),
          ],
        ),
      ),
      floatingActionButton: Padding(
        padding: const EdgeInsets.only(top: 100.0),
        child: FloatingActionButton(
          onPressed: () {
            setState(() {
              icon = icon == Icons.favorite
                  ? Icons.favorite_border
                  : Icons.favorite;
            });
          },
          tooltip: 'Favorite',
          backgroundColor: Colors.white,
          foregroundColor: const Color(0XFF79018C),
          child: Icon(icon),
        ),
      ),
      floatingActionButtonLocation: FloatingActionButtonLocation.endTop,
    );
  }
}
