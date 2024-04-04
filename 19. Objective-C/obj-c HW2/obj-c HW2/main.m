//
//  main.m
//  obj-c HW2
//
//  Created by MacOSX on 04.04.2024.
//

//Задание
//Создать абстрактный класс Figure с методами вычисления площади и периметра, а также методом, выводящим информацию о фигуре на экран.
//Создать производные классы: Rectangle (прямоугольник), Circle (круг), Triangle (треугольник) со своими методами вычисления площади и периметра.
//Создать массив n-фигур и вывести полную информацию о фигурах на экран.

#import <Foundation/Foundation.h>
#import "Rectangle.h"
#import "Circle.h"
#import "Triangle.h"
#import "Figure.h"

int main(int argc, const char * argv[]) {
    @autoreleasepool {
        Rectangle *rectangle = [[Rectangle alloc] initHW:4 width:6];
        Circle *circle = [[Circle alloc] initRadius:5];
        Triangle *triangle = [[Triangle alloc] initSideA:3 sideB:5 sideC:8];
        NSArray *array = @[rectangle, circle, triangle];
        for (Figure *figure in array){
            [figure figureInformation];
                
        }
     
    }
    return 0;
}
