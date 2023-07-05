import 'package:appsmartfarm_flutter/utils/AppAssets.dart';
import 'package:flutter/material.dart';
import 'package:appsmartfarm_flutter/constants/routes.dart' as custom_route;

void dialogLogout(BuildContext context) {
  showDialog(
      context: context,
      builder: (_) => Dialog(
          shape: const RoundedRectangleBorder(
            borderRadius: BorderRadius.all(Radius.circular(10.0)),
          ),
          child: Container(
              decoration: const BoxDecoration(
                  borderRadius: BorderRadius.only(
                      topLeft: Radius.circular(10),
                      topRight: Radius.circular(10))),
              height: 235,
              child: Column(
                  crossAxisAlignment: CrossAxisAlignment.center,
                  mainAxisAlignment: MainAxisAlignment.start,
                  children: [
                    Container(
                      decoration: const BoxDecoration(
                          color: Colors.blue,
                          borderRadius: BorderRadius.only(
                              topLeft: Radius.circular(10),
                              topRight: Radius.circular(10))),
                      width: double.infinity,
                      child: Padding(
                        padding: const EdgeInsets.all(5),
                        child: Image.asset(
                          AppAssets.logout,
                          height: 50,
                        ),
                      ),
                    ),
                    const SizedBox(
                      height: 20,
                    ),
                    const Text("ອອກຈາກລະບົບ",
                        style: TextStyle(
                            fontSize: 20,
                            fontWeight: FontWeight.w600,
                            color: Color(0xFF242320))),
                    const SizedBox(
                      height: 20,
                    ),
                    const Row(
                      mainAxisAlignment: MainAxisAlignment.center,
                      children: [
                        Text(
                          'ທ່ານຕ້ອງການອອກຈາກລະບົບແທ້ ຫຼື ບໍ່ ?',
                          style: TextStyle(fontSize: 15, color: Colors.black54),
                        )
                      ],
                    ),
                    const SizedBox(
                      height: 35,
                    ),
                    Padding(
                      padding: const EdgeInsets.symmetric(horizontal: 15),
                      child: Row(
                        children: [
                          Expanded(
                            child: ElevatedButton(
                                style: ButtonStyle(
                                    backgroundColor: MaterialStateProperty.all(
                                        Colors.black54)),
                                onPressed: () {
                                  Navigator.pop(context);
                                },
                                child: const Padding(
                                  padding: EdgeInsets.symmetric(vertical: 10),
                                  child: Text('ຍົກເລີກ'),
                                )),
                          ),
                          const SizedBox(
                            width: 15,
                          ),
                          Expanded(
                              child: ElevatedButton(
                                  style: ButtonStyle(
                                      backgroundColor:
                                          MaterialStateProperty.all(
                                              Colors.blueGrey)),
                                  onPressed: () {
                                    Navigator.pushNamed(
                                        context, custom_route.Route.login);
                                  },
                                  child: const Padding(
                                    padding: EdgeInsets.symmetric(vertical: 10),
                                    child: Text('ຕົກລົງ'),
                                  ))),
                        ],
                      ),
                    ),
                  ]))));
}
