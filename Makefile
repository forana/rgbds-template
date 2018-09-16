ASM = rgbasm
LINK = rgblink
FIX = rgbfix

#Change the following lines
ROM_NAME = hello-world
SOURCES = src/memory.asm src/hello-world.asm
FIX_FLAGS = -v -p 0

INCDIR = inc
OBJECTS = $(SOURCES:%.asm=%.o)

WINE = "wine"

all: $(ROM_NAME)

$(ROM_NAME): $(OBJECTS)
	$(LINK) -o $@.gb -n $@.sym $(OBJECTS)
	$(FIX) $(FIX_FLAGS) $@.gb

%.o: %.asm
	$(ASM) -i$(INCDIR)/ -o $@ $<

clean:
	rm -f $(ROM_NAME).gb $(ROM_NAME).sym $(OBJECTS)

docker:
	docker run -it --rm -v $(shell pwd):/app forana/rgbds:latest

run:
	$(WINE) start bgb.exe hello-world.gb > wine-log.txt 2>&1 
