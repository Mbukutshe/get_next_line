# **************************************************************************** #
#                                                                              #
#                                                         :::      ::::::::    #
#    Makefile                                           :+:      :+:    :+:    #
#                                                     +:+ +:+         +:+      #
#    By: cletinic <marvin@42.fr>                    +#+  +:+       +#+         #
#                                                 +#+#+#+#+#+   +#+            #
#    Created: 2018/05/24 11:04:12 by cletinic          #+#    #+#              #
#    Updated: 2018/06/08 13:38:04 by cletinic         ###   ########.fr        #
#                                                                              #
# **************************************************************************** #

CC = gcc
NAME = test_gnl
FLAG = -Wall -Wextra -Werror
SRC = main.c get_next_line.c
OBJ = $(SRC:.c=.o)

$(NAME):
	gcc -c -Wall -Wextra -Werror $(SRC)
	make -C libft/ fclean && make -C libft/
	clang $(FLAG) -I libft/ -c $(SRC)
	clang -o $(NAME) $(OBJ) -I libft/ -L libft/ -lft

all: $(NAME)

clean:
	/bin/rm -f $(OBJ)

fclean: clean
	/bin/rm -f $(NAME)

re:	fclean all

#%.o: %.c
#	$(CC) $(FLAG) -c $< -o $@

.PHONY: all clean fclean re