#include "types.h"
#include "user.h"

// Nombres de syscalls
char *nombres_syscalls[] = {
  "",
  "fork", "exit", "wait", "pipe", "read", "kill", "exec",
  "fstat", "chdir", "dup", "getpid", "sbrk", "sleep",
  "uptime", "open", "write", "mknod", "unlink", "link",
  "mkdir", "close", "trace", "psmem", "get_count"
};

// strlen simple compatible con xv6
int
my_strlen(const char *s)
{
  int n = 0;
  while(s[n] != 0)
    n++;
  return n;
}

int
main(int argc, char *argv[])
{
  int i;
  // Si se pasa un argumento, mostramos el conteo de esa syscall
  if(argc == 2){
    int id = atoi(argv[1]);
    int conteo = get_count(id);

    if(conteo < 0){
      printf(1, "Error: Syscall ID %d no valida\n", id);
    } else {
      printf(1, "Syscall %d (%s) usada %d veces\n",
             id, nombres_syscalls[id], conteo);
    }
  } else {
    //Tabla general
    printf(1, "ID   Nombre        Invocaciones\n");
    printf(1, "--------------------------------\n");

    for(i = 1; i <= 24; i++){
      int conteo = get_count(i);
      if(conteo > 0){
        int len = my_strlen(nombres_syscalls[i]);
        int espacios = 16 - len;

        if(i < 10)
          printf(1, " %d    %s", i, nombres_syscalls[i]);
        else
          printf(1, "%d    %s", i, nombres_syscalls[i]);

        while(espacios-- > 0)
          printf(1, " ");

        printf(1, "%d\n", conteo);
      }
    }
  }

  exit();
}
