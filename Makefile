# Compiler va flaglar
CC = gcc
CFLAGS = -Wall -Wextra -g

# Barcha .c fayllarni avtomatik topamiz
SRCS = $(wildcard *.c)

# Har bir .c uchun mos .o fayl nomini yaratamiz
OBJS = $(SRCS:.c=.o)

# Yakuniy bajariladigan fayl nomi
TARGET = main

all: $(TARGET)

$(TARGET): $(OBJS)
	$(CC) $(CFLAGS) -o $@ $^

# Har bir .o faylni .c dan kompilyatsiya qilish
%.o: %.c
	$(CC) $(CFLAGS) -c $< -o $@

# Tozalash uchun (obyekt fayllar va bajariladigan faylni o'chirish)
clean:
	rm -f $(OBJS) $(TARGET)

.PHONY: all clean