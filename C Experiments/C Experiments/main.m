// Copyright (C) 2021 About Objects, Inc. All Rights Reserved.
// See LICENSE.txt for this project's licensing information.

#import <stdio.h>
#import "Person.h"


//void PlayWithPointerDeclarations(void);

//void PlayWithPointerDeclarations(void) {
//    int a;
//    int *p1;
//    int* p2;
//    int *p3, *p4;
//
//    p4 = &a;
//}

void PrintString(const char *s) {
    for (; *s; s++) {
        printf("%c", *s);
    }
    
    printf("\n");
}

void PrintStringAsArray(const char *s) {
    for (int i = 0; s[i]; i++) {
        printf("address: %p, value: %c\n", &s[i], s[i]);
    }
}

void PlayWithStrings(void) {
    char s1[10] = { 97, 98, 99 };
    char s2[10] = { 'a', 'b', 'c' };
    char s3[] = { 'x', 'y', 'z', '\0' };
    char s4[] = "xyz";
    
//    s4 = s3;  // Illegal!
    
    char *p1 = "xyz";
    char *p2 = s4;
    
    p2[0] = 'a';
    s4[0] = 'a';
    
//    for (int i = 0; i < 10; i++) {
//        printf("address: %p, value: %c\n", &s1[i], s1[i]);
//    }
    
    PrintString(s1);
    PrintString(s2);
    PrintString(s3);
    PrintString(s4);
    
    PrintStringAsArray(s4);
}

int XValue = 99;

void StorageClasses(void) {
    int x = 42;
    
    static int xValue = 100;
    
    xValue += 1;
    
    printf("x is %d\n", x);
    printf("XValue is %d\n", xValue);
}

int main(int argc, const char *argv[]) {
    
    PlayWithPerson();
    CreatePerson("Sue", "Jones");
    
    Person newPerson = CreatePerson("Jack", "Smythe");
    
    PrintPerson(newPerson);
    
//    XValue = 0;
//    StorageClasses();
//    StorageClasses();
//    PlayWithStrings();
//    PlayWithPointerDeclarations();
    
    return 0;
}


//void PlayWithPointerDeclarations(void) {
//
//}
