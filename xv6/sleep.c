#include "types.h"
#include "stat.h"
#include "user.h"

// Comando de usuario: sleep
// ------------------------
// Pausa el proceso actual por N ticks (xv6 usa ~100 ticks por segundo).
// Nota: la syscall `sleep(int ticks)` ya existe; este programa solo la expone
// como comando de shell para pruebas/evidencia.

int
main(int argc, char *argv[])
{
  if(argc != 2){
    printf(2, "Uso: sleep <ticks>\n");
    exit();
  }

  int n = atoi(argv[1]);
  if(n < 0){
    printf(2, "sleep: ticks invalidos\n");
    exit();
  }

  sleep(n);
  exit();
}
