sealed class DoaaEvent {}

final class WriteDoaEvent extends DoaaEvent {
  final String doaName;
  WriteDoaEvent({required this.doaName});
}
