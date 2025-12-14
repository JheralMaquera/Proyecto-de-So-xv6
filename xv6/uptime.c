#include "types.h"
#include "user.h"

int
main(int argc, char *argv[])
{
  // 1. Llamamos al sistema para pedir los ticks (reloj interno)
  int ticks = uptime();
  
  // 2. Cálculos matemáticos (1 segundo = 100 ticks aprox)
  int total_segundos = ticks / 100;
  int minutos = total_segundos / 60;
  int segundos = total_segundos % 60;
  int horas = minutos / 60;
  
  minutos = minutos % 60; // Ajuste para que no pase de 59

  // 3. Imprimimos bonito
  printf(1, "--------------------------------------\n");
  printf(1, "Estado del Sistema (Uptime)\n");
  printf(1, "--------------------------------------\n");
  
  printf(1, "Reloj Interno : %d ticks\n", ticks);
  printf(1, "Tiempo Activo : %d h, %d min, %d seg\n", horas, minutos, segundos);
  
  // Sugerencia para usar tu otro comando
  printf(1, "Nota: Ejecuta 'psmem' para ver uso de RAM.\n");
  
  exit();
}