
_scount:     formato del fichero elf32-i386


Desensamblado de la sección .text:

00000000 <main>:
  return n;
}

int
main(int argc, char *argv[])
{
   0:	8d 4c 24 04          	lea    0x4(%esp),%ecx
   4:	83 e4 f0             	and    $0xfffffff0,%esp
   7:	ff 71 fc             	push   -0x4(%ecx)
   a:	55                   	push   %ebp
   b:	89 e5                	mov    %esp,%ebp
   d:	57                   	push   %edi
   e:	56                   	push   %esi
   f:	53                   	push   %ebx
  10:	51                   	push   %ecx
  11:	83 ec 18             	sub    $0x18,%esp
  int i;

  if(argc == 2){
  14:	83 39 02             	cmpl   $0x2,(%ecx)
{
  17:	8b 41 04             	mov    0x4(%ecx),%eax
  if(argc == 2){
  1a:	0f 84 fe 00 00 00    	je     11e <main+0x11e>
      printf(1, "Syscall %d (%s) usada %d veces\n",
             id, nombres_syscalls[id], conteo);
    }
  } else {

    printf(1, "ID   Nombre        Invocaciones\n");
  20:	52                   	push   %edx
    printf(1, "--------------------------------\n");

    for(i = 1; i <= 24; i++){
  21:	bf 01 00 00 00       	mov    $0x1,%edi
    printf(1, "ID   Nombre        Invocaciones\n");
  26:	52                   	push   %edx
  27:	68 78 08 00 00       	push   $0x878
  2c:	6a 01                	push   $0x1
  2e:	e8 fd 04 00 00       	call   530 <printf>
    printf(1, "--------------------------------\n");
  33:	59                   	pop    %ecx
  34:	5b                   	pop    %ebx
  35:	68 9c 08 00 00       	push   $0x89c
  3a:	6a 01                	push   $0x1
  3c:	e8 ef 04 00 00       	call   530 <printf>
  41:	83 c4 10             	add    $0x10,%esp
  44:	eb 16                	jmp    5c <main+0x5c>
  46:	2e 8d b4 26 00 00 00 	lea    %cs:0x0(%esi,%eiz,1),%esi
  4d:	00 
  4e:	66 90                	xchg   %ax,%ax
    for(i = 1; i <= 24; i++){
  50:	83 c7 01             	add    $0x1,%edi
  53:	83 ff 19             	cmp    $0x19,%edi
  56:	0f 84 a0 00 00 00    	je     fc <main+0xfc>
      int conteo = get_count(i);
  5c:	83 ec 0c             	sub    $0xc,%esp
  5f:	57                   	push   %edi
  60:	e8 1e 04 00 00       	call   483 <get_count>
      if(conteo > 0){
  65:	83 c4 10             	add    $0x10,%esp
      int conteo = get_count(i);
  68:	89 c1                	mov    %eax,%ecx
      if(conteo > 0){
  6a:	85 c0                	test   %eax,%eax
  6c:	7e e2                	jle    50 <main+0x50>
        int len = my_strlen(nombres_syscalls[i]);
  6e:	8b 04 bd 80 0c 00 00 	mov    0xc80(,%edi,4),%eax
  int n = 0;
  75:	31 db                	xor    %ebx,%ebx
  while(s[n] != 0)
  77:	80 38 00             	cmpb   $0x0,(%eax)
  7a:	74 0d                	je     89 <main+0x89>
  7c:	8d 74 26 00          	lea    0x0(%esi,%eiz,1),%esi
    n++;
  80:	83 c3 01             	add    $0x1,%ebx
  while(s[n] != 0)
  83:	80 3c 18 00          	cmpb   $0x0,(%eax,%ebx,1)
  87:	75 f7                	jne    80 <main+0x80>
        int espacios = 16 - len;
  89:	ba 10 00 00 00       	mov    $0x10,%edx
  8e:	89 4d e0             	mov    %ecx,-0x20(%ebp)
  91:	29 da                	sub    %ebx,%edx
  93:	89 55 e4             	mov    %edx,-0x1c(%ebp)

        if(i < 10)
  96:	83 ff 09             	cmp    $0x9,%edi
  99:	7e 6d                	jle    108 <main+0x108>
          printf(1, " %d    %s", i, nombres_syscalls[i]);
        else
          printf(1, "%d    %s", i, nombres_syscalls[i]);
  9b:	50                   	push   %eax
  9c:	57                   	push   %edi
  9d:	68 bf 08 00 00       	push   $0x8bf
  a2:	6a 01                	push   $0x1
  a4:	e8 87 04 00 00       	call   530 <printf>
  a9:	8b 4d e0             	mov    -0x20(%ebp),%ecx
  ac:	83 c4 10             	add    $0x10,%esp

        while(espacios-- > 0)
  af:	8b 45 e4             	mov    -0x1c(%ebp),%eax
  b2:	be 0f 00 00 00       	mov    $0xf,%esi
  b7:	29 de                	sub    %ebx,%esi
  b9:	85 c0                	test   %eax,%eax
  bb:	7e 20                	jle    dd <main+0xdd>
  bd:	89 cb                	mov    %ecx,%ebx
  bf:	90                   	nop
          printf(1, " ");
  c0:	83 ec 08             	sub    $0x8,%esp
  c3:	68 c8 08 00 00       	push   $0x8c8
  c8:	6a 01                	push   $0x1
  ca:	e8 61 04 00 00       	call   530 <printf>
        while(espacios-- > 0)
  cf:	89 f0                	mov    %esi,%eax
  d1:	83 c4 10             	add    $0x10,%esp
  d4:	83 ee 01             	sub    $0x1,%esi
  d7:	85 c0                	test   %eax,%eax
  d9:	75 e5                	jne    c0 <main+0xc0>
  db:	89 d9                	mov    %ebx,%ecx

        printf(1, "%d\n", conteo);
  dd:	83 ec 04             	sub    $0x4,%esp
    for(i = 1; i <= 24; i++){
  e0:	83 c7 01             	add    $0x1,%edi
        printf(1, "%d\n", conteo);
  e3:	51                   	push   %ecx
  e4:	68 ca 08 00 00       	push   $0x8ca
  e9:	6a 01                	push   $0x1
  eb:	e8 40 04 00 00       	call   530 <printf>
  f0:	83 c4 10             	add    $0x10,%esp
    for(i = 1; i <= 24; i++){
  f3:	83 ff 19             	cmp    $0x19,%edi
  f6:	0f 85 60 ff ff ff    	jne    5c <main+0x5c>
      }
    }
  }

  exit();
  fc:	e8 d2 02 00 00       	call   3d3 <exit>
 101:	8d b4 26 00 00 00 00 	lea    0x0(%esi,%eiz,1),%esi
          printf(1, " %d    %s", i, nombres_syscalls[i]);
 108:	50                   	push   %eax
 109:	57                   	push   %edi
 10a:	68 be 08 00 00       	push   $0x8be
 10f:	6a 01                	push   $0x1
 111:	e8 1a 04 00 00       	call   530 <printf>
 116:	8b 4d e0             	mov    -0x20(%ebp),%ecx
 119:	83 c4 10             	add    $0x10,%esp
 11c:	eb 91                	jmp    af <main+0xaf>
    int id = atoi(argv[1]);
 11e:	83 ec 0c             	sub    $0xc,%esp
 121:	ff 70 04             	push   0x4(%eax)
 124:	e8 37 02 00 00       	call   360 <atoi>
    int conteo = get_count(id);
 129:	89 04 24             	mov    %eax,(%esp)
    int id = atoi(argv[1]);
 12c:	89 c3                	mov    %eax,%ebx
    int conteo = get_count(id);
 12e:	e8 50 03 00 00       	call   483 <get_count>
    if(conteo < 0){
 133:	83 c4 10             	add    $0x10,%esp
 136:	85 c0                	test   %eax,%eax
 138:	78 1d                	js     157 <main+0x157>
      printf(1, "Syscall %d (%s) usada %d veces\n",
 13a:	83 ec 0c             	sub    $0xc,%esp
 13d:	50                   	push   %eax
 13e:	ff 34 9d 80 0c 00 00 	push   0xc80(,%ebx,4)
 145:	53                   	push   %ebx
 146:	68 58 08 00 00       	push   $0x858
 14b:	6a 01                	push   $0x1
 14d:	e8 de 03 00 00       	call   530 <printf>
 152:	83 c4 20             	add    $0x20,%esp
 155:	eb a5                	jmp    fc <main+0xfc>
      printf(1, "Error: Syscall ID %d no valida\n", id);
 157:	56                   	push   %esi
 158:	53                   	push   %ebx
 159:	68 38 08 00 00       	push   $0x838
 15e:	6a 01                	push   $0x1
 160:	e8 cb 03 00 00       	call   530 <printf>
 165:	83 c4 10             	add    $0x10,%esp
 168:	eb 92                	jmp    fc <main+0xfc>
 16a:	66 90                	xchg   %ax,%ax
 16c:	66 90                	xchg   %ax,%ax
 16e:	66 90                	xchg   %ax,%ax

00000170 <my_strlen>:
{
 170:	55                   	push   %ebp
  int n = 0;
 171:	31 c0                	xor    %eax,%eax
{
 173:	89 e5                	mov    %esp,%ebp
 175:	8b 55 08             	mov    0x8(%ebp),%edx
  while(s[n] != 0)
 178:	80 3a 00             	cmpb   $0x0,(%edx)
 17b:	74 0c                	je     189 <my_strlen+0x19>
 17d:	8d 76 00             	lea    0x0(%esi),%esi
    n++;
 180:	83 c0 01             	add    $0x1,%eax
  while(s[n] != 0)
 183:	80 3c 02 00          	cmpb   $0x0,(%edx,%eax,1)
 187:	75 f7                	jne    180 <my_strlen+0x10>
}
 189:	5d                   	pop    %ebp
 18a:	c3                   	ret
 18b:	66 90                	xchg   %ax,%ax
 18d:	66 90                	xchg   %ax,%ax
 18f:	90                   	nop

00000190 <strcpy>:
#include "user.h"
#include "x86.h"

char*
strcpy(char *s, const char *t)
{
 190:	55                   	push   %ebp
  char *os;

  os = s;
  while((*s++ = *t++) != 0)
 191:	31 c0                	xor    %eax,%eax
{
 193:	89 e5                	mov    %esp,%ebp
 195:	53                   	push   %ebx
 196:	8b 4d 08             	mov    0x8(%ebp),%ecx
 199:	8b 5d 0c             	mov    0xc(%ebp),%ebx
 19c:	8d 74 26 00          	lea    0x0(%esi,%eiz,1),%esi
  while((*s++ = *t++) != 0)
 1a0:	0f b6 14 03          	movzbl (%ebx,%eax,1),%edx
 1a4:	88 14 01             	mov    %dl,(%ecx,%eax,1)
 1a7:	83 c0 01             	add    $0x1,%eax
 1aa:	84 d2                	test   %dl,%dl
 1ac:	75 f2                	jne    1a0 <strcpy+0x10>
    ;
  return os;
}
 1ae:	8b 5d fc             	mov    -0x4(%ebp),%ebx
 1b1:	89 c8                	mov    %ecx,%eax
 1b3:	c9                   	leave
 1b4:	c3                   	ret
 1b5:	2e 8d b4 26 00 00 00 	lea    %cs:0x0(%esi,%eiz,1),%esi
 1bc:	00 
 1bd:	8d 76 00             	lea    0x0(%esi),%esi

000001c0 <strcmp>:

int
strcmp(const char *p, const char *q)
{
 1c0:	55                   	push   %ebp
 1c1:	89 e5                	mov    %esp,%ebp
 1c3:	53                   	push   %ebx
 1c4:	8b 55 08             	mov    0x8(%ebp),%edx
 1c7:	8b 4d 0c             	mov    0xc(%ebp),%ecx
  while(*p && *p == *q)
 1ca:	0f b6 02             	movzbl (%edx),%eax
 1cd:	84 c0                	test   %al,%al
 1cf:	75 17                	jne    1e8 <strcmp+0x28>
 1d1:	eb 3a                	jmp    20d <strcmp+0x4d>
 1d3:	2e 8d 74 26 00       	lea    %cs:0x0(%esi,%eiz,1),%esi
 1d8:	0f b6 42 01          	movzbl 0x1(%edx),%eax
    p++, q++;
 1dc:	83 c2 01             	add    $0x1,%edx
 1df:	8d 59 01             	lea    0x1(%ecx),%ebx
  while(*p && *p == *q)
 1e2:	84 c0                	test   %al,%al
 1e4:	74 1a                	je     200 <strcmp+0x40>
 1e6:	89 d9                	mov    %ebx,%ecx
 1e8:	0f b6 19             	movzbl (%ecx),%ebx
 1eb:	38 c3                	cmp    %al,%bl
 1ed:	74 e9                	je     1d8 <strcmp+0x18>
  return (uchar)*p - (uchar)*q;
 1ef:	29 d8                	sub    %ebx,%eax
}
 1f1:	8b 5d fc             	mov    -0x4(%ebp),%ebx
 1f4:	c9                   	leave
 1f5:	c3                   	ret
 1f6:	2e 8d b4 26 00 00 00 	lea    %cs:0x0(%esi,%eiz,1),%esi
 1fd:	00 
 1fe:	66 90                	xchg   %ax,%ax
  return (uchar)*p - (uchar)*q;
 200:	0f b6 59 01          	movzbl 0x1(%ecx),%ebx
 204:	31 c0                	xor    %eax,%eax
 206:	29 d8                	sub    %ebx,%eax
}
 208:	8b 5d fc             	mov    -0x4(%ebp),%ebx
 20b:	c9                   	leave
 20c:	c3                   	ret
  return (uchar)*p - (uchar)*q;
 20d:	0f b6 19             	movzbl (%ecx),%ebx
 210:	31 c0                	xor    %eax,%eax
 212:	eb db                	jmp    1ef <strcmp+0x2f>
 214:	2e 8d b4 26 00 00 00 	lea    %cs:0x0(%esi,%eiz,1),%esi
 21b:	00 
 21c:	8d 74 26 00          	lea    0x0(%esi,%eiz,1),%esi

00000220 <strlen>:

uint
strlen(const char *s)
{
 220:	55                   	push   %ebp
 221:	89 e5                	mov    %esp,%ebp
 223:	8b 55 08             	mov    0x8(%ebp),%edx
  int n;

  for(n = 0; s[n]; n++)
 226:	80 3a 00             	cmpb   $0x0,(%edx)
 229:	74 15                	je     240 <strlen+0x20>
 22b:	31 c0                	xor    %eax,%eax
 22d:	8d 76 00             	lea    0x0(%esi),%esi
 230:	83 c0 01             	add    $0x1,%eax
 233:	80 3c 02 00          	cmpb   $0x0,(%edx,%eax,1)
 237:	89 c1                	mov    %eax,%ecx
 239:	75 f5                	jne    230 <strlen+0x10>
    ;
  return n;
}
 23b:	89 c8                	mov    %ecx,%eax
 23d:	5d                   	pop    %ebp
 23e:	c3                   	ret
 23f:	90                   	nop
  for(n = 0; s[n]; n++)
 240:	31 c9                	xor    %ecx,%ecx
}
 242:	5d                   	pop    %ebp
 243:	89 c8                	mov    %ecx,%eax
 245:	c3                   	ret
 246:	2e 8d b4 26 00 00 00 	lea    %cs:0x0(%esi,%eiz,1),%esi
 24d:	00 
 24e:	66 90                	xchg   %ax,%ax

00000250 <memset>:

void*
memset(void *dst, int c, uint n)
{
 250:	55                   	push   %ebp
 251:	89 e5                	mov    %esp,%ebp
 253:	57                   	push   %edi
 254:	8b 55 08             	mov    0x8(%ebp),%edx
}

static inline void
stosb(void *addr, int data, int cnt)
{
  asm volatile("cld; rep stosb" :
 257:	8b 4d 10             	mov    0x10(%ebp),%ecx
 25a:	8b 45 0c             	mov    0xc(%ebp),%eax
 25d:	89 d7                	mov    %edx,%edi
 25f:	fc                   	cld
 260:	f3 aa                	rep stos %al,%es:(%edi)
  stosb(dst, c, n);
  return dst;
}
 262:	8b 7d fc             	mov    -0x4(%ebp),%edi
 265:	89 d0                	mov    %edx,%eax
 267:	c9                   	leave
 268:	c3                   	ret
 269:	8d b4 26 00 00 00 00 	lea    0x0(%esi,%eiz,1),%esi

00000270 <strchr>:

char*
strchr(const char *s, char c)
{
 270:	55                   	push   %ebp
 271:	89 e5                	mov    %esp,%ebp
 273:	8b 45 08             	mov    0x8(%ebp),%eax
 276:	0f b6 4d 0c          	movzbl 0xc(%ebp),%ecx
  for(; *s; s++)
 27a:	0f b6 10             	movzbl (%eax),%edx
 27d:	84 d2                	test   %dl,%dl
 27f:	75 12                	jne    293 <strchr+0x23>
 281:	eb 1d                	jmp    2a0 <strchr+0x30>
 283:	2e 8d 74 26 00       	lea    %cs:0x0(%esi,%eiz,1),%esi
 288:	0f b6 50 01          	movzbl 0x1(%eax),%edx
 28c:	83 c0 01             	add    $0x1,%eax
 28f:	84 d2                	test   %dl,%dl
 291:	74 0d                	je     2a0 <strchr+0x30>
    if(*s == c)
 293:	38 d1                	cmp    %dl,%cl
 295:	75 f1                	jne    288 <strchr+0x18>
      return (char*)s;
  return 0;
}
 297:	5d                   	pop    %ebp
 298:	c3                   	ret
 299:	8d b4 26 00 00 00 00 	lea    0x0(%esi,%eiz,1),%esi
  return 0;
 2a0:	31 c0                	xor    %eax,%eax
}
 2a2:	5d                   	pop    %ebp
 2a3:	c3                   	ret
 2a4:	2e 8d b4 26 00 00 00 	lea    %cs:0x0(%esi,%eiz,1),%esi
 2ab:	00 
 2ac:	8d 74 26 00          	lea    0x0(%esi,%eiz,1),%esi

000002b0 <gets>:

char*
gets(char *buf, int max)
{
 2b0:	55                   	push   %ebp
 2b1:	89 e5                	mov    %esp,%ebp
 2b3:	57                   	push   %edi
 2b4:	56                   	push   %esi
  int i, cc;
  char c;

  for(i=0; i+1 < max; ){
    cc = read(0, &c, 1);
 2b5:	8d 75 e7             	lea    -0x19(%ebp),%esi
{
 2b8:	53                   	push   %ebx
  for(i=0; i+1 < max; ){
 2b9:	31 db                	xor    %ebx,%ebx
{
 2bb:	83 ec 1c             	sub    $0x1c,%esp
  for(i=0; i+1 < max; ){
 2be:	eb 27                	jmp    2e7 <gets+0x37>
    cc = read(0, &c, 1);
 2c0:	83 ec 04             	sub    $0x4,%esp
 2c3:	6a 01                	push   $0x1
 2c5:	56                   	push   %esi
 2c6:	6a 00                	push   $0x0
 2c8:	e8 1e 01 00 00       	call   3eb <read>
    if(cc < 1)
 2cd:	83 c4 10             	add    $0x10,%esp
 2d0:	85 c0                	test   %eax,%eax
 2d2:	7e 1d                	jle    2f1 <gets+0x41>
      break;
    buf[i++] = c;
 2d4:	0f b6 45 e7          	movzbl -0x19(%ebp),%eax
 2d8:	8b 55 08             	mov    0x8(%ebp),%edx
 2db:	88 44 1a ff          	mov    %al,-0x1(%edx,%ebx,1)
    if(c == '\n' || c == '\r')
 2df:	3c 0a                	cmp    $0xa,%al
 2e1:	74 10                	je     2f3 <gets+0x43>
 2e3:	3c 0d                	cmp    $0xd,%al
 2e5:	74 0c                	je     2f3 <gets+0x43>
  for(i=0; i+1 < max; ){
 2e7:	89 df                	mov    %ebx,%edi
 2e9:	83 c3 01             	add    $0x1,%ebx
 2ec:	3b 5d 0c             	cmp    0xc(%ebp),%ebx
 2ef:	7c cf                	jl     2c0 <gets+0x10>
 2f1:	89 fb                	mov    %edi,%ebx
      break;
  }
  buf[i] = '\0';
 2f3:	8b 45 08             	mov    0x8(%ebp),%eax
 2f6:	c6 04 18 00          	movb   $0x0,(%eax,%ebx,1)
  return buf;
}
 2fa:	8d 65 f4             	lea    -0xc(%ebp),%esp
 2fd:	5b                   	pop    %ebx
 2fe:	5e                   	pop    %esi
 2ff:	5f                   	pop    %edi
 300:	5d                   	pop    %ebp
 301:	c3                   	ret
 302:	2e 8d b4 26 00 00 00 	lea    %cs:0x0(%esi,%eiz,1),%esi
 309:	00 
 30a:	8d b6 00 00 00 00    	lea    0x0(%esi),%esi

00000310 <stat>:

int
stat(const char *n, struct stat *st)
{
 310:	55                   	push   %ebp
 311:	89 e5                	mov    %esp,%ebp
 313:	56                   	push   %esi
 314:	53                   	push   %ebx
  int fd;
  int r;

  fd = open(n, O_RDONLY);
 315:	83 ec 08             	sub    $0x8,%esp
 318:	6a 00                	push   $0x0
 31a:	ff 75 08             	push   0x8(%ebp)
 31d:	e8 f1 00 00 00       	call   413 <open>
  if(fd < 0)
 322:	83 c4 10             	add    $0x10,%esp
 325:	85 c0                	test   %eax,%eax
 327:	78 27                	js     350 <stat+0x40>
    return -1;
  r = fstat(fd, st);
 329:	83 ec 08             	sub    $0x8,%esp
 32c:	ff 75 0c             	push   0xc(%ebp)
 32f:	89 c3                	mov    %eax,%ebx
 331:	50                   	push   %eax
 332:	e8 f4 00 00 00       	call   42b <fstat>
  close(fd);
 337:	89 1c 24             	mov    %ebx,(%esp)
  r = fstat(fd, st);
 33a:	89 c6                	mov    %eax,%esi
  close(fd);
 33c:	e8 ba 00 00 00       	call   3fb <close>
  return r;
 341:	83 c4 10             	add    $0x10,%esp
}
 344:	8d 65 f8             	lea    -0x8(%ebp),%esp
 347:	89 f0                	mov    %esi,%eax
 349:	5b                   	pop    %ebx
 34a:	5e                   	pop    %esi
 34b:	5d                   	pop    %ebp
 34c:	c3                   	ret
 34d:	8d 76 00             	lea    0x0(%esi),%esi
    return -1;
 350:	be ff ff ff ff       	mov    $0xffffffff,%esi
 355:	eb ed                	jmp    344 <stat+0x34>
 357:	2e 8d b4 26 00 00 00 	lea    %cs:0x0(%esi,%eiz,1),%esi
 35e:	00 
 35f:	90                   	nop

00000360 <atoi>:

int
atoi(const char *s)
{
 360:	55                   	push   %ebp
 361:	89 e5                	mov    %esp,%ebp
 363:	53                   	push   %ebx
 364:	8b 55 08             	mov    0x8(%ebp),%edx
  int n;

  n = 0;
  while('0' <= *s && *s <= '9')
 367:	0f be 02             	movsbl (%edx),%eax
 36a:	8d 48 d0             	lea    -0x30(%eax),%ecx
 36d:	80 f9 09             	cmp    $0x9,%cl
  n = 0;
 370:	b9 00 00 00 00       	mov    $0x0,%ecx
  while('0' <= *s && *s <= '9')
 375:	77 1e                	ja     395 <atoi+0x35>
 377:	2e 8d b4 26 00 00 00 	lea    %cs:0x0(%esi,%eiz,1),%esi
 37e:	00 
 37f:	90                   	nop
    n = n*10 + *s++ - '0';
 380:	83 c2 01             	add    $0x1,%edx
 383:	8d 0c 89             	lea    (%ecx,%ecx,4),%ecx
 386:	8d 4c 48 d0          	lea    -0x30(%eax,%ecx,2),%ecx
  while('0' <= *s && *s <= '9')
 38a:	0f be 02             	movsbl (%edx),%eax
 38d:	8d 58 d0             	lea    -0x30(%eax),%ebx
 390:	80 fb 09             	cmp    $0x9,%bl
 393:	76 eb                	jbe    380 <atoi+0x20>
  return n;
}
 395:	8b 5d fc             	mov    -0x4(%ebp),%ebx
 398:	89 c8                	mov    %ecx,%eax
 39a:	c9                   	leave
 39b:	c3                   	ret
 39c:	8d 74 26 00          	lea    0x0(%esi,%eiz,1),%esi

000003a0 <memmove>:

void*
memmove(void *vdst, const void *vsrc, int n)
{
 3a0:	55                   	push   %ebp
 3a1:	89 e5                	mov    %esp,%ebp
 3a3:	57                   	push   %edi
 3a4:	8b 45 10             	mov    0x10(%ebp),%eax
 3a7:	8b 55 08             	mov    0x8(%ebp),%edx
 3aa:	56                   	push   %esi
 3ab:	8b 75 0c             	mov    0xc(%ebp),%esi
  char *dst;
  const char *src;

  dst = vdst;
  src = vsrc;
  while(n-- > 0)
 3ae:	85 c0                	test   %eax,%eax
 3b0:	7e 13                	jle    3c5 <memmove+0x25>
 3b2:	01 d0                	add    %edx,%eax
  dst = vdst;
 3b4:	89 d7                	mov    %edx,%edi
 3b6:	2e 8d b4 26 00 00 00 	lea    %cs:0x0(%esi,%eiz,1),%esi
 3bd:	00 
 3be:	66 90                	xchg   %ax,%ax
    *dst++ = *src++;
 3c0:	a4                   	movsb  %ds:(%esi),%es:(%edi)
  while(n-- > 0)
 3c1:	39 f8                	cmp    %edi,%eax
 3c3:	75 fb                	jne    3c0 <memmove+0x20>
  return vdst;
}
 3c5:	5e                   	pop    %esi
 3c6:	89 d0                	mov    %edx,%eax
 3c8:	5f                   	pop    %edi
 3c9:	5d                   	pop    %ebp
 3ca:	c3                   	ret

000003cb <fork>:
  name: \
    movl $SYS_ ## name, %eax; \
    int $T_SYSCALL; \
    ret

SYSCALL(fork)
 3cb:	b8 01 00 00 00       	mov    $0x1,%eax
 3d0:	cd 40                	int    $0x40
 3d2:	c3                   	ret

000003d3 <exit>:
SYSCALL(exit)
 3d3:	b8 02 00 00 00       	mov    $0x2,%eax
 3d8:	cd 40                	int    $0x40
 3da:	c3                   	ret

000003db <wait>:
SYSCALL(wait)
 3db:	b8 03 00 00 00       	mov    $0x3,%eax
 3e0:	cd 40                	int    $0x40
 3e2:	c3                   	ret

000003e3 <pipe>:
SYSCALL(pipe)
 3e3:	b8 04 00 00 00       	mov    $0x4,%eax
 3e8:	cd 40                	int    $0x40
 3ea:	c3                   	ret

000003eb <read>:
SYSCALL(read)
 3eb:	b8 05 00 00 00       	mov    $0x5,%eax
 3f0:	cd 40                	int    $0x40
 3f2:	c3                   	ret

000003f3 <write>:
SYSCALL(write)
 3f3:	b8 10 00 00 00       	mov    $0x10,%eax
 3f8:	cd 40                	int    $0x40
 3fa:	c3                   	ret

000003fb <close>:
SYSCALL(close)
 3fb:	b8 15 00 00 00       	mov    $0x15,%eax
 400:	cd 40                	int    $0x40
 402:	c3                   	ret

00000403 <kill>:
SYSCALL(kill)
 403:	b8 06 00 00 00       	mov    $0x6,%eax
 408:	cd 40                	int    $0x40
 40a:	c3                   	ret

0000040b <exec>:
SYSCALL(exec)
 40b:	b8 07 00 00 00       	mov    $0x7,%eax
 410:	cd 40                	int    $0x40
 412:	c3                   	ret

00000413 <open>:
SYSCALL(open)
 413:	b8 0f 00 00 00       	mov    $0xf,%eax
 418:	cd 40                	int    $0x40
 41a:	c3                   	ret

0000041b <mknod>:
SYSCALL(mknod)
 41b:	b8 11 00 00 00       	mov    $0x11,%eax
 420:	cd 40                	int    $0x40
 422:	c3                   	ret

00000423 <unlink>:
SYSCALL(unlink)
 423:	b8 12 00 00 00       	mov    $0x12,%eax
 428:	cd 40                	int    $0x40
 42a:	c3                   	ret

0000042b <fstat>:
SYSCALL(fstat)
 42b:	b8 08 00 00 00       	mov    $0x8,%eax
 430:	cd 40                	int    $0x40
 432:	c3                   	ret

00000433 <link>:
SYSCALL(link)
 433:	b8 13 00 00 00       	mov    $0x13,%eax
 438:	cd 40                	int    $0x40
 43a:	c3                   	ret

0000043b <mkdir>:
SYSCALL(mkdir)
 43b:	b8 14 00 00 00       	mov    $0x14,%eax
 440:	cd 40                	int    $0x40
 442:	c3                   	ret

00000443 <chdir>:
SYSCALL(chdir)
 443:	b8 09 00 00 00       	mov    $0x9,%eax
 448:	cd 40                	int    $0x40
 44a:	c3                   	ret

0000044b <dup>:
SYSCALL(dup)
 44b:	b8 0a 00 00 00       	mov    $0xa,%eax
 450:	cd 40                	int    $0x40
 452:	c3                   	ret

00000453 <getpid>:
SYSCALL(getpid)
 453:	b8 0b 00 00 00       	mov    $0xb,%eax
 458:	cd 40                	int    $0x40
 45a:	c3                   	ret

0000045b <sbrk>:
SYSCALL(sbrk)
 45b:	b8 0c 00 00 00       	mov    $0xc,%eax
 460:	cd 40                	int    $0x40
 462:	c3                   	ret

00000463 <sleep>:
SYSCALL(sleep)
 463:	b8 0d 00 00 00       	mov    $0xd,%eax
 468:	cd 40                	int    $0x40
 46a:	c3                   	ret

0000046b <uptime>:
SYSCALL(uptime)
 46b:	b8 0e 00 00 00       	mov    $0xe,%eax
 470:	cd 40                	int    $0x40
 472:	c3                   	ret

00000473 <trace>:
SYSCALL(trace)
 473:	b8 16 00 00 00       	mov    $0x16,%eax
 478:	cd 40                	int    $0x40
 47a:	c3                   	ret

0000047b <psmem>:
SYSCALL(psmem)
 47b:	b8 17 00 00 00       	mov    $0x17,%eax
 480:	cd 40                	int    $0x40
 482:	c3                   	ret

00000483 <get_count>:
SYSCALL(get_count)
 483:	b8 18 00 00 00       	mov    $0x18,%eax
 488:	cd 40                	int    $0x40
 48a:	c3                   	ret
 48b:	66 90                	xchg   %ax,%ax
 48d:	66 90                	xchg   %ax,%ax
 48f:	90                   	nop

00000490 <printint>:
  write(fd, &c, 1);
}

static void
printint(int fd, int xx, int base, int sgn)
{
 490:	55                   	push   %ebp
 491:	89 e5                	mov    %esp,%ebp
 493:	57                   	push   %edi
 494:	56                   	push   %esi
 495:	53                   	push   %ebx
 496:	89 cb                	mov    %ecx,%ebx
  uint x;

  neg = 0;
  if(sgn && xx < 0){
    neg = 1;
    x = -xx;
 498:	89 d1                	mov    %edx,%ecx
{
 49a:	83 ec 3c             	sub    $0x3c,%esp
 49d:	89 45 c0             	mov    %eax,-0x40(%ebp)
  if(sgn && xx < 0){
 4a0:	85 d2                	test   %edx,%edx
 4a2:	0f 89 80 00 00 00    	jns    528 <printint+0x98>
 4a8:	f6 45 08 01          	testb  $0x1,0x8(%ebp)
 4ac:	74 7a                	je     528 <printint+0x98>
    x = -xx;
 4ae:	f7 d9                	neg    %ecx
    neg = 1;
 4b0:	b8 01 00 00 00       	mov    $0x1,%eax
  } else {
    x = xx;
  }

  i = 0;
 4b5:	89 45 c4             	mov    %eax,-0x3c(%ebp)
 4b8:	31 f6                	xor    %esi,%esi
 4ba:	8d b6 00 00 00 00    	lea    0x0(%esi),%esi
  do{
    buf[i++] = digits[x % base];
 4c0:	89 c8                	mov    %ecx,%eax
 4c2:	31 d2                	xor    %edx,%edx
 4c4:	89 f7                	mov    %esi,%edi
 4c6:	f7 f3                	div    %ebx
 4c8:	8d 76 01             	lea    0x1(%esi),%esi
 4cb:	0f b6 92 b4 09 00 00 	movzbl 0x9b4(%edx),%edx
 4d2:	88 54 35 d7          	mov    %dl,-0x29(%ebp,%esi,1)
  }while((x /= base) != 0);
 4d6:	89 ca                	mov    %ecx,%edx
 4d8:	89 c1                	mov    %eax,%ecx
 4da:	39 da                	cmp    %ebx,%edx
 4dc:	73 e2                	jae    4c0 <printint+0x30>
  if(neg)
 4de:	8b 45 c4             	mov    -0x3c(%ebp),%eax
 4e1:	85 c0                	test   %eax,%eax
 4e3:	74 07                	je     4ec <printint+0x5c>
    buf[i++] = '-';
 4e5:	c6 44 35 d8 2d       	movb   $0x2d,-0x28(%ebp,%esi,1)

  while(--i >= 0)
 4ea:	89 f7                	mov    %esi,%edi
 4ec:	8d 5d d8             	lea    -0x28(%ebp),%ebx
 4ef:	8b 75 c0             	mov    -0x40(%ebp),%esi
 4f2:	01 df                	add    %ebx,%edi
 4f4:	8d 74 26 00          	lea    0x0(%esi,%eiz,1),%esi
    putc(fd, buf[i]);
 4f8:	0f b6 07             	movzbl (%edi),%eax
  write(fd, &c, 1);
 4fb:	83 ec 04             	sub    $0x4,%esp
 4fe:	88 45 d7             	mov    %al,-0x29(%ebp)
 501:	8d 45 d7             	lea    -0x29(%ebp),%eax
 504:	6a 01                	push   $0x1
 506:	50                   	push   %eax
 507:	56                   	push   %esi
 508:	e8 e6 fe ff ff       	call   3f3 <write>
  while(--i >= 0)
 50d:	89 f8                	mov    %edi,%eax
 50f:	83 c4 10             	add    $0x10,%esp
 512:	83 ef 01             	sub    $0x1,%edi
 515:	39 c3                	cmp    %eax,%ebx
 517:	75 df                	jne    4f8 <printint+0x68>
}
 519:	8d 65 f4             	lea    -0xc(%ebp),%esp
 51c:	5b                   	pop    %ebx
 51d:	5e                   	pop    %esi
 51e:	5f                   	pop    %edi
 51f:	5d                   	pop    %ebp
 520:	c3                   	ret
 521:	8d b4 26 00 00 00 00 	lea    0x0(%esi,%eiz,1),%esi
  neg = 0;
 528:	31 c0                	xor    %eax,%eax
 52a:	eb 89                	jmp    4b5 <printint+0x25>
 52c:	8d 74 26 00          	lea    0x0(%esi,%eiz,1),%esi

00000530 <printf>:

// Print to the given fd. Only understands %d, %x, %p, %s.
void
printf(int fd, const char *fmt, ...)
{
 530:	55                   	push   %ebp
 531:	89 e5                	mov    %esp,%ebp
 533:	57                   	push   %edi
 534:	56                   	push   %esi
 535:	53                   	push   %ebx
 536:	83 ec 2c             	sub    $0x2c,%esp
  int c, i, state;
  uint *ap;

  state = 0;
  ap = (uint*)(void*)&fmt + 1;
  for(i = 0; fmt[i]; i++){
 539:	8b 75 0c             	mov    0xc(%ebp),%esi
{
 53c:	8b 7d 08             	mov    0x8(%ebp),%edi
  for(i = 0; fmt[i]; i++){
 53f:	0f b6 1e             	movzbl (%esi),%ebx
 542:	83 c6 01             	add    $0x1,%esi
 545:	84 db                	test   %bl,%bl
 547:	74 67                	je     5b0 <printf+0x80>
 549:	8d 4d 10             	lea    0x10(%ebp),%ecx
 54c:	31 d2                	xor    %edx,%edx
 54e:	89 4d d0             	mov    %ecx,-0x30(%ebp)
 551:	eb 34                	jmp    587 <printf+0x57>
 553:	2e 8d 74 26 00       	lea    %cs:0x0(%esi,%eiz,1),%esi
 558:	89 55 d4             	mov    %edx,-0x2c(%ebp)
    c = fmt[i] & 0xff;
    if(state == 0){
      if(c == '%'){
        state = '%';
 55b:	ba 25 00 00 00       	mov    $0x25,%edx
      if(c == '%'){
 560:	83 f8 25             	cmp    $0x25,%eax
 563:	74 18                	je     57d <printf+0x4d>
  write(fd, &c, 1);
 565:	83 ec 04             	sub    $0x4,%esp
 568:	8d 45 e7             	lea    -0x19(%ebp),%eax
 56b:	88 5d e7             	mov    %bl,-0x19(%ebp)
 56e:	6a 01                	push   $0x1
 570:	50                   	push   %eax
 571:	57                   	push   %edi
 572:	e8 7c fe ff ff       	call   3f3 <write>
 577:	8b 55 d4             	mov    -0x2c(%ebp),%edx
      } else {
        putc(fd, c);
 57a:	83 c4 10             	add    $0x10,%esp
  for(i = 0; fmt[i]; i++){
 57d:	0f b6 1e             	movzbl (%esi),%ebx
 580:	83 c6 01             	add    $0x1,%esi
 583:	84 db                	test   %bl,%bl
 585:	74 29                	je     5b0 <printf+0x80>
    c = fmt[i] & 0xff;
 587:	0f b6 c3             	movzbl %bl,%eax
    if(state == 0){
 58a:	85 d2                	test   %edx,%edx
 58c:	74 ca                	je     558 <printf+0x28>
      }
    } else if(state == '%'){
 58e:	83 fa 25             	cmp    $0x25,%edx
 591:	75 ea                	jne    57d <printf+0x4d>
      if(c == 'd'){
 593:	83 f8 25             	cmp    $0x25,%eax
 596:	0f 84 04 01 00 00    	je     6a0 <printf+0x170>
 59c:	83 e8 63             	sub    $0x63,%eax
 59f:	83 f8 15             	cmp    $0x15,%eax
 5a2:	77 1c                	ja     5c0 <printf+0x90>
 5a4:	ff 24 85 5c 09 00 00 	jmp    *0x95c(,%eax,4)
 5ab:	2e 8d 74 26 00       	lea    %cs:0x0(%esi,%eiz,1),%esi
        putc(fd, c);
      }
      state = 0;
    }
  }
}
 5b0:	8d 65 f4             	lea    -0xc(%ebp),%esp
 5b3:	5b                   	pop    %ebx
 5b4:	5e                   	pop    %esi
 5b5:	5f                   	pop    %edi
 5b6:	5d                   	pop    %ebp
 5b7:	c3                   	ret
 5b8:	2e 8d b4 26 00 00 00 	lea    %cs:0x0(%esi,%eiz,1),%esi
 5bf:	00 
  write(fd, &c, 1);
 5c0:	83 ec 04             	sub    $0x4,%esp
 5c3:	8d 55 e7             	lea    -0x19(%ebp),%edx
 5c6:	c6 45 e7 25          	movb   $0x25,-0x19(%ebp)
 5ca:	6a 01                	push   $0x1
 5cc:	52                   	push   %edx
 5cd:	89 55 d4             	mov    %edx,-0x2c(%ebp)
 5d0:	57                   	push   %edi
 5d1:	e8 1d fe ff ff       	call   3f3 <write>
 5d6:	83 c4 0c             	add    $0xc,%esp
 5d9:	88 5d e7             	mov    %bl,-0x19(%ebp)
 5dc:	6a 01                	push   $0x1
 5de:	8b 55 d4             	mov    -0x2c(%ebp),%edx
 5e1:	52                   	push   %edx
 5e2:	57                   	push   %edi
 5e3:	e8 0b fe ff ff       	call   3f3 <write>
        putc(fd, c);
 5e8:	83 c4 10             	add    $0x10,%esp
      state = 0;
 5eb:	31 d2                	xor    %edx,%edx
 5ed:	eb 8e                	jmp    57d <printf+0x4d>
 5ef:	90                   	nop
        printint(fd, *ap, 16, 0);
 5f0:	8b 5d d0             	mov    -0x30(%ebp),%ebx
 5f3:	83 ec 0c             	sub    $0xc,%esp
 5f6:	b9 10 00 00 00       	mov    $0x10,%ecx
 5fb:	8b 13                	mov    (%ebx),%edx
 5fd:	6a 00                	push   $0x0
 5ff:	89 f8                	mov    %edi,%eax
        ap++;
 601:	83 c3 04             	add    $0x4,%ebx
        printint(fd, *ap, 16, 0);
 604:	e8 87 fe ff ff       	call   490 <printint>
        ap++;
 609:	89 5d d0             	mov    %ebx,-0x30(%ebp)
 60c:	83 c4 10             	add    $0x10,%esp
      state = 0;
 60f:	31 d2                	xor    %edx,%edx
 611:	e9 67 ff ff ff       	jmp    57d <printf+0x4d>
        s = (char*)*ap;
 616:	8b 45 d0             	mov    -0x30(%ebp),%eax
 619:	8b 18                	mov    (%eax),%ebx
        ap++;
 61b:	83 c0 04             	add    $0x4,%eax
 61e:	89 45 d0             	mov    %eax,-0x30(%ebp)
        if(s == 0)
 621:	85 db                	test   %ebx,%ebx
 623:	0f 84 87 00 00 00    	je     6b0 <printf+0x180>
        while(*s != 0){
 629:	0f b6 03             	movzbl (%ebx),%eax
      state = 0;
 62c:	31 d2                	xor    %edx,%edx
        while(*s != 0){
 62e:	84 c0                	test   %al,%al
 630:	0f 84 47 ff ff ff    	je     57d <printf+0x4d>
 636:	8d 55 e7             	lea    -0x19(%ebp),%edx
 639:	89 75 d4             	mov    %esi,-0x2c(%ebp)
 63c:	89 de                	mov    %ebx,%esi
 63e:	89 d3                	mov    %edx,%ebx
  write(fd, &c, 1);
 640:	83 ec 04             	sub    $0x4,%esp
 643:	88 45 e7             	mov    %al,-0x19(%ebp)
          s++;
 646:	83 c6 01             	add    $0x1,%esi
  write(fd, &c, 1);
 649:	6a 01                	push   $0x1
 64b:	53                   	push   %ebx
 64c:	57                   	push   %edi
 64d:	e8 a1 fd ff ff       	call   3f3 <write>
        while(*s != 0){
 652:	0f b6 06             	movzbl (%esi),%eax
 655:	83 c4 10             	add    $0x10,%esp
 658:	84 c0                	test   %al,%al
 65a:	75 e4                	jne    640 <printf+0x110>
      state = 0;
 65c:	8b 75 d4             	mov    -0x2c(%ebp),%esi
 65f:	31 d2                	xor    %edx,%edx
 661:	e9 17 ff ff ff       	jmp    57d <printf+0x4d>
        printint(fd, *ap, 10, 1);
 666:	8b 5d d0             	mov    -0x30(%ebp),%ebx
 669:	83 ec 0c             	sub    $0xc,%esp
 66c:	b9 0a 00 00 00       	mov    $0xa,%ecx
 671:	8b 13                	mov    (%ebx),%edx
 673:	6a 01                	push   $0x1
 675:	eb 88                	jmp    5ff <printf+0xcf>
        putc(fd, *ap);
 677:	8b 5d d0             	mov    -0x30(%ebp),%ebx
  write(fd, &c, 1);
 67a:	83 ec 04             	sub    $0x4,%esp
 67d:	8d 55 e7             	lea    -0x19(%ebp),%edx
        putc(fd, *ap);
 680:	8b 03                	mov    (%ebx),%eax
        ap++;
 682:	83 c3 04             	add    $0x4,%ebx
        putc(fd, *ap);
 685:	88 45 e7             	mov    %al,-0x19(%ebp)
  write(fd, &c, 1);
 688:	6a 01                	push   $0x1
 68a:	52                   	push   %edx
 68b:	57                   	push   %edi
 68c:	e8 62 fd ff ff       	call   3f3 <write>
        ap++;
 691:	89 5d d0             	mov    %ebx,-0x30(%ebp)
 694:	83 c4 10             	add    $0x10,%esp
      state = 0;
 697:	31 d2                	xor    %edx,%edx
 699:	e9 df fe ff ff       	jmp    57d <printf+0x4d>
 69e:	66 90                	xchg   %ax,%ax
  write(fd, &c, 1);
 6a0:	83 ec 04             	sub    $0x4,%esp
 6a3:	88 5d e7             	mov    %bl,-0x19(%ebp)
 6a6:	8d 55 e7             	lea    -0x19(%ebp),%edx
 6a9:	6a 01                	push   $0x1
 6ab:	e9 31 ff ff ff       	jmp    5e1 <printf+0xb1>
 6b0:	b8 28 00 00 00       	mov    $0x28,%eax
          s = "(null)";
 6b5:	bb 54 09 00 00       	mov    $0x954,%ebx
 6ba:	e9 77 ff ff ff       	jmp    636 <printf+0x106>
 6bf:	90                   	nop

000006c0 <free>:
static Header base;
static Header *freep;

void
free(void *ap)
{
 6c0:	55                   	push   %ebp
  Header *bp, *p;

  bp = (Header*)ap - 1;
  for(p = freep; !(bp > p && bp < p->s.ptr); p = p->s.ptr)
 6c1:	a1 e4 0c 00 00       	mov    0xce4,%eax
{
 6c6:	89 e5                	mov    %esp,%ebp
 6c8:	57                   	push   %edi
 6c9:	56                   	push   %esi
 6ca:	53                   	push   %ebx
 6cb:	8b 5d 08             	mov    0x8(%ebp),%ebx
  bp = (Header*)ap - 1;
 6ce:	8d 4b f8             	lea    -0x8(%ebx),%ecx
  for(p = freep; !(bp > p && bp < p->s.ptr); p = p->s.ptr)
 6d1:	8d b4 26 00 00 00 00 	lea    0x0(%esi,%eiz,1),%esi
    if(p >= p->s.ptr && (bp > p || bp < p->s.ptr))
 6d8:	8b 10                	mov    (%eax),%edx
  for(p = freep; !(bp > p && bp < p->s.ptr); p = p->s.ptr)
 6da:	39 c8                	cmp    %ecx,%eax
 6dc:	73 32                	jae    710 <free+0x50>
 6de:	39 d1                	cmp    %edx,%ecx
 6e0:	72 04                	jb     6e6 <free+0x26>
    if(p >= p->s.ptr && (bp > p || bp < p->s.ptr))
 6e2:	39 d0                	cmp    %edx,%eax
 6e4:	72 32                	jb     718 <free+0x58>
      break;
  if(bp + bp->s.size == p->s.ptr){
 6e6:	8b 73 fc             	mov    -0x4(%ebx),%esi
 6e9:	8d 3c f1             	lea    (%ecx,%esi,8),%edi
 6ec:	39 fa                	cmp    %edi,%edx
 6ee:	74 30                	je     720 <free+0x60>
    bp->s.size += p->s.ptr->s.size;
    bp->s.ptr = p->s.ptr->s.ptr;
 6f0:	89 53 f8             	mov    %edx,-0x8(%ebx)
  } else
    bp->s.ptr = p->s.ptr;
  if(p + p->s.size == bp){
 6f3:	8b 50 04             	mov    0x4(%eax),%edx
 6f6:	8d 34 d0             	lea    (%eax,%edx,8),%esi
 6f9:	39 f1                	cmp    %esi,%ecx
 6fb:	74 3a                	je     737 <free+0x77>
    p->s.size += bp->s.size;
    p->s.ptr = bp->s.ptr;
 6fd:	89 08                	mov    %ecx,(%eax)
  } else
    p->s.ptr = bp;
  freep = p;
}
 6ff:	5b                   	pop    %ebx
  freep = p;
 700:	a3 e4 0c 00 00       	mov    %eax,0xce4
}
 705:	5e                   	pop    %esi
 706:	5f                   	pop    %edi
 707:	5d                   	pop    %ebp
 708:	c3                   	ret
 709:	8d b4 26 00 00 00 00 	lea    0x0(%esi,%eiz,1),%esi
    if(p >= p->s.ptr && (bp > p || bp < p->s.ptr))
 710:	39 d0                	cmp    %edx,%eax
 712:	72 04                	jb     718 <free+0x58>
 714:	39 d1                	cmp    %edx,%ecx
 716:	72 ce                	jb     6e6 <free+0x26>
{
 718:	89 d0                	mov    %edx,%eax
 71a:	eb bc                	jmp    6d8 <free+0x18>
 71c:	8d 74 26 00          	lea    0x0(%esi,%eiz,1),%esi
    bp->s.size += p->s.ptr->s.size;
 720:	03 72 04             	add    0x4(%edx),%esi
 723:	89 73 fc             	mov    %esi,-0x4(%ebx)
    bp->s.ptr = p->s.ptr->s.ptr;
 726:	8b 10                	mov    (%eax),%edx
 728:	8b 12                	mov    (%edx),%edx
 72a:	89 53 f8             	mov    %edx,-0x8(%ebx)
  if(p + p->s.size == bp){
 72d:	8b 50 04             	mov    0x4(%eax),%edx
 730:	8d 34 d0             	lea    (%eax,%edx,8),%esi
 733:	39 f1                	cmp    %esi,%ecx
 735:	75 c6                	jne    6fd <free+0x3d>
    p->s.size += bp->s.size;
 737:	03 53 fc             	add    -0x4(%ebx),%edx
  freep = p;
 73a:	a3 e4 0c 00 00       	mov    %eax,0xce4
    p->s.size += bp->s.size;
 73f:	89 50 04             	mov    %edx,0x4(%eax)
    p->s.ptr = bp->s.ptr;
 742:	8b 4b f8             	mov    -0x8(%ebx),%ecx
 745:	89 08                	mov    %ecx,(%eax)
}
 747:	5b                   	pop    %ebx
 748:	5e                   	pop    %esi
 749:	5f                   	pop    %edi
 74a:	5d                   	pop    %ebp
 74b:	c3                   	ret
 74c:	8d 74 26 00          	lea    0x0(%esi,%eiz,1),%esi

00000750 <malloc>:
  return freep;
}

void*
malloc(uint nbytes)
{
 750:	55                   	push   %ebp
 751:	89 e5                	mov    %esp,%ebp
 753:	57                   	push   %edi
 754:	56                   	push   %esi
 755:	53                   	push   %ebx
 756:	83 ec 0c             	sub    $0xc,%esp
  Header *p, *prevp;
  uint nunits;

  nunits = (nbytes + sizeof(Header) - 1)/sizeof(Header) + 1;
 759:	8b 45 08             	mov    0x8(%ebp),%eax
  if((prevp = freep) == 0){
 75c:	8b 15 e4 0c 00 00    	mov    0xce4,%edx
  nunits = (nbytes + sizeof(Header) - 1)/sizeof(Header) + 1;
 762:	8d 78 07             	lea    0x7(%eax),%edi
 765:	c1 ef 03             	shr    $0x3,%edi
 768:	83 c7 01             	add    $0x1,%edi
  if((prevp = freep) == 0){
 76b:	85 d2                	test   %edx,%edx
 76d:	0f 84 8d 00 00 00    	je     800 <malloc+0xb0>
    base.s.ptr = freep = prevp = &base;
    base.s.size = 0;
  }
  for(p = prevp->s.ptr; ; prevp = p, p = p->s.ptr){
 773:	8b 02                	mov    (%edx),%eax
    if(p->s.size >= nunits){
 775:	8b 48 04             	mov    0x4(%eax),%ecx
 778:	39 f9                	cmp    %edi,%ecx
 77a:	73 64                	jae    7e0 <malloc+0x90>
  if(nu < 4096)
 77c:	bb 00 10 00 00       	mov    $0x1000,%ebx
 781:	39 df                	cmp    %ebx,%edi
 783:	0f 43 df             	cmovae %edi,%ebx
  p = sbrk(nu * sizeof(Header));
 786:	8d 34 dd 00 00 00 00 	lea    0x0(,%ebx,8),%esi
 78d:	eb 0a                	jmp    799 <malloc+0x49>
 78f:	90                   	nop
  for(p = prevp->s.ptr; ; prevp = p, p = p->s.ptr){
 790:	8b 02                	mov    (%edx),%eax
    if(p->s.size >= nunits){
 792:	8b 48 04             	mov    0x4(%eax),%ecx
 795:	39 f9                	cmp    %edi,%ecx
 797:	73 47                	jae    7e0 <malloc+0x90>
        p->s.size = nunits;
      }
      freep = prevp;
      return (void*)(p + 1);
    }
    if(p == freep)
 799:	89 c2                	mov    %eax,%edx
 79b:	3b 05 e4 0c 00 00    	cmp    0xce4,%eax
 7a1:	75 ed                	jne    790 <malloc+0x40>
  p = sbrk(nu * sizeof(Header));
 7a3:	83 ec 0c             	sub    $0xc,%esp
 7a6:	56                   	push   %esi
 7a7:	e8 af fc ff ff       	call   45b <sbrk>
  if(p == (char*)-1)
 7ac:	83 c4 10             	add    $0x10,%esp
 7af:	83 f8 ff             	cmp    $0xffffffff,%eax
 7b2:	74 1c                	je     7d0 <malloc+0x80>
  hp->s.size = nu;
 7b4:	89 58 04             	mov    %ebx,0x4(%eax)
  free((void*)(hp + 1));
 7b7:	83 ec 0c             	sub    $0xc,%esp
 7ba:	83 c0 08             	add    $0x8,%eax
 7bd:	50                   	push   %eax
 7be:	e8 fd fe ff ff       	call   6c0 <free>
  return freep;
 7c3:	8b 15 e4 0c 00 00    	mov    0xce4,%edx
      if((p = morecore(nunits)) == 0)
 7c9:	83 c4 10             	add    $0x10,%esp
 7cc:	85 d2                	test   %edx,%edx
 7ce:	75 c0                	jne    790 <malloc+0x40>
        return 0;
  }
}
 7d0:	8d 65 f4             	lea    -0xc(%ebp),%esp
        return 0;
 7d3:	31 c0                	xor    %eax,%eax
}
 7d5:	5b                   	pop    %ebx
 7d6:	5e                   	pop    %esi
 7d7:	5f                   	pop    %edi
 7d8:	5d                   	pop    %ebp
 7d9:	c3                   	ret
 7da:	8d b6 00 00 00 00    	lea    0x0(%esi),%esi
      if(p->s.size == nunits)
 7e0:	39 cf                	cmp    %ecx,%edi
 7e2:	74 4c                	je     830 <malloc+0xe0>
        p->s.size -= nunits;
 7e4:	29 f9                	sub    %edi,%ecx
 7e6:	89 48 04             	mov    %ecx,0x4(%eax)
        p += p->s.size;
 7e9:	8d 04 c8             	lea    (%eax,%ecx,8),%eax
        p->s.size = nunits;
 7ec:	89 78 04             	mov    %edi,0x4(%eax)
      freep = prevp;
 7ef:	89 15 e4 0c 00 00    	mov    %edx,0xce4
}
 7f5:	8d 65 f4             	lea    -0xc(%ebp),%esp
      return (void*)(p + 1);
 7f8:	83 c0 08             	add    $0x8,%eax
}
 7fb:	5b                   	pop    %ebx
 7fc:	5e                   	pop    %esi
 7fd:	5f                   	pop    %edi
 7fe:	5d                   	pop    %ebp
 7ff:	c3                   	ret
    base.s.ptr = freep = prevp = &base;
 800:	c7 05 e4 0c 00 00 e8 	movl   $0xce8,0xce4
 807:	0c 00 00 
    base.s.size = 0;
 80a:	b8 e8 0c 00 00       	mov    $0xce8,%eax
    base.s.ptr = freep = prevp = &base;
 80f:	c7 05 e8 0c 00 00 e8 	movl   $0xce8,0xce8
 816:	0c 00 00 
    base.s.size = 0;
 819:	c7 05 ec 0c 00 00 00 	movl   $0x0,0xcec
 820:	00 00 00 
    if(p->s.size >= nunits){
 823:	e9 54 ff ff ff       	jmp    77c <malloc+0x2c>
 828:	2e 8d b4 26 00 00 00 	lea    %cs:0x0(%esi,%eiz,1),%esi
 82f:	00 
        prevp->s.ptr = p->s.ptr;
 830:	8b 08                	mov    (%eax),%ecx
 832:	89 0a                	mov    %ecx,(%edx)
 834:	eb b9                	jmp    7ef <malloc+0x9f>
