// Copyright (C) 2021 About Objects, Inc. All Rights Reserved.
// See LICENSE.txt for this project's licensing information.

#include "Person.h"

Person CreatePerson(const char *firstName, const char *lastName) {
    Person person = { firstName, lastName } ;
    return person;
}

void PrintPerson(Person person) {
    printf("firstName: %s, lastName: %s, age: %d\n", person.firstName, person.lastName, person.age);
}

void PlayWithPerson(void) {
    
    Person fred  = {
        .firstName = "Fred",
        .lastName = "Smith",
        .age = 42
    };
    
    printf("firstName: %s, lastName: %s, age: %d\n", fred.firstName, fred.lastName, fred.age);
}
