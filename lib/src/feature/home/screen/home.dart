import 'package:inter_view_mecar/base/base.dart';
import 'package:inter_view_mecar/widget/info_user.dart';
import 'package:flutter_staggered_grid_view/flutter_staggered_grid_view.dart';

class Home extends StatelessWidget {
  const Home({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) => MyScaffold(
        bottomBar: true,
        body: SingleChildScrollView(
          padding: EdgeInsets.only(top: Screen.statusBar,bottom: 50),
          child: Padding(
            padding: const EdgeInsets.symmetric(horizontal: 15),
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                const SizedBox(
                  height: 32,
                ),
                Text(
                  KeyLang.discover.tr,
                  style: context.textTheme.subtitle1,
                ),
                const SizedBox(
                  height: 32,
                ),
                Text(
                  KeyLang.whatNew.tr.toUpperCase(),
                  style: context.textTheme.bodyText1
                      ?.copyWith(fontWeight: FontWeight.w900),
                ),
                const SizedBox(
                  height: 24,
                ),
                Image.asset(imageNews,fit: BoxFit.fitWidth,),
                const SizedBox(
                  height: 16,
                ),
                const InfoUser(
                  avatar: avatar2,
                  at: '@ridzjcob',
                  name: 'Ridhwan Nordin',
                ),
                const SizedBox(
                  height: 48,
                ),
                Text(
                  KeyLang.browseAll.tr.toUpperCase(),
                  style: context.textTheme.bodyText1
                      ?.copyWith(fontWeight: FontWeight.w900),
                ),
                const SizedBox(
                  height: 24,
                ),
                MasonryGridView.count(
                  crossAxisCount: 2,
                  mainAxisSpacing: 10,
                  crossAxisSpacing: 9,
                  itemCount: imageList.length,
                  shrinkWrap: true,
                  physics: const NeverScrollableScrollPhysics(),
                  itemBuilder: (context, index) => Image.asset(
                    imageList[index],
                    fit: BoxFit.fitHeight,
                  ),
                ),
                const SizedBox(
                  height: 32,
                ),
                ButtonApp(
                  onTap: () {},
                  text: KeyLang.seeMore.tr,
                  fillButton: false,
                )
              ],
            ),
          ),
        ),
      );
}

List<String> imageList = [
  image1,
  image2,
  image3,
  image4,
  image5,
  image6,
  image7,
  image8,
  image9,
  image10
];