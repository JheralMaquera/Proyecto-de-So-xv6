#include "types.h"
#include "user.h"

int
main(int argc, char *argv[])
{
  // Obtener ticks del sistema
  int ticks = uptime();
  
  // E2: Conversion basica (1 seg = 100 ticks aprox)
  int total_segundos = ticks / 100;
  int minutos = total_segundos / 60;
  int segundos = total_segundos % 60;
  int horas = minutos / 60;
  
  minutos = minutos % 60; // Ajuste de minutos

  // Reporte formateado
  printf(1, "--------------------------------------\n");
  printf(1, "Estado del Sistema (Uptime)\n");
  printf(1, "--------------------------------------\n");
  
  printf(1, "Reloj Interno : %d ticks\n", ticks);
  printf(1, "Tiempo Activo : %d h, %d min, %d seg\n", horas, minutos, segundos);
  
  printf(1, "Nota: Usa 'psmem' para ver info de memoria.\n");
  
  exit();
}