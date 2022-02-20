import 'package:cli/num.dart';
import 'package:cli/point.dart';
import 'package:cli/string_utils.dart';
import 'package:cli/user.dart';
import 'package:cli/math.dart';

void main(List<String> arguments) {
  // 1
  print('----------1-----------');
  print(gcd_two_numbers(8, 9));
  print(lcm_two_numbers(5,25));
  myNewFunction(3);

  // 2
  print('----------2-----------');
  print('${toDecimalSystem('110')}');
  print('${toBinarySystem(6)}');

  // 3
  print('----------3-----------');
  print(
      '${StringUtils.findNumInString('dsf 12 dsaf 12.34 sfds sdf sdf sdf123 2')}');

  // 4
  print('----------4-----------');
  print('${StringUtils.countWordsInTheCollection([
        'one',
        'two',
        'two',
        'three',
        'cat',
        'dog'
      ])}');

  // 5
  print('----------5-----------');
  print('${StringUtils.toInt(['one', 'two', 'two', 'three', 'cat', 'dog'])}');

  // 6
  print('----------6-----------');
  final point1 = Point(1, 2, 3);
  final point2 = Point(-7, -2, 4);

  print('!!!: ${point1.distanceTo(point2)}');

  //7
  print('----------7-----------');
  print('${(8).root(3)}');

  // 8
  print('----------8-----------');
  final user1 = GeneralUser('test1@test.com');
  final user2 = GeneralUser('test2@test.com');
  final user3 = GeneralUser('test3@test.com');
  final admin = AdminUser('admin@test.com');
  final userManager = UserManager();

  print('${userManager.users}');

  userManager.addUser(user1);
  userManager.addUser(user2);
  userManager.addUser(user3);
  userManager.addUser(admin);
  print('${userManager.users}');

  userManager.removeUser(user3);

  print('${userManager.users}');

  userManager.showEmails();
}
