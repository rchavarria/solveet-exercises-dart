import './times_3_plus_5.dart';

void main() {
    for(int i = 1; i <= 100; i++) {
        var timesplus = new Times3Plus5();
        boolean buildable = timesplus.isBuildable(i);
        if (buildable) {
            print('${i}: can be built following: ${timesplus.steps}');
        }
    }
}

