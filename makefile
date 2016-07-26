CC= g++ -std=c++11
FLAGS = -Wall
INC = -I include

all: proj4.x

proj4.x: bet.o proj4_driver.o
	$(CC) $(FLAGS) -o proj4.x bet.o proj4_driver.o

bet.o: bet.cpp
	$(CC) -c $(FLAGS) $(INC) bet.cpp

proj4_driver.o: proj4_driver.cpp
	$(CC) -c $(FLAGS) $(INC) proj4_driver.cpp

clean:
	rm *.x *.o
