import 'DomainStudioServiceStatus.dart';

class AbstractDomainStudioServiceData {
  double debugTime;

  DomainStudioServiceStatus status;

  String message;

  AbstractDomainStudioServiceData(this.debugTime, this.status, this.message);
}
