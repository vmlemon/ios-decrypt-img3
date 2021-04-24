CXX=g++
LDFLAGS="-L/opt/homebrew/opt/openssl@1.1/lib"
CFLAGS=-std=c++14 -g -msse2 -msse -maes "-I/opt/homebrew/opt/openssl@1.1/include"
LIBS=  -lcrypto
OBJ = main.o

all: $(OBJ)
	$(CXX) $(CFLAGS) $(LDFLAGS) $(OBJ) -o decryptimg3 $(LIBS)

clean:
	rm *.o && rm decryptimg3

%.o: %.cpp
	$(CXX) $(CFLAGS) -c $<
