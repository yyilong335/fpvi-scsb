
test:     file format elf64-x86-64


Disassembly of section .init:

0000000000001000 <_init>:
    1000:	f3 0f 1e fa          	endbr64 
    1004:	48 83 ec 08          	sub    $0x8,%rsp
    1008:	48 8b 05 d9 2f 00 00 	mov    0x2fd9(%rip),%rax        # 3fe8 <__gmon_start__@Base>
    100f:	48 85 c0             	test   %rax,%rax
    1012:	74 02                	je     1016 <_init+0x16>
    1014:	ff d0                	call   *%rax
    1016:	48 83 c4 08          	add    $0x8,%rsp
    101a:	c3                   	ret    

Disassembly of section .plt:

0000000000001020 <.plt>:
    1020:	ff 35 6a 2f 00 00    	push   0x2f6a(%rip)        # 3f90 <_GLOBAL_OFFSET_TABLE_+0x8>
    1026:	f2 ff 25 6b 2f 00 00 	bnd jmp *0x2f6b(%rip)        # 3f98 <_GLOBAL_OFFSET_TABLE_+0x10>
    102d:	0f 1f 00             	nopl   (%rax)
    1030:	f3 0f 1e fa          	endbr64 
    1034:	68 00 00 00 00       	push   $0x0
    1039:	f2 e9 e1 ff ff ff    	bnd jmp 1020 <_init+0x20>
    103f:	90                   	nop
    1040:	f3 0f 1e fa          	endbr64 
    1044:	68 01 00 00 00       	push   $0x1
    1049:	f2 e9 d1 ff ff ff    	bnd jmp 1020 <_init+0x20>
    104f:	90                   	nop
    1050:	f3 0f 1e fa          	endbr64 
    1054:	68 02 00 00 00       	push   $0x2
    1059:	f2 e9 c1 ff ff ff    	bnd jmp 1020 <_init+0x20>
    105f:	90                   	nop
    1060:	f3 0f 1e fa          	endbr64 
    1064:	68 03 00 00 00       	push   $0x3
    1069:	f2 e9 b1 ff ff ff    	bnd jmp 1020 <_init+0x20>
    106f:	90                   	nop
    1070:	f3 0f 1e fa          	endbr64 
    1074:	68 04 00 00 00       	push   $0x4
    1079:	f2 e9 a1 ff ff ff    	bnd jmp 1020 <_init+0x20>
    107f:	90                   	nop
    1080:	f3 0f 1e fa          	endbr64 
    1084:	68 05 00 00 00       	push   $0x5
    1089:	f2 e9 91 ff ff ff    	bnd jmp 1020 <_init+0x20>
    108f:	90                   	nop
    1090:	f3 0f 1e fa          	endbr64 
    1094:	68 06 00 00 00       	push   $0x6
    1099:	f2 e9 81 ff ff ff    	bnd jmp 1020 <_init+0x20>
    109f:	90                   	nop

Disassembly of section .plt.got:

00000000000010a0 <__cxa_finalize@plt>:
    10a0:	f3 0f 1e fa          	endbr64 
    10a4:	f2 ff 25 4d 2f 00 00 	bnd jmp *0x2f4d(%rip)        # 3ff8 <__cxa_finalize@GLIBC_2.2.5>
    10ab:	0f 1f 44 00 00       	nopl   0x0(%rax,%rax,1)

Disassembly of section .plt.sec:

00000000000010b0 <__stack_chk_fail@plt>:
    10b0:	f3 0f 1e fa          	endbr64 
    10b4:	f2 ff 25 e5 2e 00 00 	bnd jmp *0x2ee5(%rip)        # 3fa0 <__stack_chk_fail@GLIBC_2.4>
    10bb:	0f 1f 44 00 00       	nopl   0x0(%rax,%rax,1)

00000000000010c0 <mmap@plt>:
    10c0:	f3 0f 1e fa          	endbr64 
    10c4:	f2 ff 25 dd 2e 00 00 	bnd jmp *0x2edd(%rip)        # 3fa8 <mmap@GLIBC_2.2.5>
    10cb:	0f 1f 44 00 00       	nopl   0x0(%rax,%rax,1)

00000000000010d0 <printf@plt>:
    10d0:	f3 0f 1e fa          	endbr64 
    10d4:	f2 ff 25 d5 2e 00 00 	bnd jmp *0x2ed5(%rip)        # 3fb0 <printf@GLIBC_2.2.5>
    10db:	0f 1f 44 00 00       	nopl   0x0(%rax,%rax,1)

00000000000010e0 <__assert_fail@plt>:
    10e0:	f3 0f 1e fa          	endbr64 
    10e4:	f2 ff 25 cd 2e 00 00 	bnd jmp *0x2ecd(%rip)        # 3fb8 <__assert_fail@GLIBC_2.2.5>
    10eb:	0f 1f 44 00 00       	nopl   0x0(%rax,%rax,1)

00000000000010f0 <memset@plt>:
    10f0:	f3 0f 1e fa          	endbr64 
    10f4:	f2 ff 25 c5 2e 00 00 	bnd jmp *0x2ec5(%rip)        # 3fc0 <memset@GLIBC_2.2.5>
    10fb:	0f 1f 44 00 00       	nopl   0x0(%rax,%rax,1)

0000000000001100 <sqrt@plt>:
    1100:	f3 0f 1e fa          	endbr64 
    1104:	f2 ff 25 bd 2e 00 00 	bnd jmp *0x2ebd(%rip)        # 3fc8 <sqrt@GLIBC_2.2.5>
    110b:	0f 1f 44 00 00       	nopl   0x0(%rax,%rax,1)

0000000000001110 <__ctype_b_loc@plt>:
    1110:	f3 0f 1e fa          	endbr64 
    1114:	f2 ff 25 b5 2e 00 00 	bnd jmp *0x2eb5(%rip)        # 3fd0 <__ctype_b_loc@GLIBC_2.3>
    111b:	0f 1f 44 00 00       	nopl   0x0(%rax,%rax,1)

Disassembly of section .text:

0000000000001120 <_start>:
    1120:	f3 0f 1e fa          	endbr64 
    1124:	31 ed                	xor    %ebp,%ebp
    1126:	49 89 d1             	mov    %rdx,%r9
    1129:	5e                   	pop    %rsi
    112a:	48 89 e2             	mov    %rsp,%rdx
    112d:	48 83 e4 f0          	and    $0xfffffffffffffff0,%rsp
    1131:	50                   	push   %rax
    1132:	54                   	push   %rsp
    1133:	45 31 c0             	xor    %r8d,%r8d
    1136:	31 c9                	xor    %ecx,%ecx
    1138:	48 8d 3d 72 02 00 00 	lea    0x272(%rip),%rdi        # 13b1 <main>
    113f:	ff 15 93 2e 00 00    	call   *0x2e93(%rip)        # 3fd8 <__libc_start_main@GLIBC_2.34>
    1145:	f4                   	hlt    
    1146:	66 2e 0f 1f 84 00 00 	cs nopw 0x0(%rax,%rax,1)
    114d:	00 00 00 

0000000000001150 <deregister_tm_clones>:
    1150:	48 8d 3d c9 2e 00 00 	lea    0x2ec9(%rip),%rdi        # 4020 <__TMC_END__>
    1157:	48 8d 05 c2 2e 00 00 	lea    0x2ec2(%rip),%rax        # 4020 <__TMC_END__>
    115e:	48 39 f8             	cmp    %rdi,%rax
    1161:	74 15                	je     1178 <deregister_tm_clones+0x28>
    1163:	48 8b 05 76 2e 00 00 	mov    0x2e76(%rip),%rax        # 3fe0 <_ITM_deregisterTMCloneTable@Base>
    116a:	48 85 c0             	test   %rax,%rax
    116d:	74 09                	je     1178 <deregister_tm_clones+0x28>
    116f:	ff e0                	jmp    *%rax
    1171:	0f 1f 80 00 00 00 00 	nopl   0x0(%rax)
    1178:	c3                   	ret    
    1179:	0f 1f 80 00 00 00 00 	nopl   0x0(%rax)

0000000000001180 <register_tm_clones>:
    1180:	48 8d 3d 99 2e 00 00 	lea    0x2e99(%rip),%rdi        # 4020 <__TMC_END__>
    1187:	48 8d 35 92 2e 00 00 	lea    0x2e92(%rip),%rsi        # 4020 <__TMC_END__>
    118e:	48 29 fe             	sub    %rdi,%rsi
    1191:	48 89 f0             	mov    %rsi,%rax
    1194:	48 c1 ee 3f          	shr    $0x3f,%rsi
    1198:	48 c1 f8 03          	sar    $0x3,%rax
    119c:	48 01 c6             	add    %rax,%rsi
    119f:	48 d1 fe             	sar    %rsi
    11a2:	74 14                	je     11b8 <register_tm_clones+0x38>
    11a4:	48 8b 05 45 2e 00 00 	mov    0x2e45(%rip),%rax        # 3ff0 <_ITM_registerTMCloneTable@Base>
    11ab:	48 85 c0             	test   %rax,%rax
    11ae:	74 08                	je     11b8 <register_tm_clones+0x38>
    11b0:	ff e0                	jmp    *%rax
    11b2:	66 0f 1f 44 00 00    	nopw   0x0(%rax,%rax,1)
    11b8:	c3                   	ret    
    11b9:	0f 1f 80 00 00 00 00 	nopl   0x0(%rax)

00000000000011c0 <__do_global_dtors_aux>:
    11c0:	f3 0f 1e fa          	endbr64 
    11c4:	80 3d 55 2e 00 00 00 	cmpb   $0x0,0x2e55(%rip)        # 4020 <__TMC_END__>
    11cb:	75 2b                	jne    11f8 <__do_global_dtors_aux+0x38>
    11cd:	55                   	push   %rbp
    11ce:	48 83 3d 22 2e 00 00 	cmpq   $0x0,0x2e22(%rip)        # 3ff8 <__cxa_finalize@GLIBC_2.2.5>
    11d5:	00 
    11d6:	48 89 e5             	mov    %rsp,%rbp
    11d9:	74 0c                	je     11e7 <__do_global_dtors_aux+0x27>
    11db:	48 8b 3d 26 2e 00 00 	mov    0x2e26(%rip),%rdi        # 4008 <__dso_handle>
    11e2:	e8 b9 fe ff ff       	call   10a0 <__cxa_finalize@plt>
    11e7:	e8 64 ff ff ff       	call   1150 <deregister_tm_clones>
    11ec:	c6 05 2d 2e 00 00 01 	movb   $0x1,0x2e2d(%rip)        # 4020 <__TMC_END__>
    11f3:	5d                   	pop    %rbp
    11f4:	c3                   	ret    
    11f5:	0f 1f 00             	nopl   (%rax)
    11f8:	c3                   	ret    
    11f9:	0f 1f 80 00 00 00 00 	nopl   0x0(%rax)

0000000000001200 <frame_dummy>:
    1200:	f3 0f 1e fa          	endbr64 
    1204:	e9 77 ff ff ff       	jmp    1180 <register_tm_clones>

0000000000001209 <print_results>:
    1209:	f3 0f 1e fa          	endbr64 
    120d:	55                   	push   %rbp
    120e:	48 89 e5             	mov    %rsp,%rbp
    1211:	48 83 ec 20          	sub    $0x20,%rsp
    1215:	48 89 7d e8          	mov    %rdi,-0x18(%rbp)
    1219:	48 89 75 e0          	mov    %rsi,-0x20(%rbp)
    121d:	48 c7 45 f8 00 00 00 	movq   $0x0,-0x8(%rbp)
    1224:	00 
    1225:	e9 88 00 00 00       	jmp    12b2 <print_results+0xa9>
    122a:	48 8b 45 f8          	mov    -0x8(%rbp),%rax
    122e:	48 8d 14 c5 00 00 00 	lea    0x0(,%rax,8),%rdx
    1235:	00 
    1236:	48 8b 45 e8          	mov    -0x18(%rbp),%rax
    123a:	48 01 d0             	add    %rdx,%rax
    123d:	48 8b 00             	mov    (%rax),%rax
    1240:	48 39 45 e0          	cmp    %rax,-0x20(%rbp)
    1244:	77 67                	ja     12ad <print_results+0xa4>
    1246:	e8 c5 fe ff ff       	call   1110 <__ctype_b_loc@plt>
    124b:	48 8b 10             	mov    (%rax),%rdx
    124e:	48 8b 45 f8          	mov    -0x8(%rbp),%rax
    1252:	48 98                	cltq   
    1254:	48 01 c0             	add    %rax,%rax
    1257:	48 01 d0             	add    %rdx,%rax
    125a:	0f b7 00             	movzwl (%rax),%eax
    125d:	0f b7 c0             	movzwl %ax,%eax
    1260:	25 00 40 00 00       	and    $0x4000,%eax
    1265:	85 c0                	test   %eax,%eax
    1267:	74 08                	je     1271 <print_results+0x68>
    1269:	48 8b 45 f8          	mov    -0x8(%rbp),%rax
    126d:	89 c2                	mov    %eax,%edx
    126f:	eb 05                	jmp    1276 <print_results+0x6d>
    1271:	ba 3f 00 00 00       	mov    $0x3f,%edx
    1276:	48 8b 45 f8          	mov    -0x8(%rbp),%rax
    127a:	89 c6                	mov    %eax,%esi
    127c:	48 8b 45 f8          	mov    -0x8(%rbp),%rax
    1280:	48 8d 0c c5 00 00 00 	lea    0x0(,%rax,8),%rcx
    1287:	00 
    1288:	48 8b 45 e8          	mov    -0x18(%rbp),%rax
    128c:	48 01 c8             	add    %rcx,%rax
    128f:	48 8b 00             	mov    (%rax),%rax
    1292:	89 d1                	mov    %edx,%ecx
    1294:	89 f2                	mov    %esi,%edx
    1296:	48 89 c6             	mov    %rax,%rsi
    1299:	48 8d 05 64 0d 00 00 	lea    0xd64(%rip),%rax        # 2004 <_IO_stdin_used+0x4>
    12a0:	48 89 c7             	mov    %rax,%rdi
    12a3:	b8 00 00 00 00       	mov    $0x0,%eax
    12a8:	e8 23 fe ff ff       	call   10d0 <printf@plt>
    12ad:	48 83 45 f8 01       	addq   $0x1,-0x8(%rbp)
    12b2:	48 81 7d f8 ff 00 00 	cmpq   $0xff,-0x8(%rbp)
    12b9:	00 
    12ba:	0f 86 6a ff ff ff    	jbe    122a <print_results+0x21>
    12c0:	90                   	nop
    12c1:	90                   	nop
    12c2:	c9                   	leave  
    12c3:	c3                   	ret    

00000000000012c4 <func2>:
    12c4:	f3 0f 1e fa          	endbr64 
    12c8:	55                   	push   %rbp
    12c9:	48 89 e5             	mov    %rsp,%rbp
    12cc:	48 89 7d e8          	mov    %rdi,-0x18(%rbp)
    12d0:	89 f0                	mov    %esi,%eax
    12d2:	88 45 e4             	mov    %al,-0x1c(%rbp)
    12d5:	48 0f be 45 e4       	movsbq -0x1c(%rbp),%rax
    12da:	48 8b 55 e8          	mov    -0x18(%rbp),%rdx
    12de:	48 89 55 f0          	mov    %rdx,-0x10(%rbp)
    12e2:	48 89 45 f8          	mov    %rax,-0x8(%rbp)
    12e6:	48 8b 45 f8          	mov    -0x8(%rbp),%rax
    12ea:	48 c1 e0 0a          	shl    $0xa,%rax
    12ee:	48 89 c2             	mov    %rax,%rdx
    12f1:	48 8b 45 f0          	mov    -0x10(%rbp),%rax
    12f5:	48 01 d0             	add    %rdx,%rax
    12f8:	0f b6 00             	movzbl (%rax),%eax
    12fb:	90                   	nop
    12fc:	90                   	nop
    12fd:	5d                   	pop    %rbp
    12fe:	c3                   	ret    

00000000000012ff <func4>:
    12ff:	f3 0f 1e fa          	endbr64 
    1303:	55                   	push   %rbp
    1304:	48 89 e5             	mov    %rsp,%rbp
    1307:	48 89 7d f8          	mov    %rdi,-0x8(%rbp)
    130b:	89 f0                	mov    %esi,%eax
    130d:	88 45 f4             	mov    %al,-0xc(%rbp)
    1310:	90                   	nop
    1311:	5d                   	pop    %rbp
    1312:	c3                   	ret    

0000000000001313 <func1>:
    1313:	f3 0f 1e fa          	endbr64 
    1317:	55                   	push   %rbp
    1318:	48 89 e5             	mov    %rsp,%rbp
    131b:	48 8d 05 a2 ff ff ff 	lea    -0x5e(%rip),%rax        # 12c4 <func2>
    1322:	48 89 05 07 2d 00 00 	mov    %rax,0x2d07(%rip)        # 4030 <g_ptr>
    1329:	90                   	nop
    132a:	5d                   	pop    %rbp
    132b:	c3                   	ret    

000000000000132c <func3>:
    132c:	f3 0f 1e fa          	endbr64 
    1330:	55                   	push   %rbp
    1331:	48 89 e5             	mov    %rsp,%rbp
    1334:	48 83 ec 10          	sub    $0x10,%rsp
    1338:	89 7d fc             	mov    %edi,-0x4(%rbp)
    133b:	8b 55 fc             	mov    -0x4(%rbp),%edx
    133e:	89 d0                	mov    %edx,%eax
    1340:	c1 e0 08             	shl    $0x8,%eax
    1343:	29 d0                	sub    %edx,%eax
    1345:	66 0f ef c9          	pxor   %xmm1,%xmm1
    1349:	f2 0f 2a c8          	cvtsi2sd %eax,%xmm1
    134d:	66 48 0f 7e c8       	movq   %xmm1,%rax
    1352:	66 48 0f 6e c0       	movq   %rax,%xmm0
    1357:	e8 a4 fd ff ff       	call   1100 <sqrt@plt>
    135c:	f2 0f 2c d0          	cvttsd2si %xmm0,%edx
    1360:	48 63 c2             	movslq %edx,%rax
    1363:	48 69 c0 d3 4d 62 10 	imul   $0x10624dd3,%rax,%rax
    136a:	48 c1 e8 20          	shr    $0x20,%rax
    136e:	c1 f8 07             	sar    $0x7,%eax
    1371:	89 d1                	mov    %edx,%ecx
    1373:	c1 f9 1f             	sar    $0x1f,%ecx
    1376:	29 c8                	sub    %ecx,%eax
    1378:	69 c8 d0 07 00 00    	imul   $0x7d0,%eax,%ecx
    137e:	89 d0                	mov    %edx,%eax
    1380:	29 c8                	sub    %ecx,%eax
    1382:	85 c0                	test   %eax,%eax
    1384:	75 14                	jne    139a <func3+0x6e>
    1386:	8b 45 fc             	mov    -0x4(%rbp),%eax
    1389:	83 c8 08             	or     $0x8,%eax
    138c:	48 98                	cltq   
    138e:	48 8d 15 6a ff ff ff 	lea    -0x96(%rip),%rdx        # 12ff <func4>
    1395:	48 01 d0             	add    %rdx,%rax
    1398:	eb 07                	jmp    13a1 <func3+0x75>
    139a:	48 8d 05 5e ff ff ff 	lea    -0xa2(%rip),%rax        # 12ff <func4>
    13a1:	48 89 05 88 2c 00 00 	mov    %rax,0x2c88(%rip)        # 4030 <g_ptr>
    13a8:	48 8b 05 81 2c 00 00 	mov    0x2c81(%rip),%rax        # 4030 <g_ptr>
    13af:	c9                   	leave  
    13b0:	c3                   	ret    

00000000000013b1 <main>:
    13b1:	f3 0f 1e fa          	endbr64 
    13b5:	55                   	push   %rbp
    13b6:	48 89 e5             	mov    %rsp,%rbp
    13b9:	48 81 e4 00 f0 ff ff 	and    $0xfffffffffffff000,%rsp
    13c0:	48 81 ec 00 10 00 00 	sub    $0x1000,%rsp
    13c7:	48 83 0c 24 00       	orq    $0x0,(%rsp)
    13cc:	48 81 ec 00 10 00 00 	sub    $0x1000,%rsp
    13d3:	48 83 0c 24 00       	orq    $0x0,(%rsp)
    13d8:	64 48 8b 04 25 28 00 	mov    %fs:0x28,%rax
    13df:	00 00 
    13e1:	48 89 84 24 f8 1f 00 	mov    %rax,0x1ff8(%rsp)
    13e8:	00 
    13e9:	31 c0                	xor    %eax,%eax
    13eb:	48 8d 94 24 00 10 00 	lea    0x1000(%rsp),%rdx
    13f2:	00 
    13f3:	b8 00 00 00 00       	mov    $0x0,%eax
    13f8:	b9 00 01 00 00       	mov    $0x100,%ecx
    13fd:	48 89 d7             	mov    %rdx,%rdi
    1400:	f3 48 ab             	rep stos %rax,%es:(%rdi)
    1403:	41 b9 00 00 00 00    	mov    $0x0,%r9d
    1409:	41 b8 ff ff ff ff    	mov    $0xffffffff,%r8d
    140f:	b9 22 80 04 00       	mov    $0x48022,%ecx
    1414:	ba 03 00 00 00       	mov    $0x3,%edx
    1419:	be 00 00 04 00       	mov    $0x40000,%esi
    141e:	bf 00 00 00 00       	mov    $0x0,%edi
    1423:	e8 98 fc ff ff       	call   10c0 <mmap@plt>
    1428:	48 89 84 24 90 0f 00 	mov    %rax,0xf90(%rsp)
    142f:	00 
    1430:	48 83 bc 24 90 0f 00 	cmpq   $0xffffffffffffffff,0xf90(%rsp)
    1437:	00 ff 
    1439:	75 28                	jne    1463 <main+0xb2>
    143b:	48 8d 05 06 0c 00 00 	lea    0xc06(%rip),%rax        # 2048 <__PRETTY_FUNCTION__.0>
    1442:	48 89 c1             	mov    %rax,%rcx
    1445:	ba 42 00 00 00       	mov    $0x42,%edx
    144a:	48 8d 05 cb 0b 00 00 	lea    0xbcb(%rip),%rax        # 201c <_IO_stdin_used+0x1c>
    1451:	48 89 c6             	mov    %rax,%rsi
    1454:	48 8d 05 c8 0b 00 00 	lea    0xbc8(%rip),%rax        # 2023 <_IO_stdin_used+0x23>
    145b:	48 89 c7             	mov    %rax,%rdi
    145e:	e8 7d fc ff ff       	call   10e0 <__assert_fail@plt>
    1463:	c7 84 24 8c 0f 00 00 	movl   $0x4,0xf8c(%rsp)
    146a:	04 00 00 00 
    146e:	c7 84 24 84 0f 00 00 	movl   $0x0,0xf84(%rsp)
    1475:	00 00 00 00 
    1479:	e9 70 02 00 00       	jmp    16ee <main+0x33d>
    147e:	8b 84 24 84 0f 00 00 	mov    0xf84(%rsp),%eax
    1485:	89 05 9d 2b 00 00    	mov    %eax,0x2b9d(%rip)        # 4028 <idx>
    148b:	48 8d 84 24 00 10 00 	lea    0x1000(%rsp),%rax
    1492:	00 
    1493:	ba 00 08 00 00       	mov    $0x800,%edx
    1498:	be 00 00 00 00       	mov    $0x0,%esi
    149d:	48 89 c7             	mov    %rax,%rdi
    14a0:	e8 4b fc ff ff       	call   10f0 <memset@plt>
    14a5:	c7 84 24 88 0f 00 00 	movl   $0x1,0xf88(%rsp)
    14ac:	01 00 00 00 
    14b0:	e9 e1 01 00 00       	jmp    1696 <main+0x2e5>
    14b5:	48 8b 84 24 90 0f 00 	mov    0xf90(%rsp),%rax
    14bc:	00 
    14bd:	48 89 84 24 f0 0f 00 	mov    %rax,0xff0(%rsp)
    14c4:	00 
    14c5:	48 c7 84 24 f8 0f 00 	movq   $0x0,0xff8(%rsp)
    14cc:	00 00 00 00 00 
    14d1:	eb 26                	jmp    14f9 <main+0x148>
    14d3:	48 8b 84 24 f8 0f 00 	mov    0xff8(%rsp),%rax
    14da:	00 
    14db:	48 c1 e0 0a          	shl    $0xa,%rax
    14df:	48 89 c2             	mov    %rax,%rdx
    14e2:	48 8b 84 24 f0 0f 00 	mov    0xff0(%rsp),%rax
    14e9:	00 
    14ea:	48 01 d0             	add    %rdx,%rax
    14ed:	0f ae 38             	clflush (%rax)
    14f0:	48 83 84 24 f8 0f 00 	addq   $0x1,0xff8(%rsp)
    14f7:	00 01 
    14f9:	48 81 bc 24 f8 0f 00 	cmpq   $0xff,0xff8(%rsp)
    1500:	00 ff 00 00 00 
    1505:	76 cc                	jbe    14d3 <main+0x122>
    1507:	0f ae f0             	mfence 
    150a:	90                   	nop
    150b:	b8 00 00 00 00       	mov    $0x0,%eax
    1510:	e8 fe fd ff ff       	call   1313 <func1>
    1515:	8b 84 24 88 0f 00 00 	mov    0xf88(%rsp),%eax
    151c:	89 c7                	mov    %eax,%edi
    151e:	e8 09 fe ff ff       	call   132c <func3>
    1523:	48 89 05 0e 2b 00 00 	mov    %rax,0x2b0e(%rip)        # 4038 <h_ptr>
    152a:	48 8b 0d 07 2b 00 00 	mov    0x2b07(%rip),%rcx        # 4038 <h_ptr>
    1531:	48 8b 15 d8 2a 00 00 	mov    0x2ad8(%rip),%rdx        # 4010 <secret>
    1538:	8b 05 ea 2a 00 00    	mov    0x2aea(%rip),%eax        # 4028 <idx>
    153e:	48 98                	cltq   
    1540:	48 01 d0             	add    %rdx,%rax
    1543:	0f b6 00             	movzbl (%rax),%eax
    1546:	0f be d0             	movsbl %al,%edx
    1549:	48 8b 84 24 90 0f 00 	mov    0xf90(%rsp),%rax
    1550:	00 
    1551:	89 d6                	mov    %edx,%esi
    1553:	48 89 c7             	mov    %rax,%rdi
    1556:	ff d1                	call   *%rcx
    1558:	48 8b 84 24 90 0f 00 	mov    0xf90(%rsp),%rax
    155f:	00 
    1560:	48 89 84 24 98 0f 00 	mov    %rax,0xf98(%rsp)
    1567:	00 
    1568:	48 8d 84 24 00 10 00 	lea    0x1000(%rsp),%rax
    156f:	00 
    1570:	48 89 84 24 a0 0f 00 	mov    %rax,0xfa0(%rsp)
    1577:	00 
    1578:	0f ae f0             	mfence 
    157b:	48 c7 84 24 a8 0f 00 	movq   $0x0,0xfa8(%rsp)
    1582:	00 00 00 00 00 
    1587:	e9 ef 00 00 00       	jmp    167b <main+0x2ca>
    158c:	48 8b 84 24 a8 0f 00 	mov    0xfa8(%rsp),%rax
    1593:	00 
    1594:	48 69 c0 a7 00 00 00 	imul   $0xa7,%rax,%rax
    159b:	48 83 c0 0d          	add    $0xd,%rax
    159f:	25 ff 00 00 00       	and    $0xff,%eax
    15a4:	48 89 84 24 b0 0f 00 	mov    %rax,0xfb0(%rsp)
    15ab:	00 
    15ac:	48 8b 84 24 b0 0f 00 	mov    0xfb0(%rsp),%rax
    15b3:	00 
    15b4:	48 c1 e0 0a          	shl    $0xa,%rax
    15b8:	48 89 c2             	mov    %rax,%rdx
    15bb:	48 8b 84 24 98 0f 00 	mov    0xf98(%rsp),%rax
    15c2:	00 
    15c3:	48 01 d0             	add    %rdx,%rax
    15c6:	48 89 84 24 b8 0f 00 	mov    %rax,0xfb8(%rsp)
    15cd:	00 
    15ce:	0f 01 f9             	rdtscp 
    15d1:	48 89 84 24 c0 0f 00 	mov    %rax,0xfc0(%rsp)
    15d8:	00 
    15d9:	48 89 94 24 c8 0f 00 	mov    %rdx,0xfc8(%rsp)
    15e0:	00 
    15e1:	48 8b 84 24 c8 0f 00 	mov    0xfc8(%rsp),%rax
    15e8:	00 
    15e9:	48 c1 e0 20          	shl    $0x20,%rax
    15ed:	48 0b 84 24 c0 0f 00 	or     0xfc0(%rsp),%rax
    15f4:	00 
    15f5:	48 89 84 24 d0 0f 00 	mov    %rax,0xfd0(%rsp)
    15fc:	00 
    15fd:	48 8b 84 24 b8 0f 00 	mov    0xfb8(%rsp),%rax
    1604:	00 
    1605:	0f b6 00             	movzbl (%rax),%eax
    1608:	0f 01 f9             	rdtscp 
    160b:	48 89 84 24 d8 0f 00 	mov    %rax,0xfd8(%rsp)
    1612:	00 
    1613:	48 89 94 24 e0 0f 00 	mov    %rdx,0xfe0(%rsp)
    161a:	00 
    161b:	48 8b 84 24 e0 0f 00 	mov    0xfe0(%rsp),%rax
    1622:	00 
    1623:	48 c1 e0 20          	shl    $0x20,%rax
    1627:	48 0b 84 24 d8 0f 00 	or     0xfd8(%rsp),%rax
    162e:	00 
    162f:	48 2b 84 24 d0 0f 00 	sub    0xfd0(%rsp),%rax
    1636:	00 
    1637:	48 89 84 24 e8 0f 00 	mov    %rax,0xfe8(%rsp)
    163e:	00 
    163f:	48 81 bc 24 e8 0f 00 	cmpq   $0x9f,0xfe8(%rsp)
    1646:	00 9f 00 00 00 
    164b:	77 25                	ja     1672 <main+0x2c1>
    164d:	48 8b 84 24 b0 0f 00 	mov    0xfb0(%rsp),%rax
    1654:	00 
    1655:	48 8d 14 c5 00 00 00 	lea    0x0(,%rax,8),%rdx
    165c:	00 
    165d:	48 8b 84 24 a0 0f 00 	mov    0xfa0(%rsp),%rax
    1664:	00 
    1665:	48 01 d0             	add    %rdx,%rax
    1668:	48 8b 10             	mov    (%rax),%rdx
    166b:	48 83 c2 01          	add    $0x1,%rdx
    166f:	48 89 10             	mov    %rdx,(%rax)
    1672:	48 83 84 24 a8 0f 00 	addq   $0x1,0xfa8(%rsp)
    1679:	00 01 
    167b:	48 81 bc 24 a8 0f 00 	cmpq   $0xff,0xfa8(%rsp)
    1682:	00 ff 00 00 00 
    1687:	0f 86 ff fe ff ff    	jbe    158c <main+0x1db>
    168d:	90                   	nop
    168e:	83 84 24 88 0f 00 00 	addl   $0x1,0xf88(%rsp)
    1695:	01 
    1696:	81 bc 24 88 0f 00 00 	cmpl   $0x3e8,0xf88(%rsp)
    169d:	e8 03 00 00 
    16a1:	0f 8e 0e fe ff ff    	jle    14b5 <main+0x104>
    16a7:	48 8b 15 62 29 00 00 	mov    0x2962(%rip),%rdx        # 4010 <secret>
    16ae:	8b 84 24 84 0f 00 00 	mov    0xf84(%rsp),%eax
    16b5:	48 98                	cltq   
    16b7:	48 01 d0             	add    %rdx,%rax
    16ba:	48 89 c6             	mov    %rax,%rsi
    16bd:	48 8d 05 78 09 00 00 	lea    0x978(%rip),%rax        # 203c <_IO_stdin_used+0x3c>
    16c4:	48 89 c7             	mov    %rax,%rdi
    16c7:	b8 00 00 00 00       	mov    $0x0,%eax
    16cc:	e8 ff f9 ff ff       	call   10d0 <printf@plt>
    16d1:	48 8d 84 24 00 10 00 	lea    0x1000(%rsp),%rax
    16d8:	00 
    16d9:	be 02 00 00 00       	mov    $0x2,%esi
    16de:	48 89 c7             	mov    %rax,%rdi
    16e1:	e8 23 fb ff ff       	call   1209 <print_results>
    16e6:	83 84 24 84 0f 00 00 	addl   $0x1,0xf84(%rsp)
    16ed:	01 
    16ee:	8b 84 24 84 0f 00 00 	mov    0xf84(%rsp),%eax
    16f5:	3b 84 24 8c 0f 00 00 	cmp    0xf8c(%rsp),%eax
    16fc:	0f 8c 7c fd ff ff    	jl     147e <main+0xcd>
    1702:	b8 00 00 00 00       	mov    $0x0,%eax
    1707:	48 8b 94 24 f8 1f 00 	mov    0x1ff8(%rsp),%rdx
    170e:	00 
    170f:	64 48 2b 14 25 28 00 	sub    %fs:0x28,%rdx
    1716:	00 00 
    1718:	74 05                	je     171f <main+0x36e>
    171a:	e8 91 f9 ff ff       	call   10b0 <__stack_chk_fail@plt>
    171f:	c9                   	leave  
    1720:	c3                   	ret    

Disassembly of section .fini:

0000000000001724 <_fini>:
    1724:	f3 0f 1e fa          	endbr64 
    1728:	48 83 ec 08          	sub    $0x8,%rsp
    172c:	48 83 c4 08          	add    $0x8,%rsp
    1730:	c3                   	ret    
