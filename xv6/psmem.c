#include "types.h"
#include "user.h"

int
main(int argc, char *argv[])
{
  // Simplemente llamamos a nuestra syscall que imprime la tabla
  psmem();
  exit();
}