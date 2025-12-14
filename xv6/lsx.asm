
_lsx:     formato del fichero elf32-i386


Desensamblado de la sección .text:

00000000 <main>:
  close(fd);
}

int
main(int argc, char *argv[])
{
   0:	55                   	push   %ebp
   1:	89 e5                	mov    %esp,%ebp
   3:	57                   	push   %edi
   4:	56                   	push   %esi
   5:	8b 75 08             	mov    0x8(%ebp),%esi
   8:	53                   	push   %ebx
   9:	8b 7d 0c             	mov    0xc(%ebp),%edi
   c:	bb 01 00 00 00       	mov    $0x1,%ebx
  11:	83 e4 f0             	and    $0xfffffff0,%esp
  int i;

  if(argc < 2){
  14:	83 fe 01             	cmp    $0x1,%esi
  17:	7e 1b                	jle    34 <main+0x34>
  19:	8d b4 26 00 00 00 00 	lea    0x0(%esi,%eiz,1),%esi
    lsx(".");
    exit();
  }

  for(i = 1; i < argc; i++)
    lsx(argv[i]);
  20:	8b 04 9f             	mov    (%edi,%ebx,4),%eax
  for(i = 1; i < argc; i++)
  23:	83 c3 01             	add    $0x1,%ebx
    lsx(argv[i]);
  26:	e8 c5 00 00 00       	call   f0 <lsx>
  for(i = 1; i < argc; i++)
  2b:	39 de                	cmp    %ebx,%esi
  2d:	75 f1                	jne    20 <main+0x20>

  exit();
  2f:	e8 9f 05 00 00       	call   5d3 <exit>
    lsx(".");
  34:	b8 8c 0a 00 00       	mov    $0xa8c,%eax
  39:	e8 b2 00 00 00       	call   f0 <lsx>
    exit();
  3e:	e8 90 05 00 00       	call   5d3 <exit>
  43:	66 90                	xchg   %ax,%ax
  45:	66 90                	xchg   %ax,%ax
  47:	66 90                	xchg   %ax,%ax
  49:	66 90                	xchg   %ax,%ax
  4b:	66 90                	xchg   %ax,%ax
  4d:	66 90                	xchg   %ax,%ax
  4f:	90                   	nop

00000050 <fmtname>:
{
  50:	55                   	push   %ebp
  51:	89 e5                	mov    %esp,%ebp
  53:	56                   	push   %esi
  54:	89 c6                	mov    %eax,%esi
  56:	53                   	push   %ebx
  for(p=path+strlen(path); p >= path && *p != '/'; p--)
  57:	83 ec 0c             	sub    $0xc,%esp
  5a:	50                   	push   %eax
  5b:	e8 c0 03 00 00       	call   420 <strlen>
  60:	83 c4 10             	add    $0x10,%esp
  63:	01 f0                	add    %esi,%eax
  65:	89 c3                	mov    %eax,%ebx
  67:	73 10                	jae    79 <fmtname+0x29>
  69:	eb 13                	jmp    7e <fmtname+0x2e>
  6b:	2e 8d 74 26 00       	lea    %cs:0x0(%esi,%eiz,1),%esi
  70:	8d 43 ff             	lea    -0x1(%ebx),%eax
  73:	39 f0                	cmp    %esi,%eax
  75:	72 0a                	jb     81 <fmtname+0x31>
  77:	89 c3                	mov    %eax,%ebx
  79:	80 3b 2f             	cmpb   $0x2f,(%ebx)
  7c:	75 f2                	jne    70 <fmtname+0x20>
  p++;
  7e:	83 c3 01             	add    $0x1,%ebx
  if(strlen(p) >= DIRSIZ)
  81:	83 ec 0c             	sub    $0xc,%esp
  84:	53                   	push   %ebx
  85:	e8 96 03 00 00       	call   420 <strlen>
  8a:	83 c4 10             	add    $0x10,%esp
  8d:	83 f8 0d             	cmp    $0xd,%eax
  90:	77 51                	ja     e3 <fmtname+0x93>
  memmove(buf, p, strlen(p));
  92:	83 ec 0c             	sub    $0xc,%esp
  95:	53                   	push   %ebx
  96:	e8 85 03 00 00       	call   420 <strlen>
  9b:	83 c4 0c             	add    $0xc,%esp
  9e:	50                   	push   %eax
  9f:	53                   	push   %ebx
  a0:	68 74 0e 00 00       	push   $0xe74
  a5:	e8 f6 04 00 00       	call   5a0 <memmove>
  memset(buf+strlen(p), ' ', DIRSIZ-strlen(p));
  aa:	89 1c 24             	mov    %ebx,(%esp)
  ad:	e8 6e 03 00 00       	call   420 <strlen>
  b2:	89 1c 24             	mov    %ebx,(%esp)
  return buf;
  b5:	bb 74 0e 00 00       	mov    $0xe74,%ebx
  memset(buf+strlen(p), ' ', DIRSIZ-strlen(p));
  ba:	89 c6                	mov    %eax,%esi
  bc:	e8 5f 03 00 00       	call   420 <strlen>
  c1:	ba 0e 00 00 00       	mov    $0xe,%edx
  c6:	83 c4 0c             	add    $0xc,%esp
  c9:	29 f2                	sub    %esi,%edx
  cb:	05 74 0e 00 00       	add    $0xe74,%eax
  d0:	52                   	push   %edx
  d1:	6a 20                	push   $0x20
  d3:	50                   	push   %eax
  d4:	e8 77 03 00 00       	call   450 <memset>
  buf[DIRSIZ] = 0;
  d9:	c6 05 82 0e 00 00 00 	movb   $0x0,0xe82
  return buf;
  e0:	83 c4 10             	add    $0x10,%esp
}
  e3:	8d 65 f8             	lea    -0x8(%ebp),%esp
  e6:	89 d8                	mov    %ebx,%eax
  e8:	5b                   	pop    %ebx
  e9:	5e                   	pop    %esi
  ea:	5d                   	pop    %ebp
  eb:	c3                   	ret
  ec:	8d 74 26 00          	lea    0x0(%esi,%eiz,1),%esi

000000f0 <lsx>:
{
  f0:	55                   	push   %ebp
  f1:	89 e5                	mov    %esp,%ebp
  f3:	57                   	push   %edi
  f4:	56                   	push   %esi
  f5:	53                   	push   %ebx
  f6:	89 c3                	mov    %eax,%ebx
  f8:	81 ec 64 02 00 00    	sub    $0x264,%esp
  if((fd = open(path, 0)) < 0){
  fe:	6a 00                	push   $0x0
 100:	50                   	push   %eax
 101:	e8 0d 05 00 00       	call   613 <open>
 106:	83 c4 10             	add    $0x10,%esp
 109:	85 c0                	test   %eax,%eax
 10b:	0f 88 cf 00 00 00    	js     1e0 <lsx+0xf0>
  if(fstat(fd, &st) < 0){
 111:	83 ec 08             	sub    $0x8,%esp
 114:	8d bd d4 fd ff ff    	lea    -0x22c(%ebp),%edi
 11a:	89 c6                	mov    %eax,%esi
 11c:	57                   	push   %edi
 11d:	50                   	push   %eax
 11e:	e8 08 05 00 00       	call   62b <fstat>
 123:	83 c4 10             	add    $0x10,%esp
 126:	85 c0                	test   %eax,%eax
 128:	0f 88 02 01 00 00    	js     230 <lsx+0x140>
  printf(1, "NAME             TYPE  INO   NLINK SIZE\n");
 12e:	83 ec 08             	sub    $0x8,%esp
 131:	68 a4 0a 00 00       	push   $0xaa4
 136:	6a 01                	push   $0x1
 138:	e8 f3 05 00 00       	call   730 <printf>
  printf(1, "---------------------------------------\n");
 13d:	59                   	pop    %ecx
 13e:	58                   	pop    %eax
 13f:	68 d0 0a 00 00       	push   $0xad0
 144:	6a 01                	push   $0x1
 146:	e8 e5 05 00 00       	call   730 <printf>
  switch(st.type){
 14b:	0f b7 85 d4 fd ff ff 	movzwl -0x22c(%ebp),%eax
 152:	83 c4 10             	add    $0x10,%esp
 155:	66 83 f8 01          	cmp    $0x1,%ax
 159:	0f 84 a1 00 00 00    	je     200 <lsx+0x110>
 15f:	8d 50 fe             	lea    -0x2(%eax),%edx
 162:	66 83 fa 01          	cmp    $0x1,%dx
 166:	77 61                	ja     1c9 <lsx+0xd9>
    printf(1, "%s %4s %5d %5d %5d\n",
 168:	83 e8 01             	sub    $0x1,%eax
 16b:	8b 8d e4 fd ff ff    	mov    -0x21c(%ebp),%ecx
 171:	0f bf 95 e0 fd ff ff 	movswl -0x220(%ebp),%edx
 178:	0f b7 c0             	movzwl %ax,%eax
 17b:	8b bd dc fd ff ff    	mov    -0x224(%ebp),%edi
  switch(type){
 181:	8b 04 85 fc 0a 00 00 	mov    0xafc(,%eax,4),%eax
    printf(1, "%s %4s %5d %5d %5d\n",
 188:	89 8d ac fd ff ff    	mov    %ecx,-0x254(%ebp)
 18e:	89 95 b0 fd ff ff    	mov    %edx,-0x250(%ebp)
 194:	89 85 b4 fd ff ff    	mov    %eax,-0x24c(%ebp)
 19a:	89 d8                	mov    %ebx,%eax
 19c:	e8 af fe ff ff       	call   50 <fmtname>
 1a1:	8b 8d ac fd ff ff    	mov    -0x254(%ebp),%ecx
 1a7:	83 ec 04             	sub    $0x4,%esp
 1aa:	51                   	push   %ecx
 1ab:	8b 95 b0 fd ff ff    	mov    -0x250(%ebp),%edx
 1b1:	52                   	push   %edx
 1b2:	57                   	push   %edi
 1b3:	ff b5 b4 fd ff ff    	push   -0x24c(%ebp)
 1b9:	50                   	push   %eax
 1ba:	68 64 0a 00 00       	push   $0xa64
 1bf:	6a 01                	push   $0x1
 1c1:	e8 6a 05 00 00       	call   730 <printf>
    break;
 1c6:	83 c4 20             	add    $0x20,%esp
  close(fd);
 1c9:	83 ec 0c             	sub    $0xc,%esp
 1cc:	56                   	push   %esi
 1cd:	e8 29 04 00 00       	call   5fb <close>
 1d2:	83 c4 10             	add    $0x10,%esp
}
 1d5:	8d 65 f4             	lea    -0xc(%ebp),%esp
 1d8:	5b                   	pop    %ebx
 1d9:	5e                   	pop    %esi
 1da:	5f                   	pop    %edi
 1db:	5d                   	pop    %ebp
 1dc:	c3                   	ret
 1dd:	8d 76 00             	lea    0x0(%esi),%esi
    printf(2, "lsx: cannot open %s\n", path);
 1e0:	83 ec 04             	sub    $0x4,%esp
 1e3:	53                   	push   %ebx
 1e4:	68 3a 0a 00 00       	push   $0xa3a
 1e9:	6a 02                	push   $0x2
 1eb:	e8 40 05 00 00       	call   730 <printf>
    return;
 1f0:	83 c4 10             	add    $0x10,%esp
}
 1f3:	8d 65 f4             	lea    -0xc(%ebp),%esp
 1f6:	5b                   	pop    %ebx
 1f7:	5e                   	pop    %esi
 1f8:	5f                   	pop    %edi
 1f9:	5d                   	pop    %ebp
 1fa:	c3                   	ret
 1fb:	2e 8d 74 26 00       	lea    %cs:0x0(%esi,%eiz,1),%esi
    if(strlen(path) + 1 + DIRSIZ + 1 > sizeof buf){
 200:	83 ec 0c             	sub    $0xc,%esp
 203:	53                   	push   %ebx
 204:	e8 17 02 00 00       	call   420 <strlen>
 209:	83 c4 10             	add    $0x10,%esp
 20c:	83 c0 10             	add    $0x10,%eax
 20f:	3d 00 02 00 00       	cmp    $0x200,%eax
 214:	76 42                	jbe    258 <lsx+0x168>
      printf(2, "lsx: path too long\n");
 216:	83 ec 08             	sub    $0x8,%esp
 219:	68 78 0a 00 00       	push   $0xa78
 21e:	6a 02                	push   $0x2
 220:	e8 0b 05 00 00       	call   730 <printf>
      break;
 225:	83 c4 10             	add    $0x10,%esp
 228:	eb 9f                	jmp    1c9 <lsx+0xd9>
 22a:	8d b6 00 00 00 00    	lea    0x0(%esi),%esi
    printf(2, "lsx: cannot stat %s\n", path);
 230:	83 ec 04             	sub    $0x4,%esp
 233:	53                   	push   %ebx
 234:	68 4f 0a 00 00       	push   $0xa4f
 239:	6a 02                	push   $0x2
 23b:	e8 f0 04 00 00       	call   730 <printf>
    close(fd);
 240:	89 34 24             	mov    %esi,(%esp)
 243:	e8 b3 03 00 00       	call   5fb <close>
    return;
 248:	83 c4 10             	add    $0x10,%esp
}
 24b:	8d 65 f4             	lea    -0xc(%ebp),%esp
 24e:	5b                   	pop    %ebx
 24f:	5e                   	pop    %esi
 250:	5f                   	pop    %edi
 251:	5d                   	pop    %ebp
 252:	c3                   	ret
 253:	2e 8d 74 26 00       	lea    %cs:0x0(%esi,%eiz,1),%esi
    strcpy(buf, path);
 258:	83 ec 08             	sub    $0x8,%esp
 25b:	53                   	push   %ebx
 25c:	8d 9d e8 fd ff ff    	lea    -0x218(%ebp),%ebx
 262:	53                   	push   %ebx
 263:	e8 28 01 00 00       	call   390 <strcpy>
    p = buf+strlen(buf);
 268:	89 1c 24             	mov    %ebx,(%esp)
 26b:	e8 b0 01 00 00       	call   420 <strlen>
    while(read(fd, &de, sizeof(de)) == sizeof(de)){
 270:	83 c4 10             	add    $0x10,%esp
    p = buf+strlen(buf);
 273:	01 d8                	add    %ebx,%eax
    *p++ = '/';
 275:	8d 48 01             	lea    0x1(%eax),%ecx
    p = buf+strlen(buf);
 278:	89 85 a4 fd ff ff    	mov    %eax,-0x25c(%ebp)
    *p++ = '/';
 27e:	89 8d a0 fd ff ff    	mov    %ecx,-0x260(%ebp)
 284:	c6 00 2f             	movb   $0x2f,(%eax)
    while(read(fd, &de, sizeof(de)) == sizeof(de)){
 287:	2e 8d b4 26 00 00 00 	lea    %cs:0x0(%esi,%eiz,1),%esi
 28e:	00 
 28f:	90                   	nop
 290:	83 ec 04             	sub    $0x4,%esp
 293:	8d 85 c4 fd ff ff    	lea    -0x23c(%ebp),%eax
 299:	6a 10                	push   $0x10
 29b:	50                   	push   %eax
 29c:	56                   	push   %esi
 29d:	e8 49 03 00 00       	call   5eb <read>
 2a2:	83 c4 10             	add    $0x10,%esp
 2a5:	83 f8 10             	cmp    $0x10,%eax
 2a8:	0f 85 1b ff ff ff    	jne    1c9 <lsx+0xd9>
      if(de.inum == 0)
 2ae:	66 83 bd c4 fd ff ff 	cmpw   $0x0,-0x23c(%ebp)
 2b5:	00 
 2b6:	74 d8                	je     290 <lsx+0x1a0>
      memmove(p, de.name, DIRSIZ);
 2b8:	83 ec 04             	sub    $0x4,%esp
 2bb:	8d 85 c6 fd ff ff    	lea    -0x23a(%ebp),%eax
 2c1:	6a 0e                	push   $0xe
 2c3:	50                   	push   %eax
 2c4:	ff b5 a0 fd ff ff    	push   -0x260(%ebp)
 2ca:	e8 d1 02 00 00       	call   5a0 <memmove>
      p[DIRSIZ] = 0;
 2cf:	8b 85 a4 fd ff ff    	mov    -0x25c(%ebp),%eax
 2d5:	c6 40 0f 00          	movb   $0x0,0xf(%eax)
      if(stat(buf, &st) < 0){
 2d9:	58                   	pop    %eax
 2da:	5a                   	pop    %edx
 2db:	57                   	push   %edi
 2dc:	53                   	push   %ebx
 2dd:	e8 2e 02 00 00       	call   510 <stat>
 2e2:	83 c4 10             	add    $0x10,%esp
 2e5:	85 c0                	test   %eax,%eax
 2e7:	0f 88 83 00 00 00    	js     370 <lsx+0x280>
      printf(1, "%s %4s %5d %5d %5d\n",
 2ed:	0f bf 85 e0 fd ff ff 	movswl -0x220(%ebp),%eax
 2f4:	8b 8d e4 fd ff ff    	mov    -0x21c(%ebp),%ecx
  switch(type){
 2fa:	ba 38 0a 00 00       	mov    $0xa38,%edx
      printf(1, "%s %4s %5d %5d %5d\n",
 2ff:	89 85 b4 fd ff ff    	mov    %eax,-0x24c(%ebp)
 305:	8b 85 dc fd ff ff    	mov    -0x224(%ebp),%eax
 30b:	89 85 b0 fd ff ff    	mov    %eax,-0x250(%ebp)
  switch(type){
 311:	0f b7 85 d4 fd ff ff 	movzwl -0x22c(%ebp),%eax
 318:	83 e8 01             	sub    $0x1,%eax
 31b:	66 83 f8 02          	cmp    $0x2,%ax
 31f:	77 0a                	ja     32b <lsx+0x23b>
 321:	0f b7 c0             	movzwl %ax,%eax
 324:	8b 14 85 fc 0a 00 00 	mov    0xafc(,%eax,4),%edx
      printf(1, "%s %4s %5d %5d %5d\n",
 32b:	89 d8                	mov    %ebx,%eax
 32d:	89 95 a8 fd ff ff    	mov    %edx,-0x258(%ebp)
 333:	89 8d ac fd ff ff    	mov    %ecx,-0x254(%ebp)
 339:	e8 12 fd ff ff       	call   50 <fmtname>
 33e:	8b 8d ac fd ff ff    	mov    -0x254(%ebp),%ecx
 344:	83 ec 04             	sub    $0x4,%esp
 347:	51                   	push   %ecx
 348:	ff b5 b4 fd ff ff    	push   -0x24c(%ebp)
 34e:	ff b5 b0 fd ff ff    	push   -0x250(%ebp)
 354:	8b 95 a8 fd ff ff    	mov    -0x258(%ebp),%edx
 35a:	52                   	push   %edx
 35b:	50                   	push   %eax
 35c:	68 64 0a 00 00       	push   $0xa64
 361:	6a 01                	push   $0x1
 363:	e8 c8 03 00 00       	call   730 <printf>
 368:	83 c4 20             	add    $0x20,%esp
 36b:	e9 20 ff ff ff       	jmp    290 <lsx+0x1a0>
        printf(2, "lsx: cannot stat %s\n", buf);
 370:	83 ec 04             	sub    $0x4,%esp
 373:	53                   	push   %ebx
 374:	68 4f 0a 00 00       	push   $0xa4f
 379:	6a 02                	push   $0x2
 37b:	e8 b0 03 00 00       	call   730 <printf>
        continue;
 380:	83 c4 10             	add    $0x10,%esp
 383:	e9 08 ff ff ff       	jmp    290 <lsx+0x1a0>
 388:	66 90                	xchg   %ax,%ax
 38a:	66 90                	xchg   %ax,%ax
 38c:	66 90                	xchg   %ax,%ax
 38e:	66 90                	xchg   %ax,%ax

00000390 <strcpy>:
#include "user.h"
#include "x86.h"

char*
strcpy(char *s, const char *t)
{
 390:	55                   	push   %ebp
  char *os;

  os = s;
  while((*s++ = *t++) != 0)
 391:	31 c0                	xor    %eax,%eax
{
 393:	89 e5                	mov    %esp,%ebp
 395:	53                   	push   %ebx
 396:	8b 4d 08             	mov    0x8(%ebp),%ecx
 399:	8b 5d 0c             	mov    0xc(%ebp),%ebx
 39c:	8d 74 26 00          	lea    0x0(%esi,%eiz,1),%esi
  while((*s++ = *t++) != 0)
 3a0:	0f b6 14 03          	movzbl (%ebx,%eax,1),%edx
 3a4:	88 14 01             	mov    %dl,(%ecx,%eax,1)
 3a7:	83 c0 01             	add    $0x1,%eax
 3aa:	84 d2                	test   %dl,%dl
 3ac:	75 f2                	jne    3a0 <strcpy+0x10>
    ;
  return os;
}
 3ae:	8b 5d fc             	mov    -0x4(%ebp),%ebx
 3b1:	89 c8                	mov    %ecx,%eax
 3b3:	c9                   	leave
 3b4:	c3                   	ret
 3b5:	2e 8d b4 26 00 00 00 	lea    %cs:0x0(%esi,%eiz,1),%esi
 3bc:	00 
 3bd:	8d 76 00             	lea    0x0(%esi),%esi

000003c0 <strcmp>:

int
strcmp(const char *p, const char *q)
{
 3c0:	55                   	push   %ebp
 3c1:	89 e5                	mov    %esp,%ebp
 3c3:	53                   	push   %ebx
 3c4:	8b 55 08             	mov    0x8(%ebp),%edx
 3c7:	8b 4d 0c             	mov    0xc(%ebp),%ecx
  while(*p && *p == *q)
 3ca:	0f b6 02             	movzbl (%edx),%eax
 3cd:	84 c0                	test   %al,%al
 3cf:	75 17                	jne    3e8 <strcmp+0x28>
 3d1:	eb 3a                	jmp    40d <strcmp+0x4d>
 3d3:	2e 8d 74 26 00       	lea    %cs:0x0(%esi,%eiz,1),%esi
 3d8:	0f b6 42 01          	movzbl 0x1(%edx),%eax
    p++, q++;
 3dc:	83 c2 01             	add    $0x1,%edx
 3df:	8d 59 01             	lea    0x1(%ecx),%ebx
  while(*p && *p == *q)
 3e2:	84 c0                	test   %al,%al
 3e4:	74 1a                	je     400 <strcmp+0x40>
 3e6:	89 d9                	mov    %ebx,%ecx
 3e8:	0f b6 19             	movzbl (%ecx),%ebx
 3eb:	38 c3                	cmp    %al,%bl
 3ed:	74 e9                	je     3d8 <strcmp+0x18>
  return (uchar)*p - (uchar)*q;
 3ef:	29 d8                	sub    %ebx,%eax
}
 3f1:	8b 5d fc             	mov    -0x4(%ebp),%ebx
 3f4:	c9                   	leave
 3f5:	c3                   	ret
 3f6:	2e 8d b4 26 00 00 00 	lea    %cs:0x0(%esi,%eiz,1),%esi
 3fd:	00 
 3fe:	66 90                	xchg   %ax,%ax
  return (uchar)*p - (uchar)*q;
 400:	0f b6 59 01          	movzbl 0x1(%ecx),%ebx
 404:	31 c0                	xor    %eax,%eax
 406:	29 d8                	sub    %ebx,%eax
}
 408:	8b 5d fc             	mov    -0x4(%ebp),%ebx
 40b:	c9                   	leave
 40c:	c3                   	ret
  return (uchar)*p - (uchar)*q;
 40d:	0f b6 19             	movzbl (%ecx),%ebx
 410:	31 c0                	xor    %eax,%eax
 412:	eb db                	jmp    3ef <strcmp+0x2f>
 414:	2e 8d b4 26 00 00 00 	lea    %cs:0x0(%esi,%eiz,1),%esi
 41b:	00 
 41c:	8d 74 26 00          	lea    0x0(%esi,%eiz,1),%esi

00000420 <strlen>:

uint
strlen(const char *s)
{
 420:	55                   	push   %ebp
 421:	89 e5                	mov    %esp,%ebp
 423:	8b 55 08             	mov    0x8(%ebp),%edx
  int n;

  for(n = 0; s[n]; n++)
 426:	80 3a 00             	cmpb   $0x0,(%edx)
 429:	74 15                	je     440 <strlen+0x20>
 42b:	31 c0                	xor    %eax,%eax
 42d:	8d 76 00             	lea    0x0(%esi),%esi
 430:	83 c0 01             	add    $0x1,%eax
 433:	80 3c 02 00          	cmpb   $0x0,(%edx,%eax,1)
 437:	89 c1                	mov    %eax,%ecx
 439:	75 f5                	jne    430 <strlen+0x10>
    ;
  return n;
}
 43b:	89 c8                	mov    %ecx,%eax
 43d:	5d                   	pop    %ebp
 43e:	c3                   	ret
 43f:	90                   	nop
  for(n = 0; s[n]; n++)
 440:	31 c9                	xor    %ecx,%ecx
}
 442:	5d                   	pop    %ebp
 443:	89 c8                	mov    %ecx,%eax
 445:	c3                   	ret
 446:	2e 8d b4 26 00 00 00 	lea    %cs:0x0(%esi,%eiz,1),%esi
 44d:	00 
 44e:	66 90                	xchg   %ax,%ax

00000450 <memset>:

void*
memset(void *dst, int c, uint n)
{
 450:	55                   	push   %ebp
 451:	89 e5                	mov    %esp,%ebp
 453:	57                   	push   %edi
 454:	8b 55 08             	mov    0x8(%ebp),%edx
}

static inline void
stosb(void *addr, int data, int cnt)
{
  asm volatile("cld; rep stosb" :
 457:	8b 4d 10             	mov    0x10(%ebp),%ecx
 45a:	8b 45 0c             	mov    0xc(%ebp),%eax
 45d:	89 d7                	mov    %edx,%edi
 45f:	fc                   	cld
 460:	f3 aa                	rep stos %al,%es:(%edi)
  stosb(dst, c, n);
  return dst;
}
 462:	8b 7d fc             	mov    -0x4(%ebp),%edi
 465:	89 d0                	mov    %edx,%eax
 467:	c9                   	leave
 468:	c3                   	ret
 469:	8d b4 26 00 00 00 00 	lea    0x0(%esi,%eiz,1),%esi

00000470 <strchr>:

char*
strchr(const char *s, char c)
{
 470:	55                   	push   %ebp
 471:	89 e5                	mov    %esp,%ebp
 473:	8b 45 08             	mov    0x8(%ebp),%eax
 476:	0f b6 4d 0c          	movzbl 0xc(%ebp),%ecx
  for(; *s; s++)
 47a:	0f b6 10             	movzbl (%eax),%edx
 47d:	84 d2                	test   %dl,%dl
 47f:	75 12                	jne    493 <strchr+0x23>
 481:	eb 1d                	jmp    4a0 <strchr+0x30>
 483:	2e 8d 74 26 00       	lea    %cs:0x0(%esi,%eiz,1),%esi
 488:	0f b6 50 01          	movzbl 0x1(%eax),%edx
 48c:	83 c0 01             	add    $0x1,%eax
 48f:	84 d2                	test   %dl,%dl
 491:	74 0d                	je     4a0 <strchr+0x30>
    if(*s == c)
 493:	38 d1                	cmp    %dl,%cl
 495:	75 f1                	jne    488 <strchr+0x18>
      return (char*)s;
  return 0;
}
 497:	5d                   	pop    %ebp
 498:	c3                   	ret
 499:	8d b4 26 00 00 00 00 	lea    0x0(%esi,%eiz,1),%esi
  return 0;
 4a0:	31 c0                	xor    %eax,%eax
}
 4a2:	5d                   	pop    %ebp
 4a3:	c3                   	ret
 4a4:	2e 8d b4 26 00 00 00 	lea    %cs:0x0(%esi,%eiz,1),%esi
 4ab:	00 
 4ac:	8d 74 26 00          	lea    0x0(%esi,%eiz,1),%esi

000004b0 <gets>:

char*
gets(char *buf, int max)
{
 4b0:	55                   	push   %ebp
 4b1:	89 e5                	mov    %esp,%ebp
 4b3:	57                   	push   %edi
 4b4:	56                   	push   %esi
  int i, cc;
  char c;

  for(i=0; i+1 < max; ){
    cc = read(0, &c, 1);
 4b5:	8d 75 e7             	lea    -0x19(%ebp),%esi
{
 4b8:	53                   	push   %ebx
  for(i=0; i+1 < max; ){
 4b9:	31 db                	xor    %ebx,%ebx
{
 4bb:	83 ec 1c             	sub    $0x1c,%esp
  for(i=0; i+1 < max; ){
 4be:	eb 27                	jmp    4e7 <gets+0x37>
    cc = read(0, &c, 1);
 4c0:	83 ec 04             	sub    $0x4,%esp
 4c3:	6a 01                	push   $0x1
 4c5:	56                   	push   %esi
 4c6:	6a 00                	push   $0x0
 4c8:	e8 1e 01 00 00       	call   5eb <read>
    if(cc < 1)
 4cd:	83 c4 10             	add    $0x10,%esp
 4d0:	85 c0                	test   %eax,%eax
 4d2:	7e 1d                	jle    4f1 <gets+0x41>
      break;
    buf[i++] = c;
 4d4:	0f b6 45 e7          	movzbl -0x19(%ebp),%eax
 4d8:	8b 55 08             	mov    0x8(%ebp),%edx
 4db:	88 44 1a ff          	mov    %al,-0x1(%edx,%ebx,1)
    if(c == '\n' || c == '\r')
 4df:	3c 0a                	cmp    $0xa,%al
 4e1:	74 10                	je     4f3 <gets+0x43>
 4e3:	3c 0d                	cmp    $0xd,%al
 4e5:	74 0c                	je     4f3 <gets+0x43>
  for(i=0; i+1 < max; ){
 4e7:	89 df                	mov    %ebx,%edi
 4e9:	83 c3 01             	add    $0x1,%ebx
 4ec:	3b 5d 0c             	cmp    0xc(%ebp),%ebx
 4ef:	7c cf                	jl     4c0 <gets+0x10>
 4f1:	89 fb                	mov    %edi,%ebx
      break;
  }
  buf[i] = '\0';
 4f3:	8b 45 08             	mov    0x8(%ebp),%eax
 4f6:	c6 04 18 00          	movb   $0x0,(%eax,%ebx,1)
  return buf;
}
 4fa:	8d 65 f4             	lea    -0xc(%ebp),%esp
 4fd:	5b                   	pop    %ebx
 4fe:	5e                   	pop    %esi
 4ff:	5f                   	pop    %edi
 500:	5d                   	pop    %ebp
 501:	c3                   	ret
 502:	2e 8d b4 26 00 00 00 	lea    %cs:0x0(%esi,%eiz,1),%esi
 509:	00 
 50a:	8d b6 00 00 00 00    	lea    0x0(%esi),%esi

00000510 <stat>:

int
stat(const char *n, struct stat *st)
{
 510:	55                   	push   %ebp
 511:	89 e5                	mov    %esp,%ebp
 513:	56                   	push   %esi
 514:	53                   	push   %ebx
  int fd;
  int r;

  fd = open(n, O_RDONLY);
 515:	83 ec 08             	sub    $0x8,%esp
 518:	6a 00                	push   $0x0
 51a:	ff 75 08             	push   0x8(%ebp)
 51d:	e8 f1 00 00 00       	call   613 <open>
  if(fd < 0)
 522:	83 c4 10             	add    $0x10,%esp
 525:	85 c0                	test   %eax,%eax
 527:	78 27                	js     550 <stat+0x40>
    return -1;
  r = fstat(fd, st);
 529:	83 ec 08             	sub    $0x8,%esp
 52c:	ff 75 0c             	push   0xc(%ebp)
 52f:	89 c3                	mov    %eax,%ebx
 531:	50                   	push   %eax
 532:	e8 f4 00 00 00       	call   62b <fstat>
  close(fd);
 537:	89 1c 24             	mov    %ebx,(%esp)
  r = fstat(fd, st);
 53a:	89 c6                	mov    %eax,%esi
  close(fd);
 53c:	e8 ba 00 00 00       	call   5fb <close>
  return r;
 541:	83 c4 10             	add    $0x10,%esp
}
 544:	8d 65 f8             	lea    -0x8(%ebp),%esp
 547:	89 f0                	mov    %esi,%eax
 549:	5b                   	pop    %ebx
 54a:	5e                   	pop    %esi
 54b:	5d                   	pop    %ebp
 54c:	c3                   	ret
 54d:	8d 76 00             	lea    0x0(%esi),%esi
    return -1;
 550:	be ff ff ff ff       	mov    $0xffffffff,%esi
 555:	eb ed                	jmp    544 <stat+0x34>
 557:	2e 8d b4 26 00 00 00 	lea    %cs:0x0(%esi,%eiz,1),%esi
 55e:	00 
 55f:	90                   	nop

00000560 <atoi>:

int
atoi(const char *s)
{
 560:	55                   	push   %ebp
 561:	89 e5                	mov    %esp,%ebp
 563:	53                   	push   %ebx
 564:	8b 55 08             	mov    0x8(%ebp),%edx
  int n;

  n = 0;
  while('0' <= *s && *s <= '9')
 567:	0f be 02             	movsbl (%edx),%eax
 56a:	8d 48 d0             	lea    -0x30(%eax),%ecx
 56d:	80 f9 09             	cmp    $0x9,%cl
  n = 0;
 570:	b9 00 00 00 00       	mov    $0x0,%ecx
  while('0' <= *s && *s <= '9')
 575:	77 1e                	ja     595 <atoi+0x35>
 577:	2e 8d b4 26 00 00 00 	lea    %cs:0x0(%esi,%eiz,1),%esi
 57e:	00 
 57f:	90                   	nop
    n = n*10 + *s++ - '0';
 580:	83 c2 01             	add    $0x1,%edx
 583:	8d 0c 89             	lea    (%ecx,%ecx,4),%ecx
 586:	8d 4c 48 d0          	lea    -0x30(%eax,%ecx,2),%ecx
  while('0' <= *s && *s <= '9')
 58a:	0f be 02             	movsbl (%edx),%eax
 58d:	8d 58 d0             	lea    -0x30(%eax),%ebx
 590:	80 fb 09             	cmp    $0x9,%bl
 593:	76 eb                	jbe    580 <atoi+0x20>
  return n;
}
 595:	8b 5d fc             	mov    -0x4(%ebp),%ebx
 598:	89 c8                	mov    %ecx,%eax
 59a:	c9                   	leave
 59b:	c3                   	ret
 59c:	8d 74 26 00          	lea    0x0(%esi,%eiz,1),%esi

000005a0 <memmove>:

void*
memmove(void *vdst, const void *vsrc, int n)
{
 5a0:	55                   	push   %ebp
 5a1:	89 e5                	mov    %esp,%ebp
 5a3:	57                   	push   %edi
 5a4:	8b 45 10             	mov    0x10(%ebp),%eax
 5a7:	8b 55 08             	mov    0x8(%ebp),%edx
 5aa:	56                   	push   %esi
 5ab:	8b 75 0c             	mov    0xc(%ebp),%esi
  char *dst;
  const char *src;

  dst = vdst;
  src = vsrc;
  while(n-- > 0)
 5ae:	85 c0                	test   %eax,%eax
 5b0:	7e 13                	jle    5c5 <memmove+0x25>
 5b2:	01 d0                	add    %edx,%eax
  dst = vdst;
 5b4:	89 d7                	mov    %edx,%edi
 5b6:	2e 8d b4 26 00 00 00 	lea    %cs:0x0(%esi,%eiz,1),%esi
 5bd:	00 
 5be:	66 90                	xchg   %ax,%ax
    *dst++ = *src++;
 5c0:	a4                   	movsb  %ds:(%esi),%es:(%edi)
  while(n-- > 0)
 5c1:	39 f8                	cmp    %edi,%eax
 5c3:	75 fb                	jne    5c0 <memmove+0x20>
  return vdst;
}
 5c5:	5e                   	pop    %esi
 5c6:	89 d0                	mov    %edx,%eax
 5c8:	5f                   	pop    %edi
 5c9:	5d                   	pop    %ebp
 5ca:	c3                   	ret

000005cb <fork>:
  name: \
    movl $SYS_ ## name, %eax; \
    int $T_SYSCALL; \
    ret

SYSCALL(fork)
 5cb:	b8 01 00 00 00       	mov    $0x1,%eax
 5d0:	cd 40                	int    $0x40
 5d2:	c3                   	ret

000005d3 <exit>:
SYSCALL(exit)
 5d3:	b8 02 00 00 00       	mov    $0x2,%eax
 5d8:	cd 40                	int    $0x40
 5da:	c3                   	ret

000005db <wait>:
SYSCALL(wait)
 5db:	b8 03 00 00 00       	mov    $0x3,%eax
 5e0:	cd 40                	int    $0x40
 5e2:	c3                   	ret

000005e3 <pipe>:
SYSCALL(pipe)
 5e3:	b8 04 00 00 00       	mov    $0x4,%eax
 5e8:	cd 40                	int    $0x40
 5ea:	c3                   	ret

000005eb <read>:
SYSCALL(read)
 5eb:	b8 05 00 00 00       	mov    $0x5,%eax
 5f0:	cd 40                	int    $0x40
 5f2:	c3                   	ret

000005f3 <write>:
SYSCALL(write)
 5f3:	b8 10 00 00 00       	mov    $0x10,%eax
 5f8:	cd 40                	int    $0x40
 5fa:	c3                   	ret

000005fb <close>:
SYSCALL(close)
 5fb:	b8 15 00 00 00       	mov    $0x15,%eax
 600:	cd 40                	int    $0x40
 602:	c3                   	ret

00000603 <kill>:
SYSCALL(kill)
 603:	b8 06 00 00 00       	mov    $0x6,%eax
 608:	cd 40                	int    $0x40
 60a:	c3                   	ret

0000060b <exec>:
SYSCALL(exec)
 60b:	b8 07 00 00 00       	mov    $0x7,%eax
 610:	cd 40                	int    $0x40
 612:	c3                   	ret

00000613 <open>:
SYSCALL(open)
 613:	b8 0f 00 00 00       	mov    $0xf,%eax
 618:	cd 40                	int    $0x40
 61a:	c3                   	ret

0000061b <mknod>:
SYSCALL(mknod)
 61b:	b8 11 00 00 00       	mov    $0x11,%eax
 620:	cd 40                	int    $0x40
 622:	c3                   	ret

00000623 <unlink>:
SYSCALL(unlink)
 623:	b8 12 00 00 00       	mov    $0x12,%eax
 628:	cd 40                	int    $0x40
 62a:	c3                   	ret

0000062b <fstat>:
SYSCALL(fstat)
 62b:	b8 08 00 00 00       	mov    $0x8,%eax
 630:	cd 40                	int    $0x40
 632:	c3                   	ret

00000633 <link>:
SYSCALL(link)
 633:	b8 13 00 00 00       	mov    $0x13,%eax
 638:	cd 40                	int    $0x40
 63a:	c3                   	ret

0000063b <mkdir>:
SYSCALL(mkdir)
 63b:	b8 14 00 00 00       	mov    $0x14,%eax
 640:	cd 40                	int    $0x40
 642:	c3                   	ret

00000643 <chdir>:
SYSCALL(chdir)
 643:	b8 09 00 00 00       	mov    $0x9,%eax
 648:	cd 40                	int    $0x40
 64a:	c3                   	ret

0000064b <dup>:
SYSCALL(dup)
 64b:	b8 0a 00 00 00       	mov    $0xa,%eax
 650:	cd 40                	int    $0x40
 652:	c3                   	ret

00000653 <getpid>:
SYSCALL(getpid)
 653:	b8 0b 00 00 00       	mov    $0xb,%eax
 658:	cd 40                	int    $0x40
 65a:	c3                   	ret

0000065b <sbrk>:
SYSCALL(sbrk)
 65b:	b8 0c 00 00 00       	mov    $0xc,%eax
 660:	cd 40                	int    $0x40
 662:	c3                   	ret

00000663 <sleep>:
SYSCALL(sleep)
 663:	b8 0d 00 00 00       	mov    $0xd,%eax
 668:	cd 40                	int    $0x40
 66a:	c3                   	ret

0000066b <uptime>:
SYSCALL(uptime)
 66b:	b8 0e 00 00 00       	mov    $0xe,%eax
 670:	cd 40                	int    $0x40
 672:	c3                   	ret

00000673 <trace>:
SYSCALL(trace)
 673:	b8 16 00 00 00       	mov    $0x16,%eax
 678:	cd 40                	int    $0x40
 67a:	c3                   	ret

0000067b <psmem>:
SYSCALL(psmem)
 67b:	b8 17 00 00 00       	mov    $0x17,%eax
 680:	cd 40                	int    $0x40
 682:	c3                   	ret

00000683 <get_count>:
SYSCALL(get_count)
 683:	b8 18 00 00 00       	mov    $0x18,%eax
 688:	cd 40                	int    $0x40
 68a:	c3                   	ret
 68b:	66 90                	xchg   %ax,%ax
 68d:	66 90                	xchg   %ax,%ax
 68f:	90                   	nop

00000690 <printint>:
  write(fd, &c, 1);
}

static void
printint(int fd, int xx, int base, int sgn)
{
 690:	55                   	push   %ebp
 691:	89 e5                	mov    %esp,%ebp
 693:	57                   	push   %edi
 694:	56                   	push   %esi
 695:	53                   	push   %ebx
 696:	89 cb                	mov    %ecx,%ebx
  uint x;

  neg = 0;
  if(sgn && xx < 0){
    neg = 1;
    x = -xx;
 698:	89 d1                	mov    %edx,%ecx
{
 69a:	83 ec 3c             	sub    $0x3c,%esp
 69d:	89 45 c0             	mov    %eax,-0x40(%ebp)
  if(sgn && xx < 0){
 6a0:	85 d2                	test   %edx,%edx
 6a2:	0f 89 80 00 00 00    	jns    728 <printint+0x98>
 6a8:	f6 45 08 01          	testb  $0x1,0x8(%ebp)
 6ac:	74 7a                	je     728 <printint+0x98>
    x = -xx;
 6ae:	f7 d9                	neg    %ecx
    neg = 1;
 6b0:	b8 01 00 00 00       	mov    $0x1,%eax
  } else {
    x = xx;
  }

  i = 0;
 6b5:	89 45 c4             	mov    %eax,-0x3c(%ebp)
 6b8:	31 f6                	xor    %esi,%esi
 6ba:	8d b6 00 00 00 00    	lea    0x0(%esi),%esi
  do{
    buf[i++] = digits[x % base];
 6c0:	89 c8                	mov    %ecx,%eax
 6c2:	31 d2                	xor    %edx,%edx
 6c4:	89 f7                	mov    %esi,%edi
 6c6:	f7 f3                	div    %ebx
 6c8:	8d 76 01             	lea    0x1(%esi),%esi
 6cb:	0f b6 92 60 0b 00 00 	movzbl 0xb60(%edx),%edx
 6d2:	88 54 35 d7          	mov    %dl,-0x29(%ebp,%esi,1)
  }while((x /= base) != 0);
 6d6:	89 ca                	mov    %ecx,%edx
 6d8:	89 c1                	mov    %eax,%ecx
 6da:	39 da                	cmp    %ebx,%edx
 6dc:	73 e2                	jae    6c0 <printint+0x30>
  if(neg)
 6de:	8b 45 c4             	mov    -0x3c(%ebp),%eax
 6e1:	85 c0                	test   %eax,%eax
 6e3:	74 07                	je     6ec <printint+0x5c>
    buf[i++] = '-';
 6e5:	c6 44 35 d8 2d       	movb   $0x2d,-0x28(%ebp,%esi,1)

  while(--i >= 0)
 6ea:	89 f7                	mov    %esi,%edi
 6ec:	8d 5d d8             	lea    -0x28(%ebp),%ebx
 6ef:	8b 75 c0             	mov    -0x40(%ebp),%esi
 6f2:	01 df                	add    %ebx,%edi
 6f4:	8d 74 26 00          	lea    0x0(%esi,%eiz,1),%esi
    putc(fd, buf[i]);
 6f8:	0f b6 07             	movzbl (%edi),%eax
  write(fd, &c, 1);
 6fb:	83 ec 04             	sub    $0x4,%esp
 6fe:	88 45 d7             	mov    %al,-0x29(%ebp)
 701:	8d 45 d7             	lea    -0x29(%ebp),%eax
 704:	6a 01                	push   $0x1
 706:	50                   	push   %eax
 707:	56                   	push   %esi
 708:	e8 e6 fe ff ff       	call   5f3 <write>
  while(--i >= 0)
 70d:	89 f8                	mov    %edi,%eax
 70f:	83 c4 10             	add    $0x10,%esp
 712:	83 ef 01             	sub    $0x1,%edi
 715:	39 c3                	cmp    %eax,%ebx
 717:	75 df                	jne    6f8 <printint+0x68>
}
 719:	8d 65 f4             	lea    -0xc(%ebp),%esp
 71c:	5b                   	pop    %ebx
 71d:	5e                   	pop    %esi
 71e:	5f                   	pop    %edi
 71f:	5d                   	pop    %ebp
 720:	c3                   	ret
 721:	8d b4 26 00 00 00 00 	lea    0x0(%esi,%eiz,1),%esi
  neg = 0;
 728:	31 c0                	xor    %eax,%eax
 72a:	eb 89                	jmp    6b5 <printint+0x25>
 72c:	8d 74 26 00          	lea    0x0(%esi,%eiz,1),%esi

00000730 <printf>:

// Print to the given fd. Only understands %d, %x, %p, %s.
void
printf(int fd, const char *fmt, ...)
{
 730:	55                   	push   %ebp
 731:	89 e5                	mov    %esp,%ebp
 733:	57                   	push   %edi
 734:	56                   	push   %esi
 735:	53                   	push   %ebx
 736:	83 ec 2c             	sub    $0x2c,%esp
  int c, i, state;
  uint *ap;

  state = 0;
  ap = (uint*)(void*)&fmt + 1;
  for(i = 0; fmt[i]; i++){
 739:	8b 75 0c             	mov    0xc(%ebp),%esi
{
 73c:	8b 7d 08             	mov    0x8(%ebp),%edi
  for(i = 0; fmt[i]; i++){
 73f:	0f b6 1e             	movzbl (%esi),%ebx
 742:	83 c6 01             	add    $0x1,%esi
 745:	84 db                	test   %bl,%bl
 747:	74 67                	je     7b0 <printf+0x80>
 749:	8d 4d 10             	lea    0x10(%ebp),%ecx
 74c:	31 d2                	xor    %edx,%edx
 74e:	89 4d d0             	mov    %ecx,-0x30(%ebp)
 751:	eb 34                	jmp    787 <printf+0x57>
 753:	2e 8d 74 26 00       	lea    %cs:0x0(%esi,%eiz,1),%esi
 758:	89 55 d4             	mov    %edx,-0x2c(%ebp)
    c = fmt[i] & 0xff;
    if(state == 0){
      if(c == '%'){
        state = '%';
 75b:	ba 25 00 00 00       	mov    $0x25,%edx
      if(c == '%'){
 760:	83 f8 25             	cmp    $0x25,%eax
 763:	74 18                	je     77d <printf+0x4d>
  write(fd, &c, 1);
 765:	83 ec 04             	sub    $0x4,%esp
 768:	8d 45 e7             	lea    -0x19(%ebp),%eax
 76b:	88 5d e7             	mov    %bl,-0x19(%ebp)
 76e:	6a 01                	push   $0x1
 770:	50                   	push   %eax
 771:	57                   	push   %edi
 772:	e8 7c fe ff ff       	call   5f3 <write>
 777:	8b 55 d4             	mov    -0x2c(%ebp),%edx
      } else {
        putc(fd, c);
 77a:	83 c4 10             	add    $0x10,%esp
  for(i = 0; fmt[i]; i++){
 77d:	0f b6 1e             	movzbl (%esi),%ebx
 780:	83 c6 01             	add    $0x1,%esi
 783:	84 db                	test   %bl,%bl
 785:	74 29                	je     7b0 <printf+0x80>
    c = fmt[i] & 0xff;
 787:	0f b6 c3             	movzbl %bl,%eax
    if(state == 0){
 78a:	85 d2                	test   %edx,%edx
 78c:	74 ca                	je     758 <printf+0x28>
      }
    } else if(state == '%'){
 78e:	83 fa 25             	cmp    $0x25,%edx
 791:	75 ea                	jne    77d <printf+0x4d>
      if(c == 'd'){
 793:	83 f8 25             	cmp    $0x25,%eax
 796:	0f 84 04 01 00 00    	je     8a0 <printf+0x170>
 79c:	83 e8 63             	sub    $0x63,%eax
 79f:	83 f8 15             	cmp    $0x15,%eax
 7a2:	77 1c                	ja     7c0 <printf+0x90>
 7a4:	ff 24 85 08 0b 00 00 	jmp    *0xb08(,%eax,4)
 7ab:	2e 8d 74 26 00       	lea    %cs:0x0(%esi,%eiz,1),%esi
        putc(fd, c);
      }
      state = 0;
    }
  }
}
 7b0:	8d 65 f4             	lea    -0xc(%ebp),%esp
 7b3:	5b                   	pop    %ebx
 7b4:	5e                   	pop    %esi
 7b5:	5f                   	pop    %edi
 7b6:	5d                   	pop    %ebp
 7b7:	c3                   	ret
 7b8:	2e 8d b4 26 00 00 00 	lea    %cs:0x0(%esi,%eiz,1),%esi
 7bf:	00 
  write(fd, &c, 1);
 7c0:	83 ec 04             	sub    $0x4,%esp
 7c3:	8d 55 e7             	lea    -0x19(%ebp),%edx
 7c6:	c6 45 e7 25          	movb   $0x25,-0x19(%ebp)
 7ca:	6a 01                	push   $0x1
 7cc:	52                   	push   %edx
 7cd:	89 55 d4             	mov    %edx,-0x2c(%ebp)
 7d0:	57                   	push   %edi
 7d1:	e8 1d fe ff ff       	call   5f3 <write>
 7d6:	83 c4 0c             	add    $0xc,%esp
 7d9:	88 5d e7             	mov    %bl,-0x19(%ebp)
 7dc:	6a 01                	push   $0x1
 7de:	8b 55 d4             	mov    -0x2c(%ebp),%edx
 7e1:	52                   	push   %edx
 7e2:	57                   	push   %edi
 7e3:	e8 0b fe ff ff       	call   5f3 <write>
        putc(fd, c);
 7e8:	83 c4 10             	add    $0x10,%esp
      state = 0;
 7eb:	31 d2                	xor    %edx,%edx
 7ed:	eb 8e                	jmp    77d <printf+0x4d>
 7ef:	90                   	nop
        printint(fd, *ap, 16, 0);
 7f0:	8b 5d d0             	mov    -0x30(%ebp),%ebx
 7f3:	83 ec 0c             	sub    $0xc,%esp
 7f6:	b9 10 00 00 00       	mov    $0x10,%ecx
 7fb:	8b 13                	mov    (%ebx),%edx
 7fd:	6a 00                	push   $0x0
 7ff:	89 f8                	mov    %edi,%eax
        ap++;
 801:	83 c3 04             	add    $0x4,%ebx
        printint(fd, *ap, 16, 0);
 804:	e8 87 fe ff ff       	call   690 <printint>
        ap++;
 809:	89 5d d0             	mov    %ebx,-0x30(%ebp)
 80c:	83 c4 10             	add    $0x10,%esp
      state = 0;
 80f:	31 d2                	xor    %edx,%edx
 811:	e9 67 ff ff ff       	jmp    77d <printf+0x4d>
        s = (char*)*ap;
 816:	8b 45 d0             	mov    -0x30(%ebp),%eax
 819:	8b 18                	mov    (%eax),%ebx
        ap++;
 81b:	83 c0 04             	add    $0x4,%eax
 81e:	89 45 d0             	mov    %eax,-0x30(%ebp)
        if(s == 0)
 821:	85 db                	test   %ebx,%ebx
 823:	0f 84 87 00 00 00    	je     8b0 <printf+0x180>
        while(*s != 0){
 829:	0f b6 03             	movzbl (%ebx),%eax
      state = 0;
 82c:	31 d2                	xor    %edx,%edx
        while(*s != 0){
 82e:	84 c0                	test   %al,%al
 830:	0f 84 47 ff ff ff    	je     77d <printf+0x4d>
 836:	8d 55 e7             	lea    -0x19(%ebp),%edx
 839:	89 75 d4             	mov    %esi,-0x2c(%ebp)
 83c:	89 de                	mov    %ebx,%esi
 83e:	89 d3                	mov    %edx,%ebx
  write(fd, &c, 1);
 840:	83 ec 04             	sub    $0x4,%esp
 843:	88 45 e7             	mov    %al,-0x19(%ebp)
          s++;
 846:	83 c6 01             	add    $0x1,%esi
  write(fd, &c, 1);
 849:	6a 01                	push   $0x1
 84b:	53                   	push   %ebx
 84c:	57                   	push   %edi
 84d:	e8 a1 fd ff ff       	call   5f3 <write>
        while(*s != 0){
 852:	0f b6 06             	movzbl (%esi),%eax
 855:	83 c4 10             	add    $0x10,%esp
 858:	84 c0                	test   %al,%al
 85a:	75 e4                	jne    840 <printf+0x110>
      state = 0;
 85c:	8b 75 d4             	mov    -0x2c(%ebp),%esi
 85f:	31 d2                	xor    %edx,%edx
 861:	e9 17 ff ff ff       	jmp    77d <printf+0x4d>
        printint(fd, *ap, 10, 1);
 866:	8b 5d d0             	mov    -0x30(%ebp),%ebx
 869:	83 ec 0c             	sub    $0xc,%esp
 86c:	b9 0a 00 00 00       	mov    $0xa,%ecx
 871:	8b 13                	mov    (%ebx),%edx
 873:	6a 01                	push   $0x1
 875:	eb 88                	jmp    7ff <printf+0xcf>
        putc(fd, *ap);
 877:	8b 5d d0             	mov    -0x30(%ebp),%ebx
  write(fd, &c, 1);
 87a:	83 ec 04             	sub    $0x4,%esp
 87d:	8d 55 e7             	lea    -0x19(%ebp),%edx
        putc(fd, *ap);
 880:	8b 03                	mov    (%ebx),%eax
        ap++;
 882:	83 c3 04             	add    $0x4,%ebx
        putc(fd, *ap);
 885:	88 45 e7             	mov    %al,-0x19(%ebp)
  write(fd, &c, 1);
 888:	6a 01                	push   $0x1
 88a:	52                   	push   %edx
 88b:	57                   	push   %edi
 88c:	e8 62 fd ff ff       	call   5f3 <write>
        ap++;
 891:	89 5d d0             	mov    %ebx,-0x30(%ebp)
 894:	83 c4 10             	add    $0x10,%esp
      state = 0;
 897:	31 d2                	xor    %edx,%edx
 899:	e9 df fe ff ff       	jmp    77d <printf+0x4d>
 89e:	66 90                	xchg   %ax,%ax
  write(fd, &c, 1);
 8a0:	83 ec 04             	sub    $0x4,%esp
 8a3:	88 5d e7             	mov    %bl,-0x19(%ebp)
 8a6:	8d 55 e7             	lea    -0x19(%ebp),%edx
 8a9:	6a 01                	push   $0x1
 8ab:	e9 31 ff ff ff       	jmp    7e1 <printf+0xb1>
 8b0:	b8 28 00 00 00       	mov    $0x28,%eax
          s = "(null)";
 8b5:	bb 9b 0a 00 00       	mov    $0xa9b,%ebx
 8ba:	e9 77 ff ff ff       	jmp    836 <printf+0x106>
 8bf:	90                   	nop

000008c0 <free>:
static Header base;
static Header *freep;

void
free(void *ap)
{
 8c0:	55                   	push   %ebp
  Header *bp, *p;

  bp = (Header*)ap - 1;
  for(p = freep; !(bp > p && bp < p->s.ptr); p = p->s.ptr)
 8c1:	a1 84 0e 00 00       	mov    0xe84,%eax
{
 8c6:	89 e5                	mov    %esp,%ebp
 8c8:	57                   	push   %edi
 8c9:	56                   	push   %esi
 8ca:	53                   	push   %ebx
 8cb:	8b 5d 08             	mov    0x8(%ebp),%ebx
  bp = (Header*)ap - 1;
 8ce:	8d 4b f8             	lea    -0x8(%ebx),%ecx
  for(p = freep; !(bp > p && bp < p->s.ptr); p = p->s.ptr)
 8d1:	8d b4 26 00 00 00 00 	lea    0x0(%esi,%eiz,1),%esi
    if(p >= p->s.ptr && (bp > p || bp < p->s.ptr))
 8d8:	8b 10                	mov    (%eax),%edx
  for(p = freep; !(bp > p && bp < p->s.ptr); p = p->s.ptr)
 8da:	39 c8                	cmp    %ecx,%eax
 8dc:	73 32                	jae    910 <free+0x50>
 8de:	39 d1                	cmp    %edx,%ecx
 8e0:	72 04                	jb     8e6 <free+0x26>
    if(p >= p->s.ptr && (bp > p || bp < p->s.ptr))
 8e2:	39 d0                	cmp    %edx,%eax
 8e4:	72 32                	jb     918 <free+0x58>
      break;
  if(bp + bp->s.size == p->s.ptr){
 8e6:	8b 73 fc             	mov    -0x4(%ebx),%esi
 8e9:	8d 3c f1             	lea    (%ecx,%esi,8),%edi
 8ec:	39 fa                	cmp    %edi,%edx
 8ee:	74 30                	je     920 <free+0x60>
    bp->s.size += p->s.ptr->s.size;
    bp->s.ptr = p->s.ptr->s.ptr;
 8f0:	89 53 f8             	mov    %edx,-0x8(%ebx)
  } else
    bp->s.ptr = p->s.ptr;
  if(p + p->s.size == bp){
 8f3:	8b 50 04             	mov    0x4(%eax),%edx
 8f6:	8d 34 d0             	lea    (%eax,%edx,8),%esi
 8f9:	39 f1                	cmp    %esi,%ecx
 8fb:	74 3a                	je     937 <free+0x77>
    p->s.size += bp->s.size;
    p->s.ptr = bp->s.ptr;
 8fd:	89 08                	mov    %ecx,(%eax)
  } else
    p->s.ptr = bp;
  freep = p;
}
 8ff:	5b                   	pop    %ebx
  freep = p;
 900:	a3 84 0e 00 00       	mov    %eax,0xe84
}
 905:	5e                   	pop    %esi
 906:	5f                   	pop    %edi
 907:	5d                   	pop    %ebp
 908:	c3                   	ret
 909:	8d b4 26 00 00 00 00 	lea    0x0(%esi,%eiz,1),%esi
    if(p >= p->s.ptr && (bp > p || bp < p->s.ptr))
 910:	39 d0                	cmp    %edx,%eax
 912:	72 04                	jb     918 <free+0x58>
 914:	39 d1                	cmp    %edx,%ecx
 916:	72 ce                	jb     8e6 <free+0x26>
{
 918:	89 d0                	mov    %edx,%eax
 91a:	eb bc                	jmp    8d8 <free+0x18>
 91c:	8d 74 26 00          	lea    0x0(%esi,%eiz,1),%esi
    bp->s.size += p->s.ptr->s.size;
 920:	03 72 04             	add    0x4(%edx),%esi
 923:	89 73 fc             	mov    %esi,-0x4(%ebx)
    bp->s.ptr = p->s.ptr->s.ptr;
 926:	8b 10                	mov    (%eax),%edx
 928:	8b 12                	mov    (%edx),%edx
 92a:	89 53 f8             	mov    %edx,-0x8(%ebx)
  if(p + p->s.size == bp){
 92d:	8b 50 04             	mov    0x4(%eax),%edx
 930:	8d 34 d0             	lea    (%eax,%edx,8),%esi
 933:	39 f1                	cmp    %esi,%ecx
 935:	75 c6                	jne    8fd <free+0x3d>
    p->s.size += bp->s.size;
 937:	03 53 fc             	add    -0x4(%ebx),%edx
  freep = p;
 93a:	a3 84 0e 00 00       	mov    %eax,0xe84
    p->s.size += bp->s.size;
 93f:	89 50 04             	mov    %edx,0x4(%eax)
    p->s.ptr = bp->s.ptr;
 942:	8b 4b f8             	mov    -0x8(%ebx),%ecx
 945:	89 08                	mov    %ecx,(%eax)
}
 947:	5b                   	pop    %ebx
 948:	5e                   	pop    %esi
 949:	5f                   	pop    %edi
 94a:	5d                   	pop    %ebp
 94b:	c3                   	ret
 94c:	8d 74 26 00          	lea    0x0(%esi,%eiz,1),%esi

00000950 <malloc>:
  return freep;
}

void*
malloc(uint nbytes)
{
 950:	55                   	push   %ebp
 951:	89 e5                	mov    %esp,%ebp
 953:	57                   	push   %edi
 954:	56                   	push   %esi
 955:	53                   	push   %ebx
 956:	83 ec 0c             	sub    $0xc,%esp
  Header *p, *prevp;
  uint nunits;

  nunits = (nbytes + sizeof(Header) - 1)/sizeof(Header) + 1;
 959:	8b 45 08             	mov    0x8(%ebp),%eax
  if((prevp = freep) == 0){
 95c:	8b 15 84 0e 00 00    	mov    0xe84,%edx
  nunits = (nbytes + sizeof(Header) - 1)/sizeof(Header) + 1;
 962:	8d 78 07             	lea    0x7(%eax),%edi
 965:	c1 ef 03             	shr    $0x3,%edi
 968:	83 c7 01             	add    $0x1,%edi
  if((prevp = freep) == 0){
 96b:	85 d2                	test   %edx,%edx
 96d:	0f 84 8d 00 00 00    	je     a00 <malloc+0xb0>
    base.s.ptr = freep = prevp = &base;
    base.s.size = 0;
  }
  for(p = prevp->s.ptr; ; prevp = p, p = p->s.ptr){
 973:	8b 02                	mov    (%edx),%eax
    if(p->s.size >= nunits){
 975:	8b 48 04             	mov    0x4(%eax),%ecx
 978:	39 f9                	cmp    %edi,%ecx
 97a:	73 64                	jae    9e0 <malloc+0x90>
  if(nu < 4096)
 97c:	bb 00 10 00 00       	mov    $0x1000,%ebx
 981:	39 df                	cmp    %ebx,%edi
 983:	0f 43 df             	cmovae %edi,%ebx
  p = sbrk(nu * sizeof(Header));
 986:	8d 34 dd 00 00 00 00 	lea    0x0(,%ebx,8),%esi
 98d:	eb 0a                	jmp    999 <malloc+0x49>
 98f:	90                   	nop
  for(p = prevp->s.ptr; ; prevp = p, p = p->s.ptr){
 990:	8b 02                	mov    (%edx),%eax
    if(p->s.size >= nunits){
 992:	8b 48 04             	mov    0x4(%eax),%ecx
 995:	39 f9                	cmp    %edi,%ecx
 997:	73 47                	jae    9e0 <malloc+0x90>
        p->s.size = nunits;
      }
      freep = prevp;
      return (void*)(p + 1);
    }
    if(p == freep)
 999:	89 c2                	mov    %eax,%edx
 99b:	3b 05 84 0e 00 00    	cmp    0xe84,%eax
 9a1:	75 ed                	jne    990 <malloc+0x40>
  p = sbrk(nu * sizeof(Header));
 9a3:	83 ec 0c             	sub    $0xc,%esp
 9a6:	56                   	push   %esi
 9a7:	e8 af fc ff ff       	call   65b <sbrk>
  if(p == (char*)-1)
 9ac:	83 c4 10             	add    $0x10,%esp
 9af:	83 f8 ff             	cmp    $0xffffffff,%eax
 9b2:	74 1c                	je     9d0 <malloc+0x80>
  hp->s.size = nu;
 9b4:	89 58 04             	mov    %ebx,0x4(%eax)
  free((void*)(hp + 1));
 9b7:	83 ec 0c             	sub    $0xc,%esp
 9ba:	83 c0 08             	add    $0x8,%eax
 9bd:	50                   	push   %eax
 9be:	e8 fd fe ff ff       	call   8c0 <free>
  return freep;
 9c3:	8b 15 84 0e 00 00    	mov    0xe84,%edx
      if((p = morecore(nunits)) == 0)
 9c9:	83 c4 10             	add    $0x10,%esp
 9cc:	85 d2                	test   %edx,%edx
 9ce:	75 c0                	jne    990 <malloc+0x40>
        return 0;
  }
}
 9d0:	8d 65 f4             	lea    -0xc(%ebp),%esp
        return 0;
 9d3:	31 c0                	xor    %eax,%eax
}
 9d5:	5b                   	pop    %ebx
 9d6:	5e                   	pop    %esi
 9d7:	5f                   	pop    %edi
 9d8:	5d                   	pop    %ebp
 9d9:	c3                   	ret
 9da:	8d b6 00 00 00 00    	lea    0x0(%esi),%esi
      if(p->s.size == nunits)
 9e0:	39 cf                	cmp    %ecx,%edi
 9e2:	74 4c                	je     a30 <malloc+0xe0>
        p->s.size -= nunits;
 9e4:	29 f9                	sub    %edi,%ecx
 9e6:	89 48 04             	mov    %ecx,0x4(%eax)
        p += p->s.size;
 9e9:	8d 04 c8             	lea    (%eax,%ecx,8),%eax
        p->s.size = nunits;
 9ec:	89 78 04             	mov    %edi,0x4(%eax)
      freep = prevp;
 9ef:	89 15 84 0e 00 00    	mov    %edx,0xe84
}
 9f5:	8d 65 f4             	lea    -0xc(%ebp),%esp
      return (void*)(p + 1);
 9f8:	83 c0 08             	add    $0x8,%eax
}
 9fb:	5b                   	pop    %ebx
 9fc:	5e                   	pop    %esi
 9fd:	5f                   	pop    %edi
 9fe:	5d                   	pop    %ebp
 9ff:	c3                   	ret
    base.s.ptr = freep = prevp = &base;
 a00:	c7 05 84 0e 00 00 88 	movl   $0xe88,0xe84
 a07:	0e 00 00 
    base.s.size = 0;
 a0a:	b8 88 0e 00 00       	mov    $0xe88,%eax
    base.s.ptr = freep = prevp = &base;
 a0f:	c7 05 88 0e 00 00 88 	movl   $0xe88,0xe88
 a16:	0e 00 00 
    base.s.size = 0;
 a19:	c7 05 8c 0e 00 00 00 	movl   $0x0,0xe8c
 a20:	00 00 00 
    if(p->s.size >= nunits){
 a23:	e9 54 ff ff ff       	jmp    97c <malloc+0x2c>
 a28:	2e 8d b4 26 00 00 00 	lea    %cs:0x0(%esi,%eiz,1),%esi
 a2f:	00 
        prevp->s.ptr = p->s.ptr;
 a30:	8b 08                	mov    (%eax),%ecx
 a32:	89 0a                	mov    %ecx,(%edx)
 a34:	eb b9                	jmp    9ef <malloc+0x9f>
