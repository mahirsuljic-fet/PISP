[tv1 f1] = ode23('fun1', [0 5], 1);
[tv2 f2] = ode45('fun1', [0 5], 1);
plot(tv1, f1, '-.', tv2, f2, '--');
title('nesto')
grid
axis([0 5 0 1]);
