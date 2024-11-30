NAME = libasm.a

ASMC = nasm
ASMFLAGS = -fmachos64 -g

CC = gcc
CFLAGS = -Wall -Wextra -Werror

RM = RM
RMFLAGS = -rf

SRCS = ft_strlen.s
OBJS = $(SRCS:.s = .o)

%.o: %.s
	$(ASMC) $(ASMFLAGS) $<

all : $(NAME)

clean :
	$(RM) $(RMFLAGS) $(OBJS)

fclean : clean
	$(RM) $(RMFLAGS) $(NAME)

re : fclean $(NAME)