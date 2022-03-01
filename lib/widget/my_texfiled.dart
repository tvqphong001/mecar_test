import 'package:inter_view_mecar/base/base.dart';

class MyTextField extends StatelessWidget {
  const MyTextField(
      {Key? key, this.onChange, this.hint, this.isPassword = false})
      : super(key: key);
  final Function(String)? onChange;
  final String? hint;
  final bool isPassword;

  @override
  Widget build(BuildContext context) => TextField(
        style: Theme.of(context).textTheme.bodyText1,
        cursorHeight: 17,
        onChanged: onChange,
        obscureText: isPassword,
        enableSuggestions: !isPassword,
        autocorrect: !isPassword,
        decoration: InputDecoration(
          hintText: hint,
            hintStyle: Theme.of(context)
                .textTheme
                .bodyText1!
                .copyWith(color: Theme.of(context).cardColor.withOpacity(0.5)),
            contentPadding:
                const EdgeInsets.symmetric(vertical: 19.5, horizontal: 17),
            focusedBorder: const OutlineInputBorder(
              borderSide: BorderSide(color:Colors.blue, width: 3),

            ),
            enabledBorder: OutlineInputBorder(
              borderSide: BorderSide(color: Theme.of(context).cardColor, width: 2),
            ),
            border: InputBorder.none),
      );
}
