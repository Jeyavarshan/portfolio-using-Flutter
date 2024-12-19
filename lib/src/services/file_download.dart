import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:universal_html/html.dart' as html;

final fileDownloadProvider =
    Provider<FileDownloadService>((ref) => FileDownloadService());

class FileDownloadService {
  void downloadResume() {
    const url = 'assets/resume.pdf';

    html.AnchorElement(href: url)
      ..setAttribute('download', 'resume.pdf')
      ..click();
  }
}
