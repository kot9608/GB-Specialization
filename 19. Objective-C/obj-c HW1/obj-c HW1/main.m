//
//  main.m
//  obj-c HW1
//
//  Created by Elena on 26.03.2024.
//

#import <Foundation/Foundation.h>
//Задание 1
//Решить квадратные уравнения:
//x^2 – 8x + 12 = 0,
//12x^2 – 4x + 2 = 0,
//x^2 – 100x - 2 = 0
//(заменять константы в коде).
//Задание 2
//Создать программу, которая находит большее число среди 3-х чисел.


void quadraticEquation (CGFloat a, CGFloat b, CGFloat c) {
    CGFloat discriminant = pow(b, 2) - 4 * a * c;
    if (discriminant > 0){
        CGFloat result1 = (-b + sqrt(discriminant)) / 2 * a;
        CGFloat result2 = (-b - sqrt(discriminant)) / 2 * a;
        NSLog(@"%f, %f", result1, result2);
    } else if (discriminant == 0) {
        CGFloat result = -b / 2 * a;
        NSLog(@"%f", result);
    } else {
        NSLog(@"Корни у уровнения отсутствуют");
    }
    printf("\n");
}

void findMaxNum(CGFloat a, CGFloat b, CGFloat c) {
    CGFloat max = a;
    if (b > max)
        max = b;
    if (c > max)
        max = c;
    NSLog(@"Из трех чисел %f, %f и %f: максимальное число: %f", a, b, c, max);
}

int main(int args, const char *argv[]) {
    @autoreleasepool {
        NSLog(@"Корни уравнения x^2 - 8x + 12 = 0:");
        quadraticEquation(1,-8, 12);
        NSLog(@"");
        NSLog(@"Корни уравнения 12x^2 – 4x + 2 = 0:");
        quadraticEquation(12,-4, 2);
        NSLog(@"");
        NSLog(@"Корни уравнения x^2 – 100x - 2 = 0:");
        quadraticEquation(1,-100, -2);
        NSLog(@""); 
        findMaxNum(30.65, 255.03, 612.598);
    }
    return  0;
}

