# Proyecto de Sistemas Operativos - XV6

## Integrantes
- Alex Yasmani Huaracha Bellido
- Jheral Jhosue Maquera Laque 

## Descripción del Proyecto

Este proyecto consiste en la modificación y extensión del sistema operativo educativo **XV6** desarrollado por MIT. Se implementaron nuevas funcionalidades relacionadas con los conceptos vistos en el curso de Sistemas Operativos.

### Funcionalidades Implementadas

#### Entregable 1: Mecanismo de Trazado (Trace)
- Llamada al sistema `trace(int estado)` que activa/desactiva el trazado de syscalls
- Comando de usuario `trace` para habilitar/deshabilitar el modo de trazado
- Cuando está activo, imprime información de cada syscall ejecutada

#### Entregable 2: Comandos de Usuario (Unidad II)
1. **`uptime` extendido**: Muestra tiempo de ejecución del sistema en ticks, segundos, minutos y horas
2. **`psmem`**: Inspección de procesos mostrando PID, Estado (RUNNABLE/RUNNING/SLEEPING/etc.), Memoria y Nombre
3. **`lsx`** (Opcional): Extensión de `ls` que muestra información adicional de inodos (tipo, número de inodo, enlaces, tamaño)

#### Entregable 3: Contador de Invocaciones de Syscalls
- Estructura de datos en el kernel que cuenta invocaciones de cada syscall
- Syscall `get_count(id)` para consultar contadores
- Comando `scount` que muestra resumen global o consulta individual por ID

## Instrucciones para Compilar y Ejecutar

### Requisitos Previos
- GCC (compilador de C)
- QEMU (emulador)
- Make

En Ubuntu/Debian:
```bash
sudo apt-get install build-essential qemu-system-i386
```

### Compilación
```bash
cd xv6
make clean
make
```

### Ejecución
```bash
# Con interfaz gráfica
make qemu

# Sin interfaz gráfica (recomendado)
make qemu-nox
```

### Comandos Disponibles para Pruebas

#### Entregable 1 - Trace
```bash
trace on      # Activa trazado
ls            # Verás las syscalls ejecutadas
trace off     # Desactiva trazado
```

#### Entregable 2 - Comandos de Usuario
```bash
uptime        # Tiempo de ejecución del sistema
psmem         # Información de procesos y memoria
lsx           # Listado extendido de archivos
lsx README    # Info de un archivo específico
```

#### Entregable 3 - Contador de Syscalls
```bash
scount        # Resumen de todas las syscalls
scount 1      # Invocaciones de fork (ID=1)
scount 5      # Invocaciones de read (ID=5)
scount 16     # Invocaciones de write (ID=16)
```

### Salir de XV6
Presionar `Ctrl+A` y luego `X`

## Estructura de Archivos Modificados

| Archivo | Descripción |
|---------|-------------|
| `syscall.c` | Dispatcher de syscalls, contadores, trazado |
| `syscall.h` | Definición de números de syscalls |
| `sysproc.c` | Implementación de syscalls del sistema |
| `proc.c` | Función `psmem()` para inspección de procesos |
| `user.h` | Prototipos de syscalls para usuario |
| `usys.S` | Stubs de syscalls en ensamblador |
| `defs.h` | Declaraciones del kernel |
| `Makefile` | Agregados nuevos comandos de usuario |
| `trace.c` | Comando de usuario trace |
| `uptime.c` | Comando de usuario uptime extendido |
| `psmem.c` | Comando de usuario psmem |
| `lsx.c` | Comando de usuario lsx |
| `scount.c` | Comando de usuario scount |

## Referencias
- [XV6 - MIT](https://pdos.csail.mit.edu/6.828/2012/xv6.html)
- Libro: "xv6: a simple, Unix-like teaching operating system"
