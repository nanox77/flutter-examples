import 'package:flutter/material.dart';

class FinanceAppBar extends StatelessWidget {
  static const kAppbarColor = Color.fromARGB(255, 214, 226, 254);

  const FinanceAppBar({
    Key? key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      decoration: const BoxDecoration(
        image: DecorationImage(
          image: AssetImage('assets/background.jpeg'),
          fit: BoxFit.cover,
        ),
        borderRadius: BorderRadius.vertical(
          bottom: Radius.circular(40),
        ),
      ),
      child: Container(
        margin: const EdgeInsets.symmetric(horizontal: 20, vertical: 20),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                const CircleAvatar(
                  radius: 30,
                  backgroundImage: NetworkImage(
                      'https://media-exp1.licdn.com/dms/image/C5603AQHL-Dk9YamigA/profile-displayphoto-shrink_400_400/0/1617589833996?e=1658361600&v=beta&t=wCqUj1a6vrTuU6bh-uPy7_kTGVLPfWhpReCbGvTZ6VE'),
                ),
                IconButton(onPressed: () {}, icon: const Icon(Icons.apps)),
              ],
            ),
            const SizedBox(height: 30),
            const Text(
              '\$490,598.58',
              style: TextStyle(
                fontSize: 30,
                fontWeight: FontWeight.bold,
              ),
            ),
            const SizedBox(height: 20),
            Row(
              children: const [
                Chip(
                  label: Text('+2,49%'),
                  backgroundColor: Colors.white,
                ),
                SizedBox(width: 15),
                Text('+\$67,53'),
              ],
            ),
          ],
        ),
      ),
    );
  }
}
