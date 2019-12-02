#include "CircularArray.h"

template <class T>
CircularArray<T>::CircularArray()
{
	this->currentindex = 0;
	this->frontindex = 0;
	this->endindex = 0;
	this->length = this->endIndex - this->frontIndex + 1;
	this->length = length;
	dataArray = new T(length);
}

template <class T>
CircularArray<T>::~CircularArray()
{
	delete[] dataArray;
}

template<class T>
int CircularArray<T>::size() const
{
	return this->currentIndex;
}

template<class T>
bool CircularArray<T>::isEmpty() const
{
	return currentIndex;
}

template <class T>
void CircularArray<T>::rotateArray(int i)
{
	this->currentIndex - i;
	//	insertArray()
}

template<class T>
void CircularArray<T>::insertArray(const T & t)
{
	if (currentIndex == length)
	{
		length = length * 2;
		T* temp = new T[length];
		for (int i = 0; i < currentIndex; i++)
		{
			temp[i] = dataArray[(frontIndex + i) % length];
		}
		delete dataArray;
		dataArray = temp;
	}
	dataArray[endIndex] = t;
	endIndex = (endIndex + 1) % length;
	currentIndex++;
}

template<class T>
const T & CircularArray<T>::removeArray()
{
	T &temp = dataArray[this->frontIndex];
	frontIndex = ((this->frontIndex + 1) % this->length);
	currentIndex--;
	return temp;
}

template<class T>
const T & CircularArray<T>::front() const
{
	return dataArray[frontIndex];
}

