class User {
  final String email;

  const User(this.email);
}

mixin UserUtils on User {
  String getMailSystem() {
    return email.substring(email.indexOf('@') + 1);
  }
}

class AdminUser extends User with UserUtils {
  AdminUser(String email) : super(email);
}

class GeneralUser extends User {
  GeneralUser(String email) : super(email);
}

class UserManager<T extends User> {
  final List<T> users = [];

  UserManager();

  void addUser(T user) {
    users.add(user);
  }

  void removeUser(T user) {
    users.remove(user);
  }

  void showEmails() {
    users.forEach((T user) {
      if (user is AdminUser) {
        print(user.getMailSystem());
        return;
      }

      print('${user.email}');
    });
  }
}
