#include "types.h"
#include "stat.h"
#include "user.h"
#include "fs.h"

// Comando opcional (recomendado) del Entregable 2: `lsx`
// -----------------------------------------------------
// Extiende el comportamiento de `ls` para mostrar más información del inodo.
// Se implementa 100% en espacio de usuario (NO requiere syscalls nuevas)
// porque xv6 ya expone los campos necesarios vía `stat()`:
//   - st.size  : tamaño del archivo (bytes)
//   - st.nlink : número de enlaces (hard links)
//   - st.ino   : número de inodo
//   - st.type  : tipo (archivo/directorio/dispositivo)
//
// Salida (columnas):
//   NAME TYPE INO NLINK SIZE

static char*
fmtname(char *path)
{
  static char buf[DIRSIZ+1];
  char *p;

  for(p=path+strlen(path); p >= path && *p != '/'; p--)
    ;
  p++;

  if(strlen(p) >= DIRSIZ)
    return p;
  memmove(buf, p, strlen(p));
  memset(buf+strlen(p), ' ', DIRSIZ-strlen(p));
  buf[DIRSIZ] = 0;
  return buf;
}

static char*
typename(short type)
{
  // Traduce el `st.type` (T_DIR/T_FILE/T_DEV) a texto corto.
  switch(type){
  case T_DIR:  return "DIR";
  case T_FILE: return "FILE";
  case T_DEV:  return "DEV";
  default:     return "?";
  }
}

static void
lsx(char *path)
{
  // Similar a `ls.c`:
  // - Si `path` es un archivo: imprime una sola fila.
  // - Si `path` es un directorio: recorre entradas (`dirent`) y hace `stat()` por cada una.
  char buf[512], *p;
  int fd;
  struct dirent de;
  struct stat st;

  if((fd = open(path, 0)) < 0){
    printf(2, "lsx: cannot open %s\n", path);
    return;
  }

  if(fstat(fd, &st) < 0){
    printf(2, "lsx: cannot stat %s\n", path);
    close(fd);
    return;
  }

  // Header per target path (keeps output readable when multiple args)
  printf(1, "NAME             TYPE   INO  NLINK  SIZE\n");
  printf(1, "------------------------------------------\n");

  switch(st.type){
  case T_FILE:
  case T_DEV:
    printf(1, "%s %s   %d    %d      %d\n",
           fmtname(path), typename(st.type), st.ino, st.nlink, st.size);
    break;

  case T_DIR:
    // Para listar un directorio, armamos un path temporal: "<dir>/<entry>".
    // DIRSIZ viene del formato de directorios de xv6 (ver `fs.h`).
    if(strlen(path) + 1 + DIRSIZ + 1 > sizeof buf){
      printf(2, "lsx: path too long\n");
      break;
    }

    strcpy(buf, path);
    p = buf+strlen(buf);
    *p++ = '/';

    while(read(fd, &de, sizeof(de)) == sizeof(de)){
      if(de.inum == 0)
        continue;
      memmove(p, de.name, DIRSIZ);
      p[DIRSIZ] = 0;
      if(stat(buf, &st) < 0){
        printf(2, "lsx: cannot stat %s\n", buf);
        continue;
      }
      // Nota: para mostrar nlink/size/ino usamos `stat()` (no `fstat()`),
      // porque aquí estamos iterando entradas por nombre.
      printf(1, "%s %s   %d    %d      %d\n",
             fmtname(buf), typename(st.type), st.ino, st.nlink, st.size);
    }
    break;
  }

  close(fd);
}

int
main(int argc, char *argv[])
{
  int i;

  if(argc < 2){
    lsx(".");
    exit();
  }

  for(i = 1; i < argc; i++)
    lsx(argv[i]);

  exit();
}
