import 'package:inter_view_mecar/base/base.dart';

class InfoUser extends StatelessWidget {
  const InfoUser(
      {Key? key, required this.name, required this.at, required this.avatar})
      : super(key: key);
  final String name;
  final String at;
  final String avatar;

  @override
  Widget build(BuildContext context) => Row(
        children: [
          Image.asset(
            avatar,
            width: 28,
            height: 28,
          ),
          const SizedBox(
            width: 8,
          ),
          Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Text(
                name,
                style:
                textTheme(context).bodyText1!.copyWith(fontWeight: FontWeight.w700),
              ),
              Text(
                at,
                style: textTheme(context).caption,
              )
            ],
          )
        ],
      );
}
