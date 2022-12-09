CC = g++
CFLAGS =`pkg-config opencv4 --cflags --libs`
LIBS =`pkg-config opencv4 --cflags --libs`  

Tracking: Tracking.cpp 
	$(CC) Tracking.cpp -o Tracking $(LIBS) $(CFLAGS)

GPU: TrackingGPU.cpp
	$(CC) TrackingGPU.cpp -o GPU $(LIBS) $(CFLAGS)
