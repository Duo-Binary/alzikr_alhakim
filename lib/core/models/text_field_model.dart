class TextFieldModel {
  final String hintText;
  final void Function(String)? onChanged;

  TextFieldModel({required this.hintText, required this.onChanged});
}
