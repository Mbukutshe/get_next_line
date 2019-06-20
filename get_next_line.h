/* ************************************************************************** */
/*                                                                            */
/*                                                        :::      ::::::::   */
/*   get_next_line.h                                    :+:      :+:    :+:   */
/*                                                    +:+ +:+         +:+     */
/*   By: kmbukuts <marvin@42.fr>                    +#+  +:+       +#+        */
/*                                                +#+#+#+#+#+   +#+           */
/*   Created: 2019/06/20 07:47:35 by kmbukuts          #+#    #+#             */
/*   Updated: 2019/06/20 09:08:05 by kmbukuts         ###   ########.fr       */
/*                                                                            */
/* ************************************************************************** */

#ifndef GET_NEXT_LINE_H
# define GET_NEXT_LINE_H

#include "./libft/libft.h"
#include <fcntl.h>
#include <sys/stat.h>
#include <sys/types.h>

# define BUFF_SIZE 32

int			get_next_line(const int fd, char**line);

#endif
