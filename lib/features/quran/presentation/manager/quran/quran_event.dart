sealed class QuranEvent {}

final class WriteQuranEvent extends QuranEvent {
  final String suraName;

  WriteQuranEvent({required this.suraName});
}
