#include "types.h"
#include "stat.h"
#include "user.h"

int
main(int argc, char *argv[])
{
  if(argc < 2){
    printf(2, "Uso: trace [0|1]\n");
    exit();
  }

  // atoi convierte el texto "1" o "0" a número entero
  if (trace(atoi(argv[1])) < 0) {
      printf(2, "Error al cambiar trace\n");
  }
  
  exit();
}