NAME = libft.a

C = *.c

OBJECTS = *.o

compile: all clean

all: $(NAME)

$(NAME): 
	gcc -Wextra -Wall -Werror -c $(C) -I.
	ar rc $(NAME) $(OBJECTS)

clean:
	rm -f $(OBJECTS)

fclean: clean
	rm -f $(NAME)

re: fclean all