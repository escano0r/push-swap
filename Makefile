# **************************************************************************** #
#                                                                              #
#                                                         :::      ::::::::    #
#    Makefile                                           :+:      :+:    :+:    #
#                                                     +:+ +:+         +:+      #
#    By: ogorfti <ogorfti@student.42.fr>            +#+  +:+       +#+         #
#                                                 +#+#+#+#+#+   +#+            #
#    Created: 2022/12/03 13:17:09 by ogorfti           #+#    #+#              #
#    Updated: 2023/01/09 18:23:24 by ogorfti          ###   ########.fr        #
#                                                                              #
# **************************************************************************** #

SRCS =	push_swap.c\
		ft_opt1.c\
		ft_opt2.c\
		ft_opt3.c\
		ft_utils1.c\
		ft_utils2.c\
		ft_sort3.c\
		ft_sort5.c\
		ft_smallx.c\
		ft_bigx.c\
		ft_score.c\
		ft_comn_instru.c\
		ft_bigx_utils.c\
		leacks_cheker_ex.c\
		ft_check_utils.c\
		ft_check_args.c\

OBJS =  $(SRCS:.c=.o)

CC = cc

OUT = push_swap

CFLAGS = -Wall -Wextra -Werror

NAME = push_swap.a

RM = rm -f

%.o : %.c
		$(CC) $(CFLAGS) -c $< -o $@ 

$(NAME) :	$(OBJS)
			ar rcs $(NAME) $(OBJS)

all : $(NAME)

clean :
		$(RM) $(OBJS)

fclean : clean
		$(RM) $(NAME)

re :	fclean all

push :	all clean

me1 : push
		$(CC) $(CFLAGS) $(NAME) -o $(OUT)

me : me1
		$(RM) $(NAME)
	