//
//  main.m
//  obj-c HW4
//
//  Created by Elena on 05.04.2024.
//

//Урок 4. Блоки и многопоточное программирование в Objective-C
//Скрыть
//Задание
//Реализовать класс робота (Robot). В классе должны быть свойства координат x, y (по умолчанию 0, 0) и метод run. Метод run принимает единственный параметр - блок, в зависимости от сообщения, возвращаемого из блока (up, down, left, right) робот движется в соответствующем направлении (изменяются его текущие координаты x, y). Гарантируется, что блок возвращает только строки вида (up, down, left, right).
//Продемонстрировать движение робота по прямоугольной системе координат.
#import <Foundation/Foundation.h>
#import "Robot.h"

int main(int argc, const char * argv[]) {
    @autoreleasepool {
        Robot *robot = [Robot new];
        [robot run:^NSString *{
            return @"down";
        }];
        
        [robot run:^NSString *{
            return @"left";
        }];
        
        [robot run:^NSString *{
            return @"left";
        }];
        
        [robot run:^NSString *{
            return @"up";
        }];
        
        [robot run:^NSString *{
            return @"right";
        }];
    }
    return 0;
}
