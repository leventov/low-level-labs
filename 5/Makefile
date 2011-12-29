CXX = g++
CXXFLAGS = 

BIR = ABigInt

main: main.o BI_c.o $(BIR).o
	$(CXX) $(CXXFLAGS) -o main BI_c.o $(BIR).o main.cpp -lrt

$(BIR).o: $(BIR).cpp BigInt.h
	$(CXX) $(CXXFLAGS) -c $(BIR).cpp

BI_c.o: BigInt_common.cpp BigInt.h
	$(CXX) $(CXXFLAGS) -c -o BI_c.o BigInt_common.cpp


$(BIR).s: $(BIR).cpp BigInt.h
	$(CXX) $(CXXFLAGS) -S $(BIR).cpp


