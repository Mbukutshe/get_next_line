# **************************************************************************** #
#                                                                              #
#                                                         :::      ::::::::    #
#    Makefile                                           :+:      :+:    :+:    #
#                                                     +:+ +:+         +:+      #
#    By: kmbukuts <marvin@42.fr>                    +#+  +:+       +#+         #
#                                                 +#+#+#+#+#+   +#+            #
#    Created: 2019/06/20 08:15:23 by kmbukuts          #+#    #+#              #
#    Updated: 2019/06/28 16:11:41 by kmbukuts         ###   ########.fr        #
#                                                                              #
# **************************************************************************** #

NAME = test_gnl

CC = gcc

SRC = main.c get_next_line.c

OBJ = $(SRC:.c=.o)

FLAGS = -Wall -Werror -Wextra

$(NAME):
	gcc -c -Wall -Wextra -Werror $(SRC)
	make -C libft/ fclean && make -C libft/
	clang $(FLAGS) -I libft/ -c $(SRC)
	clang -o $(NAME) $(OBJ) -I libft/ -L libft/ -lft

all: $(NAME)

clean:
	/bin/rm -f $(OBJ)

fclean: clean
	/bin/rm -f $(NAME)

re: fclean all

#%.o: %.c
#   $(CC) $(FLAG) -c $< -o $@

.PHONY: all clean fclean re
