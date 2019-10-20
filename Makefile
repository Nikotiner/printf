NAME = ft_printf

SRC_DIR = ./src/
OBJ_DIR = ./obj/
INC_DIR = ./includes

CC = gcc
CC_FLAGS = -Wall -Wextra -Werror
DEBUG_FLAGS = -g3

SRC = ft_printf.c double_conversion.c handle_params.c handle_result.c handle_unsigned.c list_worker.c parsing.c string_worker.c utils.c validation.c

OBJCTS = $(addprefix $(OBJ_DIR), $(SRC:.c=.o))

all: $(NAME)

$(NAME): $(OBJCTS)
	 ar rc $(NAME) $(OBJCTS) ./standart_c_lib/libft.a

$(OBJCTS): | $(OBJ_DIR)

$(OBJ_DIR):
	mkdir $(OBJ_DIR)

$(OBJ_DIR)%.o: $(SRC_DIR)%.c
	$(CC) $(CC_FLAGS) $(DEBUG_FLAGS) -c $< -o $@ -I$(INC_DIR)

clean:
	rm -rf $(OBJ_DIR)

fclean: clean
	rm -rf $(NAME)

re:	fclean all

vpath %.c $(SRC_DIR)
