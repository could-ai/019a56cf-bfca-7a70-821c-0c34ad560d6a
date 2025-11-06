import 'package:couldai_user_app/models/kpop_group.dart';
import 'package:couldai_user_app/models/member.dart';

class KpopDataService {
  static List<KpopGroup> getGroups() {
    return [
      KpopGroup(
        name: 'BTS',
        members: [
          Member(name: 'RM', photocardUrl: 'https://picsum.photos/seed/rm/200'),
          Member(name: 'Jin', photocardUrl: 'https://picsum.photos/seed/jin/200'),
          Member(name: 'Suga', photocardUrl: 'https://picsum.photos/seed/suga/200'),
          Member(name: 'J-Hope', photocardUrl: 'https://picsum.photos/seed/jhope/200'),
          Member(name: 'Jimin', photocardUrl: 'https://picsum.photos/seed/jimin/200'),
          Member(name: 'V', photocardUrl: 'https://picsum.photos/seed/v/200'),
          Member(name: 'Jungkook', photocardUrl: 'https://picsum.photos/seed/jungkook/200'),
        ],
      ),
      KpopGroup(
        name: 'BLACKPINK',
        members: [
          Member(name: 'Jisoo', photocardUrl: 'https://picsum.photos/seed/jisoo/200'),
          Member(name: 'Jennie', photocardUrl: 'https://picsum.photos/seed/jennie/200'),
          Member(name: 'Rosé', photocardUrl: 'https://picsum.photos/seed/rose/200'),
          Member(name: 'Lisa', photocardUrl: 'https://picsum.photos/seed/lisa/200'),
        ],
      ),
      KpopGroup(
        name: 'TWICE',
        members: [
          Member(name: 'Nayeon', photocardUrl: 'https://picsum.photos/seed/nayeon/200'),
          Member(name: 'Jeongyeon', photocardUrl: 'https://picsum.photos/seed/jeongyeon/200'),
          Member(name: 'Momo', photocardUrl: 'https://picsum.photos/seed/momo/200'),
          Member(name: 'Sana', photocardUrl: 'https://picsum.photos/seed/sana/200'),
          Member(name: 'Jihyo', photocardUrl: 'https://picsum.photos/seed/jihyo/200'),
          Member(name: 'Mina', photocardUrl: 'https://picsum.photos/seed/mina/200'),
          Member(name: 'Dahyun', photocardUrl: 'https://picsum.photos/seed/dahyun/200'),
          Member(name: 'Chaeyoung', photocardUrl: 'https://picsum.photos/seed/chaeyoung/200'),
          Member(name: 'Tzuyu', photocardUrl: 'https://picsum.photos/seed/tzuyu/200'),
        ],
      ),
       KpopGroup(
        name: 'Stray Kids',
        members: [
          Member(name: 'Bang Chan', photocardUrl: 'https://picsum.photos/seed/bangchan/200'),
          Member(name: 'Lee Know', photocardUrl: 'https://picsum.photos/seed/leeknow/200'),
          Member(name: 'Changbin', photocardUrl: 'https://picsum.photos/seed/changbin/200'),
          Member(name: 'Hyunjin', photocardUrl: 'https://picsum.photos/seed/hyunjin/200'),
          Member(name: 'Han', photocardUrl: 'https://picsum.photos/seed/han/200'),
          Member(name: 'Felix', photocardUrl: 'https://picsum.photos/seed/felix/200'),
          Member(name: 'Seungmin', photocardUrl: 'https://picsum.photos/seed/seungmin/200'),
          Member(name: 'I.N', photocardUrl: 'https://picsum.photos/seed/in/200'),
        ],
      ),
    ];
  }
}
