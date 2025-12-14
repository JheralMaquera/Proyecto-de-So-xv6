#include "types.h"
#include "user.h"

int
main(int argc, char *argv[])
{
  // Llamamos a la syscall que imprime la tabla
  psmem();
  exit();
}