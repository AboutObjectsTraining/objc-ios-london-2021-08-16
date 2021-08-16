// Copyright (C) 2021 About Objects, Inc. All Rights Reserved.
// See LICENSE.txt for this project's licensing information.

#include <stdio.h>

struct Person {
    const char *firstName;
    const char *lastName;
    int age;
};

typedef struct Person Person;

void PlayWithPerson(void);

Person CreatePerson(const char *firstName, const char *lastName);

void PrintPerson(Person person); 
