BIN = ./bin
INCLUDE = ./headers
SRC = ./src
VIEW = ./views

all:	
	g++ -o ./bin/main ${SRC}/*.cpp ${VIEW}/*.cpp `pkg-config --cflags --libs sdl2 SDL2_image SDL2_mixer SDL2_ttf` && ./bin/main
run:
	./bin/main
clean:
	rm $(BIN)/*