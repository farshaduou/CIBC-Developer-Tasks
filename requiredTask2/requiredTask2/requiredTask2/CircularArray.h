template <class T>
class CircularArray
{
	T *dataArray;
	int frontIndex;
	int endIndex;
	int length;
	int currentIndex;

public:
	CircularArray();
	~CircularArray();
	int size() const;
	bool isEmpty() const;
	void rotateArray(int);
	void insertArray(const T& t);
	const T& removeArray();
	const T& front() const;

};
