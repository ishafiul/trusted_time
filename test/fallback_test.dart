import 'package:flutter_test/flutter_test.dart';
import 'package:trusted_time/trusted_time.dart';

void main() {
  test('TrustedTimeService fallback test', () {
    // Ensure we start with a clean state (though singleton persists, reset() might be needed if other tests ran)
    TrustedTimeService().reset();

    expect(TrustedTimeService().isInitialized, false);

    // Should not throw
    final now = TrustedTimeService().now();

    // Should be close to system time
    final systemNow = DateTime.now();
    final diff = now.difference(systemNow).abs();

    print('Fallback time: $now');
    print('System time: $systemNow');
    print('Difference: ${diff.inMilliseconds}ms');

    // Allow a small delta (e.g. 500ms) for execution time
    expect(diff.inMilliseconds, lessThan(500));
  });
}
