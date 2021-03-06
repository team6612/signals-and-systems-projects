Spoon1 = load('ironcup_spoon_1.txt');
Spoon2 = load('ironcup_spoon_2.txt');
Spoon3 = load('ironcup_spoon_3.txt');
acrylic1 = load('ironcup_acrylic_1.txt');
acrylic2 = load('ironcup_acrylic_2.txt');
acrylic3 = load('ironcup_acrylic_3.txt');
al_ruler1 = load('ironcup_al_ruler_1.txt');
al_ruler2 = load('ironcup_al_ruler_2.txt');
al_ruler3 = load('ironcup_al_ruler_3.txt');

figure
subplot(3,3,1)       % add first plot in 2 x 2 grid
[x ] = Test(Spoon1,44100);
plot(x)           % line plot
title('Spoon 1')

subplot(3,3,2)       % add second plot in 2 x 2 grid
[x] = Test(Spoon2, 44100);
plot(x)        
title('Spoon 2')

subplot(3,3,3)       % add second plot in 2 x 2 grid
[x] = Test(Spoon3, 44100);
plot(x)        
title('Spoon 3')

subplot(3,3,4)       % add third plot in 2 x 2 grid
[x] = Test(acrylic1, 44100);
plot(x)           % stem plot
title('Acrylic 1')

subplot(3,3,5)       % add third plot in 2 x 2 grid
[x] = Test(acrylic2, 44100);
plot(x)           % stem plot
title('Acrylic 2')

subplot(3,3,6)       % add third plot in 2 x 2 grid
[x] = Test(acrylic3, 44100);
plot(x)           % stem plot
title('Acrylic 3')


subplot(3,3,7)       % add third plot in 2 x 2 grid
[x] = Test(al_ruler1, 44100);
plot(x)           % stem plot
title('Ruler 1')

subplot(3,3,8)       % add third plot in 2 x 2 grid
[x] = Test(al_ruler2, 44100);
plot(x)           % stem plot
title('Ruler 2')
subplot(3,3,9)       % add third plot in 2 x 2 grid
[x, ccc] = Test(al_ruler3, 44100);
plot(x)           % stem plot
title('Ruler 3')

