import 'package:posforall_merchant/models/user.model.dart';

class AppState {
  UserModel userDetails;
  List consumers;
  var selectedConsumer;
  String activeRoute;

  AppState({ this.userDetails, this.consumers, this.selectedConsumer, this.activeRoute });

  AppState.fromAppState(AppState another) {
    userDetails = another.userDetails;
    consumers = another.consumers;
    selectedConsumer = another.selectedConsumer;
    activeRoute = another.activeRoute;
  }

}
