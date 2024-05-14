#include <stdio.h>

typedef struct {
  int time;
  char* day;
} Date;

int main(int argc, char** argv) {
  printf("Hello world!\n");
  int x = 2;
  Date date = { .time=1, .day="Hello" };
  printf("%d\n", date.time);
  return 1;
}
