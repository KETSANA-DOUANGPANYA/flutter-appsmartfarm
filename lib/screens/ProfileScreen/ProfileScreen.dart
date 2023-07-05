import 'package:appsmartfarm_flutter/utils/AppAssets.dart';
import 'package:appsmartfarm_flutter/widgets/dialogLogout.dart';
import 'package:flutter/material.dart';

class ProfileScreen extends StatelessWidget {
  const ProfileScreen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      alignment: Alignment.center,
      decoration: const BoxDecoration(
        gradient: LinearGradient(
          begin: Alignment.topLeft,
          end: Alignment.bottomRight,
          colors: [Color(0xFF0066FF), Color(0xFF0066FF), Color(0xFF6AC5FA)],
        ),
      ),
      child: Column(
        mainAxisAlignment: MainAxisAlignment.spaceAround,
        children: [
          Container(
            padding: const EdgeInsets.symmetric(vertical: 40, horizontal: 20),
            margin: const EdgeInsets.symmetric(horizontal: 10),
            decoration: const BoxDecoration(
                color: Colors.white,
                borderRadius: BorderRadius.all(Radius.circular(30))),
            child: Column(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  Row(
                    mainAxisAlignment: MainAxisAlignment.start,
                    children: [
                      Container(
                        width: 97,
                        height: 97,
                        decoration: const BoxDecoration(shape: BoxShape.circle),
                        child: Image.asset(AppAssets.profileimages),
                      ),
                      const SizedBox(
                        width: 30,
                      ),
                      const Column(
                        mainAxisAlignment: MainAxisAlignment.start,
                        children: [
                          Text(
                            "ເກດສະໜາ ດວງປັນຍາ",
                            style: TextStyle(
                                fontWeight: FontWeight.bold, fontSize: 15),
                          ),
                          Text(
                            "ວິສະວະກຳຄອມພີວເຕິ",
                            style: TextStyle(fontSize: 10),
                          ),
                        ],
                      ),
                    ],
                  ),
                  const Row(
                    mainAxisAlignment: MainAxisAlignment.spaceAround,
                    children: [
                      Text(
                        "4",
                        style: TextStyle(fontWeight: FontWeight.bold),
                      ),
                      Text(
                        "4",
                        style: TextStyle(fontWeight: FontWeight.bold),
                      ),
                      SizedBox(
                        width: 50,
                      ),
                    ],
                  ),
                  Row(
                    mainAxisAlignment: MainAxisAlignment.spaceAround,
                    children: [
                      const Text(
                        "ໂຮງເຮືອນ",
                        style: TextStyle(fontWeight: FontWeight.bold),
                      ),
                      const Text(
                        "ໂຮງເຮືອນ",
                        style: TextStyle(fontWeight: FontWeight.bold),
                      ),
                      Material(
                        elevation: 5,
                        child: Container(
                          alignment: Alignment.center,
                          width: 109,
                          height: 25,
                          decoration: BoxDecoration(
                              borderRadius:
                                  const BorderRadius.all(Radius.circular(5)),
                              border: Border.all(color: Colors.black38)),
                          child: const Text(
                            "ເເກ້ໄຂໂປຣຟາຍ",
                            style: TextStyle(fontSize: 10),
                          ),
                        ),
                      ),
                    ],
                  )
                ]),
          ),
          InkWell(
            child: Container(
              padding: const EdgeInsets.symmetric(horizontal: 10, vertical: 10),
              margin: const EdgeInsets.symmetric(
                horizontal: 100,
              ),
              decoration: const BoxDecoration(
                color: Colors.white,
                borderRadius: BorderRadius.all(Radius.circular(20)),
              ),
              child: Row(
                mainAxisAlignment: MainAxisAlignment.spaceAround,
                children: [
                  Image.asset(AppAssets.logout),
                  const Text(
                    "ອອກຈາກລະບົບ",
                    style: TextStyle(fontWeight: FontWeight.bold),
                  )
                ],
              ),
            ),
            onTap: () {
              dialogLogout(context);
            },
          )
        ],
      ),
    );
  }
}
