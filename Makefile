# **************************************************************************** #
#                                                                              #
#                                                         :::      ::::::::    #
#    Makefile                                           :+:      :+:    :+:    #
#                                                     +:+ +:+         +:+      #
#    By: kmbukuts <marvin@42.fr>                    +#+  +:+       +#+         #
#                                                 +#+#+#+#+#+   +#+            #
#    Created: 2019/06/20 08:15:23 by kmbukuts          #+#    #+#              #
#    Updated: 2019/06/20 09:05:13 by kmbukuts         ###   ########.fr        #
#                                                                              #
# **************************************************************************** #

Name = readfile.a

SRC = get_next_line.c

OBJ = $(SRC:.c=.o)

LIBFT = libft/libft.a

HEADER = -c -I get_next_line.h

all 	: $(Name)

$(OBJ)	: %.o %.c
		-@gcc -c -Wall -Werror -Wextra -I libft/ $< -o $@

$(LIBFT):
		@make -C libft

$(Name)	: $(LIBFT) $(OBJ)
		-@gcc $(OBJ) $(LIBFT) -o $(Name)

clean:
	 -@ / bin/rm -f $(OBJ)
	 -@ make -C libft clean

fclean: clean
	-@ /bin/rm -f $(OBJ)
	-@ make -C libft fclean

re	: fclean all
