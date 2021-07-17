
CC=g++
CFLAGS=-c -g -Wall -Werror -pedantic -pedantic-errors #-I $(INCLUDEDIR)
LIBFLAGS=
# Makefile settings - Can be customized.
SRCS=main.cpp factorial.cpp multiply.cpp print.cpp
OBJS=$(addsuffix .o,$(basename $(SRCS))) 
EXE=first_project
.PHONY	: clean all

all : $(EXE)

$(EXE)	: $(OBJS)
		$(CC) -o $@ $(OBJS) $(LIBFLAGS)


# $(OBJS)	:	%.o	: %.cpp
#  		    $(CC) $(CFLAGS) $<
function.o : function.h
			  $(CC) $(CFLAGS) $<

factorial.o : factorial.cpp function.h
			  $(CC) $(CFLAGS) $<

multiply.o : multiply.cpp function.h
			  $(CC) $(CFLAGS) $<

print.o : print.cpp function.h
			  $(CC) $(CFLAGS) $<


clean :
	rm $(OBJS) $(EXE)