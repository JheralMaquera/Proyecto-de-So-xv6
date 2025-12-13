
_uptime:     formato del fichero elf32-i386


Desensamblado de la sección .text:

00000000 <main>:
#include "types.h"
#include "user.h"

int
main(int argc, char *argv[])
{
   0:	55                   	push   %ebp
   1:	89 e5                	mov    %esp,%ebp
   3:	83 e4 f0             	and    $0xfffffff0,%esp
  // Al llamar a uptime(), se activará tu lógica del interruptor en el kernel
  uptime(); 
   6:	e8 e0 02 00 00       	call   2eb <uptime>
  exit();
   b:	e8 43 02 00 00       	call   253 <exit>

00000010 <strcpy>:
#include "user.h"
#include "x86.h"

char*
strcpy(char *s, const char *t)
{
  10:	55                   	push   %ebp
  char *os;

  os = s;
  while((*s++ = *t++) != 0)
  11:	31 c0                	xor    %eax,%eax
{
  13:	89 e5                	mov    %esp,%ebp
  15:	53                   	push   %ebx
  16:	8b 4d 08             	mov    0x8(%ebp),%ecx
  19:	8b 5d 0c             	mov    0xc(%ebp),%ebx
  1c:	8d 74 26 00          	lea    0x0(%esi,%eiz,1),%esi
  while((*s++ = *t++) != 0)
  20:	0f b6 14 03          	movzbl (%ebx,%eax,1),%edx
  24:	88 14 01             	mov    %dl,(%ecx,%eax,1)
  27:	83 c0 01             	add    $0x1,%eax
  2a:	84 d2                	test   %dl,%dl
  2c:	75 f2                	jne    20 <strcpy+0x10>
    ;
  return os;
}
  2e:	8b 5d fc             	mov    -0x4(%ebp),%ebx
  31:	89 c8                	mov    %ecx,%eax
  33:	c9                   	leave
  34:	c3                   	ret
  35:	2e 8d b4 26 00 00 00 	lea    %cs:0x0(%esi,%eiz,1),%esi
  3c:	00 
  3d:	8d 76 00             	lea    0x0(%esi),%esi

00000040 <strcmp>:

int
strcmp(const char *p, const char *q)
{
  40:	55                   	push   %ebp
  41:	89 e5                	mov    %esp,%ebp
  43:	53                   	push   %ebx
  44:	8b 55 08             	mov    0x8(%ebp),%edx
  47:	8b 4d 0c             	mov    0xc(%ebp),%ecx
  while(*p && *p == *q)
  4a:	0f b6 02             	movzbl (%edx),%eax
  4d:	84 c0                	test   %al,%al
  4f:	75 17                	jne    68 <strcmp+0x28>
  51:	eb 3a                	jmp    8d <strcmp+0x4d>
  53:	2e 8d 74 26 00       	lea    %cs:0x0(%esi,%eiz,1),%esi
  58:	0f b6 42 01          	movzbl 0x1(%edx),%eax
    p++, q++;
  5c:	83 c2 01             	add    $0x1,%edx
  5f:	8d 59 01             	lea    0x1(%ecx),%ebx
  while(*p && *p == *q)
  62:	84 c0                	test   %al,%al
  64:	74 1a                	je     80 <strcmp+0x40>
  66:	89 d9                	mov    %ebx,%ecx
  68:	0f b6 19             	movzbl (%ecx),%ebx
  6b:	38 c3                	cmp    %al,%bl
  6d:	74 e9                	je     58 <strcmp+0x18>
  return (uchar)*p - (uchar)*q;
  6f:	29 d8                	sub    %ebx,%eax
}
  71:	8b 5d fc             	mov    -0x4(%ebp),%ebx
  74:	c9                   	leave
  75:	c3                   	ret
  76:	2e 8d b4 26 00 00 00 	lea    %cs:0x0(%esi,%eiz,1),%esi
  7d:	00 
  7e:	66 90                	xchg   %ax,%ax
  return (uchar)*p - (uchar)*q;
  80:	0f b6 59 01          	movzbl 0x1(%ecx),%ebx
  84:	31 c0                	xor    %eax,%eax
  86:	29 d8                	sub    %ebx,%eax
}
  88:	8b 5d fc             	mov    -0x4(%ebp),%ebx
  8b:	c9                   	leave
  8c:	c3                   	ret
  return (uchar)*p - (uchar)*q;
  8d:	0f b6 19             	movzbl (%ecx),%ebx
  90:	31 c0                	xor    %eax,%eax
  92:	eb db                	jmp    6f <strcmp+0x2f>
  94:	2e 8d b4 26 00 00 00 	lea    %cs:0x0(%esi,%eiz,1),%esi
  9b:	00 
  9c:	8d 74 26 00          	lea    0x0(%esi,%eiz,1),%esi

000000a0 <strlen>:

uint
strlen(const char *s)
{
  a0:	55                   	push   %ebp
  a1:	89 e5                	mov    %esp,%ebp
  a3:	8b 55 08             	mov    0x8(%ebp),%edx
  int n;

  for(n = 0; s[n]; n++)
  a6:	80 3a 00             	cmpb   $0x0,(%edx)
  a9:	74 15                	je     c0 <strlen+0x20>
  ab:	31 c0                	xor    %eax,%eax
  ad:	8d 76 00             	lea    0x0(%esi),%esi
  b0:	83 c0 01             	add    $0x1,%eax
  b3:	80 3c 02 00          	cmpb   $0x0,(%edx,%eax,1)
  b7:	89 c1                	mov    %eax,%ecx
  b9:	75 f5                	jne    b0 <strlen+0x10>
    ;
  return n;
}
  bb:	89 c8                	mov    %ecx,%eax
  bd:	5d                   	pop    %ebp
  be:	c3                   	ret
  bf:	90                   	nop
  for(n = 0; s[n]; n++)
  c0:	31 c9                	xor    %ecx,%ecx
}
  c2:	5d                   	pop    %ebp
  c3:	89 c8                	mov    %ecx,%eax
  c5:	c3                   	ret
  c6:	2e 8d b4 26 00 00 00 	lea    %cs:0x0(%esi,%eiz,1),%esi
  cd:	00 
  ce:	66 90                	xchg   %ax,%ax

000000d0 <memset>:

void*
memset(void *dst, int c, uint n)
{
  d0:	55                   	push   %ebp
  d1:	89 e5                	mov    %esp,%ebp
  d3:	57                   	push   %edi
  d4:	8b 55 08             	mov    0x8(%ebp),%edx
}

static inline void
stosb(void *addr, int data, int cnt)
{
  asm volatile("cld; rep stosb" :
  d7:	8b 4d 10             	mov    0x10(%ebp),%ecx
  da:	8b 45 0c             	mov    0xc(%ebp),%eax
  dd:	89 d7                	mov    %edx,%edi
  df:	fc                   	cld
  e0:	f3 aa                	rep stos %al,%es:(%edi)
  stosb(dst, c, n);
  return dst;
}
  e2:	8b 7d fc             	mov    -0x4(%ebp),%edi
  e5:	89 d0                	mov    %edx,%eax
  e7:	c9                   	leave
  e8:	c3                   	ret
  e9:	8d b4 26 00 00 00 00 	lea    0x0(%esi,%eiz,1),%esi

000000f0 <strchr>:

char*
strchr(const char *s, char c)
{
  f0:	55                   	push   %ebp
  f1:	89 e5                	mov    %esp,%ebp
  f3:	8b 45 08             	mov    0x8(%ebp),%eax
  f6:	0f b6 4d 0c          	movzbl 0xc(%ebp),%ecx
  for(; *s; s++)
  fa:	0f b6 10             	movzbl (%eax),%edx
  fd:	84 d2                	test   %dl,%dl
  ff:	75 12                	jne    113 <strchr+0x23>
 101:	eb 1d                	jmp    120 <strchr+0x30>
 103:	2e 8d 74 26 00       	lea    %cs:0x0(%esi,%eiz,1),%esi
 108:	0f b6 50 01          	movzbl 0x1(%eax),%edx
 10c:	83 c0 01             	add    $0x1,%eax
 10f:	84 d2                	test   %dl,%dl
 111:	74 0d                	je     120 <strchr+0x30>
    if(*s == c)
 113:	38 d1                	cmp    %dl,%cl
 115:	75 f1                	jne    108 <strchr+0x18>
      return (char*)s;
  return 0;
}
 117:	5d                   	pop    %ebp
 118:	c3                   	ret
 119:	8d b4 26 00 00 00 00 	lea    0x0(%esi,%eiz,1),%esi
  return 0;
 120:	31 c0                	xor    %eax,%eax
}
 122:	5d                   	pop    %ebp
 123:	c3                   	ret
 124:	2e 8d b4 26 00 00 00 	lea    %cs:0x0(%esi,%eiz,1),%esi
 12b:	00 
 12c:	8d 74 26 00          	lea    0x0(%esi,%eiz,1),%esi

00000130 <gets>:

char*
gets(char *buf, int max)
{
 130:	55                   	push   %ebp
 131:	89 e5                	mov    %esp,%ebp
 133:	57                   	push   %edi
 134:	56                   	push   %esi
  int i, cc;
  char c;

  for(i=0; i+1 < max; ){
    cc = read(0, &c, 1);
 135:	8d 75 e7             	lea    -0x19(%ebp),%esi
{
 138:	53                   	push   %ebx
  for(i=0; i+1 < max; ){
 139:	31 db                	xor    %ebx,%ebx
{
 13b:	83 ec 1c             	sub    $0x1c,%esp
  for(i=0; i+1 < max; ){
 13e:	eb 27                	jmp    167 <gets+0x37>
    cc = read(0, &c, 1);
 140:	83 ec 04             	sub    $0x4,%esp
 143:	6a 01                	push   $0x1
 145:	56                   	push   %esi
 146:	6a 00                	push   $0x0
 148:	e8 1e 01 00 00       	call   26b <read>
    if(cc < 1)
 14d:	83 c4 10             	add    $0x10,%esp
 150:	85 c0                	test   %eax,%eax
 152:	7e 1d                	jle    171 <gets+0x41>
      break;
    buf[i++] = c;
 154:	0f b6 45 e7          	movzbl -0x19(%ebp),%eax
 158:	8b 55 08             	mov    0x8(%ebp),%edx
 15b:	88 44 1a ff          	mov    %al,-0x1(%edx,%ebx,1)
    if(c == '\n' || c == '\r')
 15f:	3c 0a                	cmp    $0xa,%al
 161:	74 10                	je     173 <gets+0x43>
 163:	3c 0d                	cmp    $0xd,%al
 165:	74 0c                	je     173 <gets+0x43>
  for(i=0; i+1 < max; ){
 167:	89 df                	mov    %ebx,%edi
 169:	83 c3 01             	add    $0x1,%ebx
 16c:	3b 5d 0c             	cmp    0xc(%ebp),%ebx
 16f:	7c cf                	jl     140 <gets+0x10>
 171:	89 fb                	mov    %edi,%ebx
      break;
  }
  buf[i] = '\0';
 173:	8b 45 08             	mov    0x8(%ebp),%eax
 176:	c6 04 18 00          	movb   $0x0,(%eax,%ebx,1)
  return buf;
}
 17a:	8d 65 f4             	lea    -0xc(%ebp),%esp
 17d:	5b                   	pop    %ebx
 17e:	5e                   	pop    %esi
 17f:	5f                   	pop    %edi
 180:	5d                   	pop    %ebp
 181:	c3                   	ret
 182:	2e 8d b4 26 00 00 00 	lea    %cs:0x0(%esi,%eiz,1),%esi
 189:	00 
 18a:	8d b6 00 00 00 00    	lea    0x0(%esi),%esi

00000190 <stat>:

int
stat(const char *n, struct stat *st)
{
 190:	55                   	push   %ebp
 191:	89 e5                	mov    %esp,%ebp
 193:	56                   	push   %esi
 194:	53                   	push   %ebx
  int fd;
  int r;

  fd = open(n, O_RDONLY);
 195:	83 ec 08             	sub    $0x8,%esp
 198:	6a 00                	push   $0x0
 19a:	ff 75 08             	push   0x8(%ebp)
 19d:	e8 f1 00 00 00       	call   293 <open>
  if(fd < 0)
 1a2:	83 c4 10             	add    $0x10,%esp
 1a5:	85 c0                	test   %eax,%eax
 1a7:	78 27                	js     1d0 <stat+0x40>
    return -1;
  r = fstat(fd, st);
 1a9:	83 ec 08             	sub    $0x8,%esp
 1ac:	ff 75 0c             	push   0xc(%ebp)
 1af:	89 c3                	mov    %eax,%ebx
 1b1:	50                   	push   %eax
 1b2:	e8 f4 00 00 00       	call   2ab <fstat>
  close(fd);
 1b7:	89 1c 24             	mov    %ebx,(%esp)
  r = fstat(fd, st);
 1ba:	89 c6                	mov    %eax,%esi
  close(fd);
 1bc:	e8 ba 00 00 00       	call   27b <close>
  return r;
 1c1:	83 c4 10             	add    $0x10,%esp
}
 1c4:	8d 65 f8             	lea    -0x8(%ebp),%esp
 1c7:	89 f0                	mov    %esi,%eax
 1c9:	5b                   	pop    %ebx
 1ca:	5e                   	pop    %esi
 1cb:	5d                   	pop    %ebp
 1cc:	c3                   	ret
 1cd:	8d 76 00             	lea    0x0(%esi),%esi
    return -1;
 1d0:	be ff ff ff ff       	mov    $0xffffffff,%esi
 1d5:	eb ed                	jmp    1c4 <stat+0x34>
 1d7:	2e 8d b4 26 00 00 00 	lea    %cs:0x0(%esi,%eiz,1),%esi
 1de:	00 
 1df:	90                   	nop

000001e0 <atoi>:

int
atoi(const char *s)
{
 1e0:	55                   	push   %ebp
 1e1:	89 e5                	mov    %esp,%ebp
 1e3:	53                   	push   %ebx
 1e4:	8b 55 08             	mov    0x8(%ebp),%edx
  int n;

  n = 0;
  while('0' <= *s && *s <= '9')
 1e7:	0f be 02             	movsbl (%edx),%eax
 1ea:	8d 48 d0             	lea    -0x30(%eax),%ecx
 1ed:	80 f9 09             	cmp    $0x9,%cl
  n = 0;
 1f0:	b9 00 00 00 00       	mov    $0x0,%ecx
  while('0' <= *s && *s <= '9')
 1f5:	77 1e                	ja     215 <atoi+0x35>
 1f7:	2e 8d b4 26 00 00 00 	lea    %cs:0x0(%esi,%eiz,1),%esi
 1fe:	00 
 1ff:	90                   	nop
    n = n*10 + *s++ - '0';
 200:	83 c2 01             	add    $0x1,%edx
 203:	8d 0c 89             	lea    (%ecx,%ecx,4),%ecx
 206:	8d 4c 48 d0          	lea    -0x30(%eax,%ecx,2),%ecx
  while('0' <= *s && *s <= '9')
 20a:	0f be 02             	movsbl (%edx),%eax
 20d:	8d 58 d0             	lea    -0x30(%eax),%ebx
 210:	80 fb 09             	cmp    $0x9,%bl
 213:	76 eb                	jbe    200 <atoi+0x20>
  return n;
}
 215:	8b 5d fc             	mov    -0x4(%ebp),%ebx
 218:	89 c8                	mov    %ecx,%eax
 21a:	c9                   	leave
 21b:	c3                   	ret
 21c:	8d 74 26 00          	lea    0x0(%esi,%eiz,1),%esi

00000220 <memmove>:

void*
memmove(void *vdst, const void *vsrc, int n)
{
 220:	55                   	push   %ebp
 221:	89 e5                	mov    %esp,%ebp
 223:	57                   	push   %edi
 224:	8b 45 10             	mov    0x10(%ebp),%eax
 227:	8b 55 08             	mov    0x8(%ebp),%edx
 22a:	56                   	push   %esi
 22b:	8b 75 0c             	mov    0xc(%ebp),%esi
  char *dst;
  const char *src;

  dst = vdst;
  src = vsrc;
  while(n-- > 0)
 22e:	85 c0                	test   %eax,%eax
 230:	7e 13                	jle    245 <memmove+0x25>
 232:	01 d0                	add    %edx,%eax
  dst = vdst;
 234:	89 d7                	mov    %edx,%edi
 236:	2e 8d b4 26 00 00 00 	lea    %cs:0x0(%esi,%eiz,1),%esi
 23d:	00 
 23e:	66 90                	xchg   %ax,%ax
    *dst++ = *src++;
 240:	a4                   	movsb  %ds:(%esi),%es:(%edi)
  while(n-- > 0)
 241:	39 f8                	cmp    %edi,%eax
 243:	75 fb                	jne    240 <memmove+0x20>
  return vdst;
}
 245:	5e                   	pop    %esi
 246:	89 d0                	mov    %edx,%eax
 248:	5f                   	pop    %edi
 249:	5d                   	pop    %ebp
 24a:	c3                   	ret

0000024b <fork>:
  name: \
    movl $SYS_ ## name, %eax; \
    int $T_SYSCALL; \
    ret

SYSCALL(fork)
 24b:	b8 01 00 00 00       	mov    $0x1,%eax
 250:	cd 40                	int    $0x40
 252:	c3                   	ret

00000253 <exit>:
SYSCALL(exit)
 253:	b8 02 00 00 00       	mov    $0x2,%eax
 258:	cd 40                	int    $0x40
 25a:	c3                   	ret

0000025b <wait>:
SYSCALL(wait)
 25b:	b8 03 00 00 00       	mov    $0x3,%eax
 260:	cd 40                	int    $0x40
 262:	c3                   	ret

00000263 <pipe>:
SYSCALL(pipe)
 263:	b8 04 00 00 00       	mov    $0x4,%eax
 268:	cd 40                	int    $0x40
 26a:	c3                   	ret

0000026b <read>:
SYSCALL(read)
 26b:	b8 05 00 00 00       	mov    $0x5,%eax
 270:	cd 40                	int    $0x40
 272:	c3                   	ret

00000273 <write>:
SYSCALL(write)
 273:	b8 10 00 00 00       	mov    $0x10,%eax
 278:	cd 40                	int    $0x40
 27a:	c3                   	ret

0000027b <close>:
SYSCALL(close)
 27b:	b8 15 00 00 00       	mov    $0x15,%eax
 280:	cd 40                	int    $0x40
 282:	c3                   	ret

00000283 <kill>:
SYSCALL(kill)
 283:	b8 06 00 00 00       	mov    $0x6,%eax
 288:	cd 40                	int    $0x40
 28a:	c3                   	ret

0000028b <exec>:
SYSCALL(exec)
 28b:	b8 07 00 00 00       	mov    $0x7,%eax
 290:	cd 40                	int    $0x40
 292:	c3                   	ret

00000293 <open>:
SYSCALL(open)
 293:	b8 0f 00 00 00       	mov    $0xf,%eax
 298:	cd 40                	int    $0x40
 29a:	c3                   	ret

0000029b <mknod>:
SYSCALL(mknod)
 29b:	b8 11 00 00 00       	mov    $0x11,%eax
 2a0:	cd 40                	int    $0x40
 2a2:	c3                   	ret

000002a3 <unlink>:
SYSCALL(unlink)
 2a3:	b8 12 00 00 00       	mov    $0x12,%eax
 2a8:	cd 40                	int    $0x40
 2aa:	c3                   	ret

000002ab <fstat>:
SYSCALL(fstat)
 2ab:	b8 08 00 00 00       	mov    $0x8,%eax
 2b0:	cd 40                	int    $0x40
 2b2:	c3                   	ret

000002b3 <link>:
SYSCALL(link)
 2b3:	b8 13 00 00 00       	mov    $0x13,%eax
 2b8:	cd 40                	int    $0x40
 2ba:	c3                   	ret

000002bb <mkdir>:
SYSCALL(mkdir)
 2bb:	b8 14 00 00 00       	mov    $0x14,%eax
 2c0:	cd 40                	int    $0x40
 2c2:	c3                   	ret

000002c3 <chdir>:
SYSCALL(chdir)
 2c3:	b8 09 00 00 00       	mov    $0x9,%eax
 2c8:	cd 40                	int    $0x40
 2ca:	c3                   	ret

000002cb <dup>:
SYSCALL(dup)
 2cb:	b8 0a 00 00 00       	mov    $0xa,%eax
 2d0:	cd 40                	int    $0x40
 2d2:	c3                   	ret

000002d3 <getpid>:
SYSCALL(getpid)
 2d3:	b8 0b 00 00 00       	mov    $0xb,%eax
 2d8:	cd 40                	int    $0x40
 2da:	c3                   	ret

000002db <sbrk>:
SYSCALL(sbrk)
 2db:	b8 0c 00 00 00       	mov    $0xc,%eax
 2e0:	cd 40                	int    $0x40
 2e2:	c3                   	ret

000002e3 <sleep>:
SYSCALL(sleep)
 2e3:	b8 0d 00 00 00       	mov    $0xd,%eax
 2e8:	cd 40                	int    $0x40
 2ea:	c3                   	ret

000002eb <uptime>:
SYSCALL(uptime)
 2eb:	b8 0e 00 00 00       	mov    $0xe,%eax
 2f0:	cd 40                	int    $0x40
 2f2:	c3                   	ret
 2f3:	66 90                	xchg   %ax,%ax
 2f5:	66 90                	xchg   %ax,%ax
 2f7:	66 90                	xchg   %ax,%ax
 2f9:	66 90                	xchg   %ax,%ax
 2fb:	66 90                	xchg   %ax,%ax
 2fd:	66 90                	xchg   %ax,%ax
 2ff:	90                   	nop

00000300 <printint>:
  write(fd, &c, 1);
}

static void
printint(int fd, int xx, int base, int sgn)
{
 300:	55                   	push   %ebp
 301:	89 e5                	mov    %esp,%ebp
 303:	57                   	push   %edi
 304:	56                   	push   %esi
 305:	53                   	push   %ebx
 306:	89 cb                	mov    %ecx,%ebx
  uint x;

  neg = 0;
  if(sgn && xx < 0){
    neg = 1;
    x = -xx;
 308:	89 d1                	mov    %edx,%ecx
{
 30a:	83 ec 3c             	sub    $0x3c,%esp
 30d:	89 45 c0             	mov    %eax,-0x40(%ebp)
  if(sgn && xx < 0){
 310:	85 d2                	test   %edx,%edx
 312:	0f 89 80 00 00 00    	jns    398 <printint+0x98>
 318:	f6 45 08 01          	testb  $0x1,0x8(%ebp)
 31c:	74 7a                	je     398 <printint+0x98>
    x = -xx;
 31e:	f7 d9                	neg    %ecx
    neg = 1;
 320:	b8 01 00 00 00       	mov    $0x1,%eax
  } else {
    x = xx;
  }

  i = 0;
 325:	89 45 c4             	mov    %eax,-0x3c(%ebp)
 328:	31 f6                	xor    %esi,%esi
 32a:	8d b6 00 00 00 00    	lea    0x0(%esi),%esi
  do{
    buf[i++] = digits[x % base];
 330:	89 c8                	mov    %ecx,%eax
 332:	31 d2                	xor    %edx,%edx
 334:	89 f7                	mov    %esi,%edi
 336:	f7 f3                	div    %ebx
 338:	8d 76 01             	lea    0x1(%esi),%esi
 33b:	0f b6 92 08 07 00 00 	movzbl 0x708(%edx),%edx
 342:	88 54 35 d7          	mov    %dl,-0x29(%ebp,%esi,1)
  }while((x /= base) != 0);
 346:	89 ca                	mov    %ecx,%edx
 348:	89 c1                	mov    %eax,%ecx
 34a:	39 da                	cmp    %ebx,%edx
 34c:	73 e2                	jae    330 <printint+0x30>
  if(neg)
 34e:	8b 45 c4             	mov    -0x3c(%ebp),%eax
 351:	85 c0                	test   %eax,%eax
 353:	74 07                	je     35c <printint+0x5c>
    buf[i++] = '-';
 355:	c6 44 35 d8 2d       	movb   $0x2d,-0x28(%ebp,%esi,1)

  while(--i >= 0)
 35a:	89 f7                	mov    %esi,%edi
 35c:	8d 5d d8             	lea    -0x28(%ebp),%ebx
 35f:	8b 75 c0             	mov    -0x40(%ebp),%esi
 362:	01 df                	add    %ebx,%edi
 364:	8d 74 26 00          	lea    0x0(%esi,%eiz,1),%esi
    putc(fd, buf[i]);
 368:	0f b6 07             	movzbl (%edi),%eax
  write(fd, &c, 1);
 36b:	83 ec 04             	sub    $0x4,%esp
 36e:	88 45 d7             	mov    %al,-0x29(%ebp)
 371:	8d 45 d7             	lea    -0x29(%ebp),%eax
 374:	6a 01                	push   $0x1
 376:	50                   	push   %eax
 377:	56                   	push   %esi
 378:	e8 f6 fe ff ff       	call   273 <write>
  while(--i >= 0)
 37d:	89 f8                	mov    %edi,%eax
 37f:	83 c4 10             	add    $0x10,%esp
 382:	83 ef 01             	sub    $0x1,%edi
 385:	39 c3                	cmp    %eax,%ebx
 387:	75 df                	jne    368 <printint+0x68>
}
 389:	8d 65 f4             	lea    -0xc(%ebp),%esp
 38c:	5b                   	pop    %ebx
 38d:	5e                   	pop    %esi
 38e:	5f                   	pop    %edi
 38f:	5d                   	pop    %ebp
 390:	c3                   	ret
 391:	8d b4 26 00 00 00 00 	lea    0x0(%esi,%eiz,1),%esi
  neg = 0;
 398:	31 c0                	xor    %eax,%eax
 39a:	eb 89                	jmp    325 <printint+0x25>
 39c:	8d 74 26 00          	lea    0x0(%esi,%eiz,1),%esi

000003a0 <printf>:

// Print to the given fd. Only understands %d, %x, %p, %s.
void
printf(int fd, const char *fmt, ...)
{
 3a0:	55                   	push   %ebp
 3a1:	89 e5                	mov    %esp,%ebp
 3a3:	57                   	push   %edi
 3a4:	56                   	push   %esi
 3a5:	53                   	push   %ebx
 3a6:	83 ec 2c             	sub    $0x2c,%esp
  int c, i, state;
  uint *ap;

  state = 0;
  ap = (uint*)(void*)&fmt + 1;
  for(i = 0; fmt[i]; i++){
 3a9:	8b 75 0c             	mov    0xc(%ebp),%esi
{
 3ac:	8b 7d 08             	mov    0x8(%ebp),%edi
  for(i = 0; fmt[i]; i++){
 3af:	0f b6 1e             	movzbl (%esi),%ebx
 3b2:	83 c6 01             	add    $0x1,%esi
 3b5:	84 db                	test   %bl,%bl
 3b7:	74 67                	je     420 <printf+0x80>
 3b9:	8d 4d 10             	lea    0x10(%ebp),%ecx
 3bc:	31 d2                	xor    %edx,%edx
 3be:	89 4d d0             	mov    %ecx,-0x30(%ebp)
 3c1:	eb 34                	jmp    3f7 <printf+0x57>
 3c3:	2e 8d 74 26 00       	lea    %cs:0x0(%esi,%eiz,1),%esi
 3c8:	89 55 d4             	mov    %edx,-0x2c(%ebp)
    c = fmt[i] & 0xff;
    if(state == 0){
      if(c == '%'){
        state = '%';
 3cb:	ba 25 00 00 00       	mov    $0x25,%edx
      if(c == '%'){
 3d0:	83 f8 25             	cmp    $0x25,%eax
 3d3:	74 18                	je     3ed <printf+0x4d>
  write(fd, &c, 1);
 3d5:	83 ec 04             	sub    $0x4,%esp
 3d8:	8d 45 e7             	lea    -0x19(%ebp),%eax
 3db:	88 5d e7             	mov    %bl,-0x19(%ebp)
 3de:	6a 01                	push   $0x1
 3e0:	50                   	push   %eax
 3e1:	57                   	push   %edi
 3e2:	e8 8c fe ff ff       	call   273 <write>
 3e7:	8b 55 d4             	mov    -0x2c(%ebp),%edx
      } else {
        putc(fd, c);
 3ea:	83 c4 10             	add    $0x10,%esp
  for(i = 0; fmt[i]; i++){
 3ed:	0f b6 1e             	movzbl (%esi),%ebx
 3f0:	83 c6 01             	add    $0x1,%esi
 3f3:	84 db                	test   %bl,%bl
 3f5:	74 29                	je     420 <printf+0x80>
    c = fmt[i] & 0xff;
 3f7:	0f b6 c3             	movzbl %bl,%eax
    if(state == 0){
 3fa:	85 d2                	test   %edx,%edx
 3fc:	74 ca                	je     3c8 <printf+0x28>
      }
    } else if(state == '%'){
 3fe:	83 fa 25             	cmp    $0x25,%edx
 401:	75 ea                	jne    3ed <printf+0x4d>
      if(c == 'd'){
 403:	83 f8 25             	cmp    $0x25,%eax
 406:	0f 84 04 01 00 00    	je     510 <printf+0x170>
 40c:	83 e8 63             	sub    $0x63,%eax
 40f:	83 f8 15             	cmp    $0x15,%eax
 412:	77 1c                	ja     430 <printf+0x90>
 414:	ff 24 85 b0 06 00 00 	jmp    *0x6b0(,%eax,4)
 41b:	2e 8d 74 26 00       	lea    %cs:0x0(%esi,%eiz,1),%esi
        putc(fd, c);
      }
      state = 0;
    }
  }
}
 420:	8d 65 f4             	lea    -0xc(%ebp),%esp
 423:	5b                   	pop    %ebx
 424:	5e                   	pop    %esi
 425:	5f                   	pop    %edi
 426:	5d                   	pop    %ebp
 427:	c3                   	ret
 428:	2e 8d b4 26 00 00 00 	lea    %cs:0x0(%esi,%eiz,1),%esi
 42f:	00 
  write(fd, &c, 1);
 430:	83 ec 04             	sub    $0x4,%esp
 433:	8d 55 e7             	lea    -0x19(%ebp),%edx
 436:	c6 45 e7 25          	movb   $0x25,-0x19(%ebp)
 43a:	6a 01                	push   $0x1
 43c:	52                   	push   %edx
 43d:	89 55 d4             	mov    %edx,-0x2c(%ebp)
 440:	57                   	push   %edi
 441:	e8 2d fe ff ff       	call   273 <write>
 446:	83 c4 0c             	add    $0xc,%esp
 449:	88 5d e7             	mov    %bl,-0x19(%ebp)
 44c:	6a 01                	push   $0x1
 44e:	8b 55 d4             	mov    -0x2c(%ebp),%edx
 451:	52                   	push   %edx
 452:	57                   	push   %edi
 453:	e8 1b fe ff ff       	call   273 <write>
        putc(fd, c);
 458:	83 c4 10             	add    $0x10,%esp
      state = 0;
 45b:	31 d2                	xor    %edx,%edx
 45d:	eb 8e                	jmp    3ed <printf+0x4d>
 45f:	90                   	nop
        printint(fd, *ap, 16, 0);
 460:	8b 5d d0             	mov    -0x30(%ebp),%ebx
 463:	83 ec 0c             	sub    $0xc,%esp
 466:	b9 10 00 00 00       	mov    $0x10,%ecx
 46b:	8b 13                	mov    (%ebx),%edx
 46d:	6a 00                	push   $0x0
 46f:	89 f8                	mov    %edi,%eax
        ap++;
 471:	83 c3 04             	add    $0x4,%ebx
        printint(fd, *ap, 16, 0);
 474:	e8 87 fe ff ff       	call   300 <printint>
        ap++;
 479:	89 5d d0             	mov    %ebx,-0x30(%ebp)
 47c:	83 c4 10             	add    $0x10,%esp
      state = 0;
 47f:	31 d2                	xor    %edx,%edx
 481:	e9 67 ff ff ff       	jmp    3ed <printf+0x4d>
        s = (char*)*ap;
 486:	8b 45 d0             	mov    -0x30(%ebp),%eax
 489:	8b 18                	mov    (%eax),%ebx
        ap++;
 48b:	83 c0 04             	add    $0x4,%eax
 48e:	89 45 d0             	mov    %eax,-0x30(%ebp)
        if(s == 0)
 491:	85 db                	test   %ebx,%ebx
 493:	0f 84 87 00 00 00    	je     520 <printf+0x180>
        while(*s != 0){
 499:	0f b6 03             	movzbl (%ebx),%eax
      state = 0;
 49c:	31 d2                	xor    %edx,%edx
        while(*s != 0){
 49e:	84 c0                	test   %al,%al
 4a0:	0f 84 47 ff ff ff    	je     3ed <printf+0x4d>
 4a6:	8d 55 e7             	lea    -0x19(%ebp),%edx
 4a9:	89 75 d4             	mov    %esi,-0x2c(%ebp)
 4ac:	89 de                	mov    %ebx,%esi
 4ae:	89 d3                	mov    %edx,%ebx
  write(fd, &c, 1);
 4b0:	83 ec 04             	sub    $0x4,%esp
 4b3:	88 45 e7             	mov    %al,-0x19(%ebp)
          s++;
 4b6:	83 c6 01             	add    $0x1,%esi
  write(fd, &c, 1);
 4b9:	6a 01                	push   $0x1
 4bb:	53                   	push   %ebx
 4bc:	57                   	push   %edi
 4bd:	e8 b1 fd ff ff       	call   273 <write>
        while(*s != 0){
 4c2:	0f b6 06             	movzbl (%esi),%eax
 4c5:	83 c4 10             	add    $0x10,%esp
 4c8:	84 c0                	test   %al,%al
 4ca:	75 e4                	jne    4b0 <printf+0x110>
      state = 0;
 4cc:	8b 75 d4             	mov    -0x2c(%ebp),%esi
 4cf:	31 d2                	xor    %edx,%edx
 4d1:	e9 17 ff ff ff       	jmp    3ed <printf+0x4d>
        printint(fd, *ap, 10, 1);
 4d6:	8b 5d d0             	mov    -0x30(%ebp),%ebx
 4d9:	83 ec 0c             	sub    $0xc,%esp
 4dc:	b9 0a 00 00 00       	mov    $0xa,%ecx
 4e1:	8b 13                	mov    (%ebx),%edx
 4e3:	6a 01                	push   $0x1
 4e5:	eb 88                	jmp    46f <printf+0xcf>
        putc(fd, *ap);
 4e7:	8b 5d d0             	mov    -0x30(%ebp),%ebx
  write(fd, &c, 1);
 4ea:	83 ec 04             	sub    $0x4,%esp
 4ed:	8d 55 e7             	lea    -0x19(%ebp),%edx
        putc(fd, *ap);
 4f0:	8b 03                	mov    (%ebx),%eax
        ap++;
 4f2:	83 c3 04             	add    $0x4,%ebx
        putc(fd, *ap);
 4f5:	88 45 e7             	mov    %al,-0x19(%ebp)
  write(fd, &c, 1);
 4f8:	6a 01                	push   $0x1
 4fa:	52                   	push   %edx
 4fb:	57                   	push   %edi
 4fc:	e8 72 fd ff ff       	call   273 <write>
        ap++;
 501:	89 5d d0             	mov    %ebx,-0x30(%ebp)
 504:	83 c4 10             	add    $0x10,%esp
      state = 0;
 507:	31 d2                	xor    %edx,%edx
 509:	e9 df fe ff ff       	jmp    3ed <printf+0x4d>
 50e:	66 90                	xchg   %ax,%ax
  write(fd, &c, 1);
 510:	83 ec 04             	sub    $0x4,%esp
 513:	88 5d e7             	mov    %bl,-0x19(%ebp)
 516:	8d 55 e7             	lea    -0x19(%ebp),%edx
 519:	6a 01                	push   $0x1
 51b:	e9 31 ff ff ff       	jmp    451 <printf+0xb1>
 520:	b8 28 00 00 00       	mov    $0x28,%eax
          s = "(null)";
 525:	bb a8 06 00 00       	mov    $0x6a8,%ebx
 52a:	e9 77 ff ff ff       	jmp    4a6 <printf+0x106>
 52f:	90                   	nop

00000530 <free>:
static Header base;
static Header *freep;

void
free(void *ap)
{
 530:	55                   	push   %ebp
  Header *bp, *p;

  bp = (Header*)ap - 1;
  for(p = freep; !(bp > p && bp < p->s.ptr); p = p->s.ptr)
 531:	a1 9c 09 00 00       	mov    0x99c,%eax
{
 536:	89 e5                	mov    %esp,%ebp
 538:	57                   	push   %edi
 539:	56                   	push   %esi
 53a:	53                   	push   %ebx
 53b:	8b 5d 08             	mov    0x8(%ebp),%ebx
  bp = (Header*)ap - 1;
 53e:	8d 4b f8             	lea    -0x8(%ebx),%ecx
  for(p = freep; !(bp > p && bp < p->s.ptr); p = p->s.ptr)
 541:	8d b4 26 00 00 00 00 	lea    0x0(%esi,%eiz,1),%esi
    if(p >= p->s.ptr && (bp > p || bp < p->s.ptr))
 548:	8b 10                	mov    (%eax),%edx
  for(p = freep; !(bp > p && bp < p->s.ptr); p = p->s.ptr)
 54a:	39 c8                	cmp    %ecx,%eax
 54c:	73 32                	jae    580 <free+0x50>
 54e:	39 d1                	cmp    %edx,%ecx
 550:	72 04                	jb     556 <free+0x26>
    if(p >= p->s.ptr && (bp > p || bp < p->s.ptr))
 552:	39 d0                	cmp    %edx,%eax
 554:	72 32                	jb     588 <free+0x58>
      break;
  if(bp + bp->s.size == p->s.ptr){
 556:	8b 73 fc             	mov    -0x4(%ebx),%esi
 559:	8d 3c f1             	lea    (%ecx,%esi,8),%edi
 55c:	39 fa                	cmp    %edi,%edx
 55e:	74 30                	je     590 <free+0x60>
    bp->s.size += p->s.ptr->s.size;
    bp->s.ptr = p->s.ptr->s.ptr;
 560:	89 53 f8             	mov    %edx,-0x8(%ebx)
  } else
    bp->s.ptr = p->s.ptr;
  if(p + p->s.size == bp){
 563:	8b 50 04             	mov    0x4(%eax),%edx
 566:	8d 34 d0             	lea    (%eax,%edx,8),%esi
 569:	39 f1                	cmp    %esi,%ecx
 56b:	74 3a                	je     5a7 <free+0x77>
    p->s.size += bp->s.size;
    p->s.ptr = bp->s.ptr;
 56d:	89 08                	mov    %ecx,(%eax)
  } else
    p->s.ptr = bp;
  freep = p;
}
 56f:	5b                   	pop    %ebx
  freep = p;
 570:	a3 9c 09 00 00       	mov    %eax,0x99c
}
 575:	5e                   	pop    %esi
 576:	5f                   	pop    %edi
 577:	5d                   	pop    %ebp
 578:	c3                   	ret
 579:	8d b4 26 00 00 00 00 	lea    0x0(%esi,%eiz,1),%esi
    if(p >= p->s.ptr && (bp > p || bp < p->s.ptr))
 580:	39 d0                	cmp    %edx,%eax
 582:	72 04                	jb     588 <free+0x58>
 584:	39 d1                	cmp    %edx,%ecx
 586:	72 ce                	jb     556 <free+0x26>
{
 588:	89 d0                	mov    %edx,%eax
 58a:	eb bc                	jmp    548 <free+0x18>
 58c:	8d 74 26 00          	lea    0x0(%esi,%eiz,1),%esi
    bp->s.size += p->s.ptr->s.size;
 590:	03 72 04             	add    0x4(%edx),%esi
 593:	89 73 fc             	mov    %esi,-0x4(%ebx)
    bp->s.ptr = p->s.ptr->s.ptr;
 596:	8b 10                	mov    (%eax),%edx
 598:	8b 12                	mov    (%edx),%edx
 59a:	89 53 f8             	mov    %edx,-0x8(%ebx)
  if(p + p->s.size == bp){
 59d:	8b 50 04             	mov    0x4(%eax),%edx
 5a0:	8d 34 d0             	lea    (%eax,%edx,8),%esi
 5a3:	39 f1                	cmp    %esi,%ecx
 5a5:	75 c6                	jne    56d <free+0x3d>
    p->s.size += bp->s.size;
 5a7:	03 53 fc             	add    -0x4(%ebx),%edx
  freep = p;
 5aa:	a3 9c 09 00 00       	mov    %eax,0x99c
    p->s.size += bp->s.size;
 5af:	89 50 04             	mov    %edx,0x4(%eax)
    p->s.ptr = bp->s.ptr;
 5b2:	8b 4b f8             	mov    -0x8(%ebx),%ecx
 5b5:	89 08                	mov    %ecx,(%eax)
}
 5b7:	5b                   	pop    %ebx
 5b8:	5e                   	pop    %esi
 5b9:	5f                   	pop    %edi
 5ba:	5d                   	pop    %ebp
 5bb:	c3                   	ret
 5bc:	8d 74 26 00          	lea    0x0(%esi,%eiz,1),%esi

000005c0 <malloc>:
  return freep;
}

void*
malloc(uint nbytes)
{
 5c0:	55                   	push   %ebp
 5c1:	89 e5                	mov    %esp,%ebp
 5c3:	57                   	push   %edi
 5c4:	56                   	push   %esi
 5c5:	53                   	push   %ebx
 5c6:	83 ec 0c             	sub    $0xc,%esp
  Header *p, *prevp;
  uint nunits;

  nunits = (nbytes + sizeof(Header) - 1)/sizeof(Header) + 1;
 5c9:	8b 45 08             	mov    0x8(%ebp),%eax
  if((prevp = freep) == 0){
 5cc:	8b 15 9c 09 00 00    	mov    0x99c,%edx
  nunits = (nbytes + sizeof(Header) - 1)/sizeof(Header) + 1;
 5d2:	8d 78 07             	lea    0x7(%eax),%edi
 5d5:	c1 ef 03             	shr    $0x3,%edi
 5d8:	83 c7 01             	add    $0x1,%edi
  if((prevp = freep) == 0){
 5db:	85 d2                	test   %edx,%edx
 5dd:	0f 84 8d 00 00 00    	je     670 <malloc+0xb0>
    base.s.ptr = freep = prevp = &base;
    base.s.size = 0;
  }
  for(p = prevp->s.ptr; ; prevp = p, p = p->s.ptr){
 5e3:	8b 02                	mov    (%edx),%eax
    if(p->s.size >= nunits){
 5e5:	8b 48 04             	mov    0x4(%eax),%ecx
 5e8:	39 f9                	cmp    %edi,%ecx
 5ea:	73 64                	jae    650 <malloc+0x90>
  if(nu < 4096)
 5ec:	bb 00 10 00 00       	mov    $0x1000,%ebx
 5f1:	39 df                	cmp    %ebx,%edi
 5f3:	0f 43 df             	cmovae %edi,%ebx
  p = sbrk(nu * sizeof(Header));
 5f6:	8d 34 dd 00 00 00 00 	lea    0x0(,%ebx,8),%esi
 5fd:	eb 0a                	jmp    609 <malloc+0x49>
 5ff:	90                   	nop
  for(p = prevp->s.ptr; ; prevp = p, p = p->s.ptr){
 600:	8b 02                	mov    (%edx),%eax
    if(p->s.size >= nunits){
 602:	8b 48 04             	mov    0x4(%eax),%ecx
 605:	39 f9                	cmp    %edi,%ecx
 607:	73 47                	jae    650 <malloc+0x90>
        p->s.size = nunits;
      }
      freep = prevp;
      return (void*)(p + 1);
    }
    if(p == freep)
 609:	89 c2                	mov    %eax,%edx
 60b:	3b 05 9c 09 00 00    	cmp    0x99c,%eax
 611:	75 ed                	jne    600 <malloc+0x40>
  p = sbrk(nu * sizeof(Header));
 613:	83 ec 0c             	sub    $0xc,%esp
 616:	56                   	push   %esi
 617:	e8 bf fc ff ff       	call   2db <sbrk>
  if(p == (char*)-1)
 61c:	83 c4 10             	add    $0x10,%esp
 61f:	83 f8 ff             	cmp    $0xffffffff,%eax
 622:	74 1c                	je     640 <malloc+0x80>
  hp->s.size = nu;
 624:	89 58 04             	mov    %ebx,0x4(%eax)
  free((void*)(hp + 1));
 627:	83 ec 0c             	sub    $0xc,%esp
 62a:	83 c0 08             	add    $0x8,%eax
 62d:	50                   	push   %eax
 62e:	e8 fd fe ff ff       	call   530 <free>
  return freep;
 633:	8b 15 9c 09 00 00    	mov    0x99c,%edx
      if((p = morecore(nunits)) == 0)
 639:	83 c4 10             	add    $0x10,%esp
 63c:	85 d2                	test   %edx,%edx
 63e:	75 c0                	jne    600 <malloc+0x40>
        return 0;
  }
}
 640:	8d 65 f4             	lea    -0xc(%ebp),%esp
        return 0;
 643:	31 c0                	xor    %eax,%eax
}
 645:	5b                   	pop    %ebx
 646:	5e                   	pop    %esi
 647:	5f                   	pop    %edi
 648:	5d                   	pop    %ebp
 649:	c3                   	ret
 64a:	8d b6 00 00 00 00    	lea    0x0(%esi),%esi
      if(p->s.size == nunits)
 650:	39 cf                	cmp    %ecx,%edi
 652:	74 4c                	je     6a0 <malloc+0xe0>
        p->s.size -= nunits;
 654:	29 f9                	sub    %edi,%ecx
 656:	89 48 04             	mov    %ecx,0x4(%eax)
        p += p->s.size;
 659:	8d 04 c8             	lea    (%eax,%ecx,8),%eax
        p->s.size = nunits;
 65c:	89 78 04             	mov    %edi,0x4(%eax)
      freep = prevp;
 65f:	89 15 9c 09 00 00    	mov    %edx,0x99c
}
 665:	8d 65 f4             	lea    -0xc(%ebp),%esp
      return (void*)(p + 1);
 668:	83 c0 08             	add    $0x8,%eax
}
 66b:	5b                   	pop    %ebx
 66c:	5e                   	pop    %esi
 66d:	5f                   	pop    %edi
 66e:	5d                   	pop    %ebp
 66f:	c3                   	ret
    base.s.ptr = freep = prevp = &base;
 670:	c7 05 9c 09 00 00 a0 	movl   $0x9a0,0x99c
 677:	09 00 00 
    base.s.size = 0;
 67a:	b8 a0 09 00 00       	mov    $0x9a0,%eax
    base.s.ptr = freep = prevp = &base;
 67f:	c7 05 a0 09 00 00 a0 	movl   $0x9a0,0x9a0
 686:	09 00 00 
    base.s.size = 0;
 689:	c7 05 a4 09 00 00 00 	movl   $0x0,0x9a4
 690:	00 00 00 
    if(p->s.size >= nunits){
 693:	e9 54 ff ff ff       	jmp    5ec <malloc+0x2c>
 698:	2e 8d b4 26 00 00 00 	lea    %cs:0x0(%esi,%eiz,1),%esi
 69f:	00 
        prevp->s.ptr = p->s.ptr;
 6a0:	8b 08                	mov    (%eax),%ecx
 6a2:	89 0a                	mov    %ecx,(%edx)
 6a4:	eb b9                	jmp    65f <malloc+0x9f>
