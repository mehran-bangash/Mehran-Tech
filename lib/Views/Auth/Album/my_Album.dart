import 'package:flutter/material.dart';
import 'package:focused_menu/focused_menu.dart';
import 'package:focused_menu/modals.dart';
import 'package:mehrantech/Views/Auth/Album/AlbumFeatures/Galleryheader.dart';
import 'package:mehrantech/Views/Auth/Album/albumPost.dart';
import 'package:page_transition/page_transition.dart';

class MyAlbum extends StatelessWidget {
  // ignore: use_key_in_widget_constructors
  const MyAlbum({Key? key});

  @override
  Widget build(BuildContext context) {
    return SingleChildScrollView(
      child: Column(
        children: [
          GalleryHeader(
            context: context,
            isEditable: true,
            tuval: "0",
            toval: "8",
            name: "Mehran Ali",
            decription: "Tell your partner what this album means to you",
          ),
          const SizedBox(
            height: 15,
          ),
          Container(
            child: Padding(
              padding: const EdgeInsets.only(left: 8, right: 8, bottom: 10),
              child: GridView.builder(
                physics: const NeverScrollableScrollPhysics(),
                shrinkWrap: true,
                gridDelegate: const SliverGridDelegateWithFixedCrossAxisCount(
                  crossAxisCount: 3,
                  crossAxisSpacing: 15.0,
                  mainAxisSpacing: 10.0,
                ),
                itemCount: 6,
                itemBuilder: (BuildContext context, int index) {
                  return FocusedMenuHolder(
                    menuWidth: MediaQuery.of(context).size.width * 0.50,
                    blurSize: 2.0,
                    menuItemExtent: 45,
                    menuBoxDecoration: const BoxDecoration(
                      color: Colors.grey,
                      borderRadius: BorderRadius.all(Radius.circular(15.0)),
                    ),
                    duration: Duration(milliseconds: 100),
                    animateMenuItems: true,
                    blurBackgroundColor: Colors.black54,
                    bottomOffsetHeight: 100,
                    openWithTap: true,
                    menuItems: <FocusedMenuItem>[
                      FocusedMenuItem(
                        title: Text("Open"),
                        trailingIcon: Icon(Icons.open_in_new),
                        onPressed: () {},
                      ),
                      FocusedMenuItem(
                        title: const Text(
                          "Delete",
                          style: TextStyle(color: Colors.redAccent),
                        ),
                        trailingIcon: const Icon(
                          Icons.delete,
                          color: Colors.redAccent,
                        ),
                        onPressed: () {},
                      ),
                    ],
                    onPressed: () {},
                    child: ClipRRect(
                      borderRadius: BorderRadius.circular(10),
                      child: InkWell(
                        onTap: () {
                          Navigator.push(
                            context,
                            PageTransition(
                              child: albumPost(),
                              type: PageTransitionType.fade,
                            ),
                          );
                        },
                        child: const Hero(
                          tag:
                              ' "https://i02.appmifile.com/images/2019/03/06/829199af-238d-46b6-8294-525d9e6e8226.png',
                          child: Image(
                            image: NetworkImage(
                                'https://i02.appmifile.com/images/2019/03/06/829199af-238d-46b6-8294-525d9e6e8226.png'),
                            fit: BoxFit.cover,
                          ),
                        ),
                      ),
                    ),
                  );
                },
              ),
            ),
          ),
        ],
      ),
    );
  }
}
