# **************************************************************************** #
#                                                                              #
#                                                         :::      ::::::::    #
#    Makefile                                           :+:      :+:    :+:    #
#                                                     +:+ +:+         +:+      #
#    By: hkaddour <hkaddour@student.1337.ma>        +#+  +:+       +#+         #
#                                                 +#+#+#+#+#+   +#+            #
#    Created: 2023/03/14 16:25:44 by hkaddour          #+#    #+#              #
#    Updated: 2023/03/14 16:39:49 by hkaddour         ###   ########.fr        #
#                                                                              #
# **************************************************************************** #

NAME = containers
CC = c++
FLAGS = -Wall -Wextra -Werror -std=c++98
#HEADER = $(addprefix srcs, containers/)
HEADER = vector.hpp
SRCS = main.cpp
OBJS = $(SRCS:.cpp=.o)

all: $(NAME)

$(NAME): $(OBJS)
	$(CC) $^ -o $@

%.o: %.cpp $(HEADER)
	$(CC) $(FLAGS) -c $< -o $@

clean:
	rm -rf $(OBJS)

fclean: clean
	rm -rf $(NAME)

re: fclean all

.PHONY: all clean fclean re
