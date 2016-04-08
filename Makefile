SRC=$(wildcard *.cpp)
OBJ=$(patsubst %.cpp,%.o,${SRC})
CXXFLAGS+=-fPIC -O2 -std=c++11
LIBS+=-lcurl
PRO=libcpr.so
all:${PRO}

libcpr.so:${OBJ}
	g++ -shared ${CXXFLAGS} ${LIBS} -o $@ $^

clean:
	rm -f ${OBJ} ${PRO}
