CXX ?= gcc

DEBUG ?= 1
ifeq ($(DEBUG), 1)
    CXXFLAGS += -g
else
    CXXFLAGS += -O2

endif

server: main.cpp ./threadpool/threadpool.cpp ./http/http_conn.cpp
	$(CXX) -o server  $^ $(CXXFLAGS) -lpthread 

clean:
	rm  -r server