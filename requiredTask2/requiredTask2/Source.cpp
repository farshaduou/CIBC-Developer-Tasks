/*
Written by: Farshad Mogharrabi
Required Task 2
*/

/*
This program is prepared to test the CircularArray class
by inserting a sample data array of integers into the an
instance of the class and then removing the array elements
*/

#include"CircularArray.h"
#include <iostream>


int main()
{
	CircularArray<int> *testArray;
	testArray = new CircularArray<int>();

	int sampleData[] = { 11, 1, 4, -3, 8 };

	for (int i = 0; i < 5; i++) {
		testArray->insertArray(sampleData[i]);
	}

	while (!testArray->isEmpty()) {
		std::cout << "Remove array:" << testArray->removeArray() << std::endl;
	};

	return 0;

}
