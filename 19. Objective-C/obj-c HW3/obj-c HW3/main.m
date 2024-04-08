//
//  main.m
//  obj-c HW3
//
//  Created by Elena on 02.04.2024.
//

/*
Написать классы Doctor (Доктор) и Patient (Пациент). Доктор делегирует пациенту выпить пилюлю.
Пациент по указанию доктора ее выпивает. Требуется реализовать взаимодействие доктора и пациента через делегат.
*/

#import <Foundation/Foundation.h>
#import "Doctor.h"
#import "Patient.h"
#import "Pill.h"

int main(int argc, const char * argv[]) {
    @autoreleasepool {
        Doctor *doctor = [Doctor new];
        Patient *patient = [Patient new];
        doctor.delegate = patient;
        [doctor givePill];
    }
    return 0;
}
