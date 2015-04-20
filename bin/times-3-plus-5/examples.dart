import './times_3_plus_5.dart';

void main() {
    var timesplus = new Times3Plus5();
    for(int i = 1; i <= 100; i++) {
        boolean buildable = timesplus.isBuildable(i);
        print('${i}: is buildable ${buildable}');
    }
}

