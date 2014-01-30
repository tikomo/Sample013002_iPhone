//
//  ViewController.m
//  Sample013002
//
//  Created by tikomo on 2014/01/30.
//  Copyright (c) 2014年 tikomo. All rights reserved.
//

#import "ViewController.h"

#define D_VAL 100
#define D_AAA @"AAA"

// macro関数定義
#define D_SUM(a, b) a + b



@interface ViewController ()

@end

@implementation ViewController

//
// 最初に呼ばれる
//
- (void)viewDidLoad
{
    [super viewDidLoad];
	// Do any additional setup after loading the view, typically from a nib.
    
    int ans = 1 + 2 + 3;
    
    NSInteger ans2 = 1; // unsigned int と同じだったんだ...
    unsigned int ans22 = 11; //
    NSUInteger ans3 = 2; // 設定の 32bit, 64bit に応じてビット長が変わります。
    
    double a = 0.05;
    float b = 0.06;
    float bb = 0.07f;
    
    BOOL c = true;
    bool d = false;
    
    char cc = 'A';
    
    
    NSLog(@"int %d", ans);
    NSLog(@"NSInteger %d", ans2);
    NSLog(@"unsigned int %d", ans22);
    NSLog(@"NSUInteger %d", ans3);
    NSLog(@"double %f", a); // 0.050000
    NSLog(@"float %0.1f", b); // 0.1
    NSLog(@"float %0.2f", bb); // 0.06
    NSLog(@"float %0.2f", b); // 0.06
    NSLog(@"float %0.3f", b); // 0.060
    NSLog(@"BOOL %d", c); // 1
    NSLog(@"bool %d", d); // 0
    
    NSLog(@"char %c", cc); // 0

    
    typedef NSInteger Dayes;
    Dayes days = 1;
    
    NSLog(@"days %d", days);
    
    
    NSString* msg = @"hello world";
    NSDate *now = [NSDate date];
    
    NSLog(@" msg = %@ / now = %@", msg, now);
    
    
    const int D_A = 10;
    int const D_B = 100;
    
    const NSString* D_COLOR = @"RED";
    
    NSLog(@"%d , %d", D_A, D_B);
    NSLog(@"%@", D_COLOR);
    
    enum {
        NUM_A = 0,
        NUM_B,
        NUM_C
    };
    
    int aa = NUM_A;
    NSLog(@"%d , %d", aa, NUM_B); // 0 , 1
    
    NSLog(@"%d , %@", D_VAL, D_AAA); // 100 , AAA


    // macro関数を使う
    int abc1 = D_SUM(10,1);
    
    NSInteger abc2 = D_SUM(10,2);
    
    NSLog(@"%d , %d", abc1, abc2);
    
    /*
    M_E 自然対数の底(e)
    M_LOG2E log2(底はe)
    M_LOG10E log2(底はe)
    M_LN2 log2(底は10)
    M_LN10 log10(底は10)
    
    M_PI pi円周率
    M_PI_2 pi/2
    M_PI_4 pi/4
    M_1_PI 1/pi
    M_2_PI 2/pi
    M_2_SQRTPI 2/sqrt(pi), sqrtは平方根を求める関数
    M_SQRT1_2 sqrt(1/2)
    M_SQRT2 sqrt(2)
    FLT_MIN float型の正の最小値
    FLT_MAX float型の最大値
    DBL_MIN double型の正の最小値
    DBL_MAX double型の最大値
    
    arc4random() 1以上の整数の乱数を返す
    ceil(x) 小数点以下を切り上げ
    floor(x) 小数点以下を切り下げ
    round(x) 小数点以下を四捨五入
    fmax(a,b) a,bの大きい方
    fmin(a,b) a,bの小さい方
    fmod(x,y) double型の数値のx/yの余を返す
    abs(x) int型xの絶対値
    fabs(x) doule型xの絶対値
    sqrt(x) xの平方根
    hypot(x,y) (x*x + y*y)の平方根
    pow(x,y) xのy乗
    cos(x) コサイン(x=ラジアン)
    sin(x) サイン(x=ラジアン)
    tan(x) タンジェント(x=ラジアン)
    acos(x) アークコサイン(x=ラジアン)
    asin(x) アークコサイン(x=ラジアン)
    atan(x) アークタンジェント(x=ラジアン)
    atan2(x,y) x軸と点(x,y)の角度
    */
    
    int rnd = arc4random() % 10; // 0 - 9 までの乱数
    NSLog(@"%d", rnd);
    
    NSString* str = @"hello world";
    NSLog(@"%@", str);
    
#pragma mark - NSlog, Debug
    //
    NSLog(@"FINCTION : %s", __FUNCTION__);
    NSLog(@"LINE : %d", __LINE__);
    NSLog(@"FILE : %s", __FILE__);
    
    
    
    
#pragma mark - if
    
    int aaa = 0;
    int bbb = 1;
    if (aa < bb) {
        NSLog(@"AAA");
    } else if (aaa == bbb){
        NSLog(@"BBB");
    } else {
        NSLog(@"CCC");
    }
    
    // and = &&, or = ||
    if((1 == 1) && (2 == 2)) {
        NSLog(@"11111");
    } else {
        NSLog(@"22222");
    }
    
    
    int sw = 1;
    switch (sw) {
        case 1 :
            NSLog(@"1");
            break;
        case 2 :
            NSLog(@"2");
            break;
        case 3 :
            NSLog(@"3");
            break;
        case 4 :
            NSLog(@"4");
            break;
        default :
            NSLog(@"5");
            break;
    }
    
    enum {
        TYPE1 = 1,
        TYPE2 = 2,
        TYPE3 = 3,
        TYPE4 = 4,
        TYPE5 = 5
    };
    
    unsigned int swType = 2;
    
    switch (swType) {
        case TYPE1 :
            NSLog(@"1");
            break;
        case TYPE2 :
            NSLog(@"2");
            break;
        case TYPE3 :
            NSLog(@"3");
            break;
        case TYPE4 :
            NSLog(@"4");
            break;
        default :
            NSLog(@"5");
            break;
    }
    
    int f = 3;
    int g = (f == 3)? 30 : 50;
    NSLog(@"%d", g); // 30
    
    const int mode1 = 1, mode2 = 2, mode3 = 3, mode4 = 4;

    int mode = mode4;
    
    switch (mode) {
        case mode1 :
            NSLog(@"1");
            break;
        case mode2 :
            NSLog(@"2");
            break;
        case mode3 :
            NSLog(@"3");
            break;
        case mode4 :
            NSLog(@"4");
            break;
        default :
            NSLog(@"5");
            break;
    }
    
    
#pragma mark - for
    
    for (int i = 0; i < 10; i++) {
        
        NSLog(@"for - %d", i);
        
    }
    
#pragma mark - while
    
    int ii = 0;
    
    while(ii < 10) {
        
        NSLog(@"while - %d", ii);
        ii ++;
        
    }
    
#pragma mark - NSMutableArray
    
    NSMutableArray* arr = [NSMutableArray array];
    
    [arr addObject:@"Hello"];
    [arr addObject:@"hoge hoge"];
    [arr addObject:@"hi!"];
    
    NSString *str2 = [arr objectAtIndex:1]; // "hogehoge"
    
    NSLog(@"%@", str2);
    
    // 要素の列挙
	for (id item in arr) {
		NSLog(@">> %@", item);
	}
    

    NSMutableArray *arrA = [NSMutableArray arrayWithObjects:
                            @"AAA", @"BBB", @"CCC", @"DDD", nil];
    
    // 要素の列挙
	for (id item in arrA) {
		NSLog(@">> %@", item);
	}
    
    
    
    
}

- (void)didReceiveMemoryWarning
{
    [super didReceiveMemoryWarning];
    // Dispose of any resources that can be recreated.
}

@end
