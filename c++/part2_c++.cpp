/*
*
* Derek Hessinger and Sumira Naroola
* Prof. Ying Li
* CS 333
* 10/2/24
* This C++ program doubles a number, prints it out, prints hello world
* and accepts the user's name as input and greets them
*
* g++ part2_c++.cpp -o part2_c++
* ./part2_c++
*/

#include <iostream>
#include <string>

double square(double x){
    return x*x; // return squared input
}

void print_sq(double x){
    std::cout << x << " squared is " << square(x) << '\n'; // print out squared number after calling square function
}

int main() {
    std::cout << "Hello world!" << std::endl; // print hello world
    print_sq(20); // print out the square of 20
    
    std::string name; // init name var
    
    std::cout << "Enter your name: "; // ask for the user's name
    std::getline(std::cin, name); // get name from command line input

    std::cout << "Hello " << name << "!" << std::endl; // greet the user with their name
    return 0;
}