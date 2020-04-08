
build/oled_display.elf:     file format elf32-littlearm

Sections:
Idx Name              Size      VMA       LMA       File off  Algn  Flags
  0 .isr_vector       000000c0  08000000  08000000  00010000  2**0  CONTENTS, ALLOC, LOAD, READONLY, DATA
  1 .text             0000289c  080000c0  080000c0  000100c0  2**2  CONTENTS, ALLOC, LOAD, READONLY, CODE
  2 .rodata           00002678  0800295c  0800295c  0001295c  2**2  CONTENTS, ALLOC, LOAD, READONLY, DATA
  3 .init_array       00000008  08004fd4  08004fd4  00014fd4  2**2  CONTENTS, ALLOC, LOAD, DATA
  4 .fini_array       00000004  08004fdc  08004fdc  00014fdc  2**2  CONTENTS, ALLOC, LOAD, DATA
  5 .data             00000504  20000000  08004fe0  00020000  2**3  CONTENTS, ALLOC, LOAD, DATA
  6 .bss              000008e4  20000504  080054e4  00020504  2**2  ALLOC
  7 ._user_heap_stack 00000600  20000de8  080054e4  00020de8  2**0  ALLOC
  8 .ARM.attributes   00000028  00000000  00000000  00020504  2**0  CONTENTS, READONLY
  9 .debug_info       00003d68  00000000  00000000  0002052c  2**0  CONTENTS, READONLY, DEBUGGING
 10 .debug_abbrev     00000a94  00000000  00000000  00024294  2**0  CONTENTS, READONLY, DEBUGGING
 11 .debug_loc        00001666  00000000  00000000  00024d28  2**0  CONTENTS, READONLY, DEBUGGING
 12 .debug_aranges    000003e0  00000000  00000000  0002638e  2**0  CONTENTS, READONLY, DEBUGGING
 13 .debug_ranges     00000380  00000000  00000000  0002676e  2**0  CONTENTS, READONLY, DEBUGGING
 14 .debug_line       00001548  00000000  00000000  00026aee  2**0  CONTENTS, READONLY, DEBUGGING
 15 .debug_str        0000132c  00000000  00000000  00028036  2**0  CONTENTS, READONLY, DEBUGGING
 16 .comment          0000007f  00000000  00000000  00029362  2**0  CONTENTS, READONLY
 17 .debug_frame      00000fa4  00000000  00000000  000293e4  2**2  CONTENTS, READONLY, DEBUGGING

Disassembly of section .text:

080000c0 <__do_global_dtors_aux>:
 80000c0:	b510      	push	{r4, lr}
 80000c2:	4c06      	ldr	r4, [pc, #24]	; (80000dc <__do_global_dtors_aux+0x1c>)
 80000c4:	7823      	ldrb	r3, [r4, #0]
 80000c6:	2b00      	cmp	r3, #0
 80000c8:	d107      	bne.n	80000da <__do_global_dtors_aux+0x1a>
 80000ca:	4b05      	ldr	r3, [pc, #20]	; (80000e0 <__do_global_dtors_aux+0x20>)
 80000cc:	2b00      	cmp	r3, #0
 80000ce:	d002      	beq.n	80000d6 <__do_global_dtors_aux+0x16>
 80000d0:	4804      	ldr	r0, [pc, #16]	; (80000e4 <__do_global_dtors_aux+0x24>)
 80000d2:	e000      	b.n	80000d6 <__do_global_dtors_aux+0x16>
 80000d4:	bf00      	nop
 80000d6:	2301      	movs	r3, #1
 80000d8:	7023      	strb	r3, [r4, #0]
 80000da:	bd10      	pop	{r4, pc}
 80000dc:	20000504 	.word	0x20000504
 80000e0:	00000000 	.word	0x00000000
 80000e4:	08002944 	.word	0x08002944

080000e8 <frame_dummy>:
 80000e8:	4b04      	ldr	r3, [pc, #16]	; (80000fc <frame_dummy+0x14>)
 80000ea:	b510      	push	{r4, lr}
 80000ec:	2b00      	cmp	r3, #0
 80000ee:	d003      	beq.n	80000f8 <frame_dummy+0x10>
 80000f0:	4903      	ldr	r1, [pc, #12]	; (8000100 <frame_dummy+0x18>)
 80000f2:	4804      	ldr	r0, [pc, #16]	; (8000104 <frame_dummy+0x1c>)
 80000f4:	e000      	b.n	80000f8 <frame_dummy+0x10>
 80000f6:	bf00      	nop
 80000f8:	bd10      	pop	{r4, pc}
 80000fa:	46c0      	nop			; (mov r8, r8)
 80000fc:	00000000 	.word	0x00000000
 8000100:	20000508 	.word	0x20000508
 8000104:	08002944 	.word	0x08002944

08000108 <__udivsi3>:
 8000108:	2200      	movs	r2, #0
 800010a:	0843      	lsrs	r3, r0, #1
 800010c:	428b      	cmp	r3, r1
 800010e:	d374      	bcc.n	80001fa <__udivsi3+0xf2>
 8000110:	0903      	lsrs	r3, r0, #4
 8000112:	428b      	cmp	r3, r1
 8000114:	d35f      	bcc.n	80001d6 <__udivsi3+0xce>
 8000116:	0a03      	lsrs	r3, r0, #8
 8000118:	428b      	cmp	r3, r1
 800011a:	d344      	bcc.n	80001a6 <__udivsi3+0x9e>
 800011c:	0b03      	lsrs	r3, r0, #12
 800011e:	428b      	cmp	r3, r1
 8000120:	d328      	bcc.n	8000174 <__udivsi3+0x6c>
 8000122:	0c03      	lsrs	r3, r0, #16
 8000124:	428b      	cmp	r3, r1
 8000126:	d30d      	bcc.n	8000144 <__udivsi3+0x3c>
 8000128:	22ff      	movs	r2, #255	; 0xff
 800012a:	0209      	lsls	r1, r1, #8
 800012c:	ba12      	rev	r2, r2
 800012e:	0c03      	lsrs	r3, r0, #16
 8000130:	428b      	cmp	r3, r1
 8000132:	d302      	bcc.n	800013a <__udivsi3+0x32>
 8000134:	1212      	asrs	r2, r2, #8
 8000136:	0209      	lsls	r1, r1, #8
 8000138:	d065      	beq.n	8000206 <__udivsi3+0xfe>
 800013a:	0b03      	lsrs	r3, r0, #12
 800013c:	428b      	cmp	r3, r1
 800013e:	d319      	bcc.n	8000174 <__udivsi3+0x6c>
 8000140:	e000      	b.n	8000144 <__udivsi3+0x3c>
 8000142:	0a09      	lsrs	r1, r1, #8
 8000144:	0bc3      	lsrs	r3, r0, #15
 8000146:	428b      	cmp	r3, r1
 8000148:	d301      	bcc.n	800014e <__udivsi3+0x46>
 800014a:	03cb      	lsls	r3, r1, #15
 800014c:	1ac0      	subs	r0, r0, r3
 800014e:	4152      	adcs	r2, r2
 8000150:	0b83      	lsrs	r3, r0, #14
 8000152:	428b      	cmp	r3, r1
 8000154:	d301      	bcc.n	800015a <__udivsi3+0x52>
 8000156:	038b      	lsls	r3, r1, #14
 8000158:	1ac0      	subs	r0, r0, r3
 800015a:	4152      	adcs	r2, r2
 800015c:	0b43      	lsrs	r3, r0, #13
 800015e:	428b      	cmp	r3, r1
 8000160:	d301      	bcc.n	8000166 <__udivsi3+0x5e>
 8000162:	034b      	lsls	r3, r1, #13
 8000164:	1ac0      	subs	r0, r0, r3
 8000166:	4152      	adcs	r2, r2
 8000168:	0b03      	lsrs	r3, r0, #12
 800016a:	428b      	cmp	r3, r1
 800016c:	d301      	bcc.n	8000172 <__udivsi3+0x6a>
 800016e:	030b      	lsls	r3, r1, #12
 8000170:	1ac0      	subs	r0, r0, r3
 8000172:	4152      	adcs	r2, r2
 8000174:	0ac3      	lsrs	r3, r0, #11
 8000176:	428b      	cmp	r3, r1
 8000178:	d301      	bcc.n	800017e <__udivsi3+0x76>
 800017a:	02cb      	lsls	r3, r1, #11
 800017c:	1ac0      	subs	r0, r0, r3
 800017e:	4152      	adcs	r2, r2
 8000180:	0a83      	lsrs	r3, r0, #10
 8000182:	428b      	cmp	r3, r1
 8000184:	d301      	bcc.n	800018a <__udivsi3+0x82>
 8000186:	028b      	lsls	r3, r1, #10
 8000188:	1ac0      	subs	r0, r0, r3
 800018a:	4152      	adcs	r2, r2
 800018c:	0a43      	lsrs	r3, r0, #9
 800018e:	428b      	cmp	r3, r1
 8000190:	d301      	bcc.n	8000196 <__udivsi3+0x8e>
 8000192:	024b      	lsls	r3, r1, #9
 8000194:	1ac0      	subs	r0, r0, r3
 8000196:	4152      	adcs	r2, r2
 8000198:	0a03      	lsrs	r3, r0, #8
 800019a:	428b      	cmp	r3, r1
 800019c:	d301      	bcc.n	80001a2 <__udivsi3+0x9a>
 800019e:	020b      	lsls	r3, r1, #8
 80001a0:	1ac0      	subs	r0, r0, r3
 80001a2:	4152      	adcs	r2, r2
 80001a4:	d2cd      	bcs.n	8000142 <__udivsi3+0x3a>
 80001a6:	09c3      	lsrs	r3, r0, #7
 80001a8:	428b      	cmp	r3, r1
 80001aa:	d301      	bcc.n	80001b0 <__udivsi3+0xa8>
 80001ac:	01cb      	lsls	r3, r1, #7
 80001ae:	1ac0      	subs	r0, r0, r3
 80001b0:	4152      	adcs	r2, r2
 80001b2:	0983      	lsrs	r3, r0, #6
 80001b4:	428b      	cmp	r3, r1
 80001b6:	d301      	bcc.n	80001bc <__udivsi3+0xb4>
 80001b8:	018b      	lsls	r3, r1, #6
 80001ba:	1ac0      	subs	r0, r0, r3
 80001bc:	4152      	adcs	r2, r2
 80001be:	0943      	lsrs	r3, r0, #5
 80001c0:	428b      	cmp	r3, r1
 80001c2:	d301      	bcc.n	80001c8 <__udivsi3+0xc0>
 80001c4:	014b      	lsls	r3, r1, #5
 80001c6:	1ac0      	subs	r0, r0, r3
 80001c8:	4152      	adcs	r2, r2
 80001ca:	0903      	lsrs	r3, r0, #4
 80001cc:	428b      	cmp	r3, r1
 80001ce:	d301      	bcc.n	80001d4 <__udivsi3+0xcc>
 80001d0:	010b      	lsls	r3, r1, #4
 80001d2:	1ac0      	subs	r0, r0, r3
 80001d4:	4152      	adcs	r2, r2
 80001d6:	08c3      	lsrs	r3, r0, #3
 80001d8:	428b      	cmp	r3, r1
 80001da:	d301      	bcc.n	80001e0 <__udivsi3+0xd8>
 80001dc:	00cb      	lsls	r3, r1, #3
 80001de:	1ac0      	subs	r0, r0, r3
 80001e0:	4152      	adcs	r2, r2
 80001e2:	0883      	lsrs	r3, r0, #2
 80001e4:	428b      	cmp	r3, r1
 80001e6:	d301      	bcc.n	80001ec <__udivsi3+0xe4>
 80001e8:	008b      	lsls	r3, r1, #2
 80001ea:	1ac0      	subs	r0, r0, r3
 80001ec:	4152      	adcs	r2, r2
 80001ee:	0843      	lsrs	r3, r0, #1
 80001f0:	428b      	cmp	r3, r1
 80001f2:	d301      	bcc.n	80001f8 <__udivsi3+0xf0>
 80001f4:	004b      	lsls	r3, r1, #1
 80001f6:	1ac0      	subs	r0, r0, r3
 80001f8:	4152      	adcs	r2, r2
 80001fa:	1a41      	subs	r1, r0, r1
 80001fc:	d200      	bcs.n	8000200 <__udivsi3+0xf8>
 80001fe:	4601      	mov	r1, r0
 8000200:	4152      	adcs	r2, r2
 8000202:	4610      	mov	r0, r2
 8000204:	4770      	bx	lr
 8000206:	e7ff      	b.n	8000208 <__udivsi3+0x100>
 8000208:	b501      	push	{r0, lr}
 800020a:	2000      	movs	r0, #0
 800020c:	f000 f8f0 	bl	80003f0 <__aeabi_idiv0>
 8000210:	bd02      	pop	{r1, pc}
 8000212:	46c0      	nop			; (mov r8, r8)

08000214 <__aeabi_uidivmod>:
 8000214:	2900      	cmp	r1, #0
 8000216:	d0f7      	beq.n	8000208 <__udivsi3+0x100>
 8000218:	e776      	b.n	8000108 <__udivsi3>
 800021a:	4770      	bx	lr

0800021c <__divsi3>:
 800021c:	4603      	mov	r3, r0
 800021e:	430b      	orrs	r3, r1
 8000220:	d47f      	bmi.n	8000322 <__divsi3+0x106>
 8000222:	2200      	movs	r2, #0
 8000224:	0843      	lsrs	r3, r0, #1
 8000226:	428b      	cmp	r3, r1
 8000228:	d374      	bcc.n	8000314 <__divsi3+0xf8>
 800022a:	0903      	lsrs	r3, r0, #4
 800022c:	428b      	cmp	r3, r1
 800022e:	d35f      	bcc.n	80002f0 <__divsi3+0xd4>
 8000230:	0a03      	lsrs	r3, r0, #8
 8000232:	428b      	cmp	r3, r1
 8000234:	d344      	bcc.n	80002c0 <__divsi3+0xa4>
 8000236:	0b03      	lsrs	r3, r0, #12
 8000238:	428b      	cmp	r3, r1
 800023a:	d328      	bcc.n	800028e <__divsi3+0x72>
 800023c:	0c03      	lsrs	r3, r0, #16
 800023e:	428b      	cmp	r3, r1
 8000240:	d30d      	bcc.n	800025e <__divsi3+0x42>
 8000242:	22ff      	movs	r2, #255	; 0xff
 8000244:	0209      	lsls	r1, r1, #8
 8000246:	ba12      	rev	r2, r2
 8000248:	0c03      	lsrs	r3, r0, #16
 800024a:	428b      	cmp	r3, r1
 800024c:	d302      	bcc.n	8000254 <__divsi3+0x38>
 800024e:	1212      	asrs	r2, r2, #8
 8000250:	0209      	lsls	r1, r1, #8
 8000252:	d065      	beq.n	8000320 <__divsi3+0x104>
 8000254:	0b03      	lsrs	r3, r0, #12
 8000256:	428b      	cmp	r3, r1
 8000258:	d319      	bcc.n	800028e <__divsi3+0x72>
 800025a:	e000      	b.n	800025e <__divsi3+0x42>
 800025c:	0a09      	lsrs	r1, r1, #8
 800025e:	0bc3      	lsrs	r3, r0, #15
 8000260:	428b      	cmp	r3, r1
 8000262:	d301      	bcc.n	8000268 <__divsi3+0x4c>
 8000264:	03cb      	lsls	r3, r1, #15
 8000266:	1ac0      	subs	r0, r0, r3
 8000268:	4152      	adcs	r2, r2
 800026a:	0b83      	lsrs	r3, r0, #14
 800026c:	428b      	cmp	r3, r1
 800026e:	d301      	bcc.n	8000274 <__divsi3+0x58>
 8000270:	038b      	lsls	r3, r1, #14
 8000272:	1ac0      	subs	r0, r0, r3
 8000274:	4152      	adcs	r2, r2
 8000276:	0b43      	lsrs	r3, r0, #13
 8000278:	428b      	cmp	r3, r1
 800027a:	d301      	bcc.n	8000280 <__divsi3+0x64>
 800027c:	034b      	lsls	r3, r1, #13
 800027e:	1ac0      	subs	r0, r0, r3
 8000280:	4152      	adcs	r2, r2
 8000282:	0b03      	lsrs	r3, r0, #12
 8000284:	428b      	cmp	r3, r1
 8000286:	d301      	bcc.n	800028c <__divsi3+0x70>
 8000288:	030b      	lsls	r3, r1, #12
 800028a:	1ac0      	subs	r0, r0, r3
 800028c:	4152      	adcs	r2, r2
 800028e:	0ac3      	lsrs	r3, r0, #11
 8000290:	428b      	cmp	r3, r1
 8000292:	d301      	bcc.n	8000298 <__divsi3+0x7c>
 8000294:	02cb      	lsls	r3, r1, #11
 8000296:	1ac0      	subs	r0, r0, r3
 8000298:	4152      	adcs	r2, r2
 800029a:	0a83      	lsrs	r3, r0, #10
 800029c:	428b      	cmp	r3, r1
 800029e:	d301      	bcc.n	80002a4 <__divsi3+0x88>
 80002a0:	028b      	lsls	r3, r1, #10
 80002a2:	1ac0      	subs	r0, r0, r3
 80002a4:	4152      	adcs	r2, r2
 80002a6:	0a43      	lsrs	r3, r0, #9
 80002a8:	428b      	cmp	r3, r1
 80002aa:	d301      	bcc.n	80002b0 <__divsi3+0x94>
 80002ac:	024b      	lsls	r3, r1, #9
 80002ae:	1ac0      	subs	r0, r0, r3
 80002b0:	4152      	adcs	r2, r2
 80002b2:	0a03      	lsrs	r3, r0, #8
 80002b4:	428b      	cmp	r3, r1
 80002b6:	d301      	bcc.n	80002bc <__divsi3+0xa0>
 80002b8:	020b      	lsls	r3, r1, #8
 80002ba:	1ac0      	subs	r0, r0, r3
 80002bc:	4152      	adcs	r2, r2
 80002be:	d2cd      	bcs.n	800025c <__divsi3+0x40>
 80002c0:	09c3      	lsrs	r3, r0, #7
 80002c2:	428b      	cmp	r3, r1
 80002c4:	d301      	bcc.n	80002ca <__divsi3+0xae>
 80002c6:	01cb      	lsls	r3, r1, #7
 80002c8:	1ac0      	subs	r0, r0, r3
 80002ca:	4152      	adcs	r2, r2
 80002cc:	0983      	lsrs	r3, r0, #6
 80002ce:	428b      	cmp	r3, r1
 80002d0:	d301      	bcc.n	80002d6 <__divsi3+0xba>
 80002d2:	018b      	lsls	r3, r1, #6
 80002d4:	1ac0      	subs	r0, r0, r3
 80002d6:	4152      	adcs	r2, r2
 80002d8:	0943      	lsrs	r3, r0, #5
 80002da:	428b      	cmp	r3, r1
 80002dc:	d301      	bcc.n	80002e2 <__divsi3+0xc6>
 80002de:	014b      	lsls	r3, r1, #5
 80002e0:	1ac0      	subs	r0, r0, r3
 80002e2:	4152      	adcs	r2, r2
 80002e4:	0903      	lsrs	r3, r0, #4
 80002e6:	428b      	cmp	r3, r1
 80002e8:	d301      	bcc.n	80002ee <__divsi3+0xd2>
 80002ea:	010b      	lsls	r3, r1, #4
 80002ec:	1ac0      	subs	r0, r0, r3
 80002ee:	4152      	adcs	r2, r2
 80002f0:	08c3      	lsrs	r3, r0, #3
 80002f2:	428b      	cmp	r3, r1
 80002f4:	d301      	bcc.n	80002fa <__divsi3+0xde>
 80002f6:	00cb      	lsls	r3, r1, #3
 80002f8:	1ac0      	subs	r0, r0, r3
 80002fa:	4152      	adcs	r2, r2
 80002fc:	0883      	lsrs	r3, r0, #2
 80002fe:	428b      	cmp	r3, r1
 8000300:	d301      	bcc.n	8000306 <__divsi3+0xea>
 8000302:	008b      	lsls	r3, r1, #2
 8000304:	1ac0      	subs	r0, r0, r3
 8000306:	4152      	adcs	r2, r2
 8000308:	0843      	lsrs	r3, r0, #1
 800030a:	428b      	cmp	r3, r1
 800030c:	d301      	bcc.n	8000312 <__divsi3+0xf6>
 800030e:	004b      	lsls	r3, r1, #1
 8000310:	1ac0      	subs	r0, r0, r3
 8000312:	4152      	adcs	r2, r2
 8000314:	1a41      	subs	r1, r0, r1
 8000316:	d200      	bcs.n	800031a <__divsi3+0xfe>
 8000318:	4601      	mov	r1, r0
 800031a:	4152      	adcs	r2, r2
 800031c:	4610      	mov	r0, r2
 800031e:	4770      	bx	lr
 8000320:	e05d      	b.n	80003de <__divsi3+0x1c2>
 8000322:	0fca      	lsrs	r2, r1, #31
 8000324:	d000      	beq.n	8000328 <__divsi3+0x10c>
 8000326:	4249      	negs	r1, r1
 8000328:	1003      	asrs	r3, r0, #32
 800032a:	d300      	bcc.n	800032e <__divsi3+0x112>
 800032c:	4240      	negs	r0, r0
 800032e:	4053      	eors	r3, r2
 8000330:	2200      	movs	r2, #0
 8000332:	469c      	mov	ip, r3
 8000334:	0903      	lsrs	r3, r0, #4
 8000336:	428b      	cmp	r3, r1
 8000338:	d32d      	bcc.n	8000396 <__divsi3+0x17a>
 800033a:	0a03      	lsrs	r3, r0, #8
 800033c:	428b      	cmp	r3, r1
 800033e:	d312      	bcc.n	8000366 <__divsi3+0x14a>
 8000340:	22fc      	movs	r2, #252	; 0xfc
 8000342:	0189      	lsls	r1, r1, #6
 8000344:	ba12      	rev	r2, r2
 8000346:	0a03      	lsrs	r3, r0, #8
 8000348:	428b      	cmp	r3, r1
 800034a:	d30c      	bcc.n	8000366 <__divsi3+0x14a>
 800034c:	0189      	lsls	r1, r1, #6
 800034e:	1192      	asrs	r2, r2, #6
 8000350:	428b      	cmp	r3, r1
 8000352:	d308      	bcc.n	8000366 <__divsi3+0x14a>
 8000354:	0189      	lsls	r1, r1, #6
 8000356:	1192      	asrs	r2, r2, #6
 8000358:	428b      	cmp	r3, r1
 800035a:	d304      	bcc.n	8000366 <__divsi3+0x14a>
 800035c:	0189      	lsls	r1, r1, #6
 800035e:	d03a      	beq.n	80003d6 <__divsi3+0x1ba>
 8000360:	1192      	asrs	r2, r2, #6
 8000362:	e000      	b.n	8000366 <__divsi3+0x14a>
 8000364:	0989      	lsrs	r1, r1, #6
 8000366:	09c3      	lsrs	r3, r0, #7
 8000368:	428b      	cmp	r3, r1
 800036a:	d301      	bcc.n	8000370 <__divsi3+0x154>
 800036c:	01cb      	lsls	r3, r1, #7
 800036e:	1ac0      	subs	r0, r0, r3
 8000370:	4152      	adcs	r2, r2
 8000372:	0983      	lsrs	r3, r0, #6
 8000374:	428b      	cmp	r3, r1
 8000376:	d301      	bcc.n	800037c <__divsi3+0x160>
 8000378:	018b      	lsls	r3, r1, #6
 800037a:	1ac0      	subs	r0, r0, r3
 800037c:	4152      	adcs	r2, r2
 800037e:	0943      	lsrs	r3, r0, #5
 8000380:	428b      	cmp	r3, r1
 8000382:	d301      	bcc.n	8000388 <__divsi3+0x16c>
 8000384:	014b      	lsls	r3, r1, #5
 8000386:	1ac0      	subs	r0, r0, r3
 8000388:	4152      	adcs	r2, r2
 800038a:	0903      	lsrs	r3, r0, #4
 800038c:	428b      	cmp	r3, r1
 800038e:	d301      	bcc.n	8000394 <__divsi3+0x178>
 8000390:	010b      	lsls	r3, r1, #4
 8000392:	1ac0      	subs	r0, r0, r3
 8000394:	4152      	adcs	r2, r2
 8000396:	08c3      	lsrs	r3, r0, #3
 8000398:	428b      	cmp	r3, r1
 800039a:	d301      	bcc.n	80003a0 <__divsi3+0x184>
 800039c:	00cb      	lsls	r3, r1, #3
 800039e:	1ac0      	subs	r0, r0, r3
 80003a0:	4152      	adcs	r2, r2
 80003a2:	0883      	lsrs	r3, r0, #2
 80003a4:	428b      	cmp	r3, r1
 80003a6:	d301      	bcc.n	80003ac <__divsi3+0x190>
 80003a8:	008b      	lsls	r3, r1, #2
 80003aa:	1ac0      	subs	r0, r0, r3
 80003ac:	4152      	adcs	r2, r2
 80003ae:	d2d9      	bcs.n	8000364 <__divsi3+0x148>
 80003b0:	0843      	lsrs	r3, r0, #1
 80003b2:	428b      	cmp	r3, r1
 80003b4:	d301      	bcc.n	80003ba <__divsi3+0x19e>
 80003b6:	004b      	lsls	r3, r1, #1
 80003b8:	1ac0      	subs	r0, r0, r3
 80003ba:	4152      	adcs	r2, r2
 80003bc:	1a41      	subs	r1, r0, r1
 80003be:	d200      	bcs.n	80003c2 <__divsi3+0x1a6>
 80003c0:	4601      	mov	r1, r0
 80003c2:	4663      	mov	r3, ip
 80003c4:	4152      	adcs	r2, r2
 80003c6:	105b      	asrs	r3, r3, #1
 80003c8:	4610      	mov	r0, r2
 80003ca:	d301      	bcc.n	80003d0 <__divsi3+0x1b4>
 80003cc:	4240      	negs	r0, r0
 80003ce:	2b00      	cmp	r3, #0
 80003d0:	d500      	bpl.n	80003d4 <__divsi3+0x1b8>
 80003d2:	4249      	negs	r1, r1
 80003d4:	4770      	bx	lr
 80003d6:	4663      	mov	r3, ip
 80003d8:	105b      	asrs	r3, r3, #1
 80003da:	d300      	bcc.n	80003de <__divsi3+0x1c2>
 80003dc:	4240      	negs	r0, r0
 80003de:	b501      	push	{r0, lr}
 80003e0:	2000      	movs	r0, #0
 80003e2:	f000 f805 	bl	80003f0 <__aeabi_idiv0>
 80003e6:	bd02      	pop	{r1, pc}

080003e8 <__aeabi_idivmod>:
 80003e8:	2900      	cmp	r1, #0
 80003ea:	d0f8      	beq.n	80003de <__divsi3+0x1c2>
 80003ec:	e716      	b.n	800021c <__divsi3>
 80003ee:	4770      	bx	lr

080003f0 <__aeabi_idiv0>:
 80003f0:	4770      	bx	lr
 80003f2:	46c0      	nop			; (mov r8, r8)

080003f4 <Reset_Handler>:
 80003f4:	480d      	ldr	r0, [pc, #52]	; (800042c <LoopForever+0x2>)
 80003f6:	4685      	mov	sp, r0
 80003f8:	480d      	ldr	r0, [pc, #52]	; (8000430 <LoopForever+0x6>)
 80003fa:	490e      	ldr	r1, [pc, #56]	; (8000434 <LoopForever+0xa>)
 80003fc:	4a0e      	ldr	r2, [pc, #56]	; (8000438 <LoopForever+0xe>)
 80003fe:	2300      	movs	r3, #0
 8000400:	e002      	b.n	8000408 <LoopCopyDataInit>

08000402 <CopyDataInit>:
 8000402:	58d4      	ldr	r4, [r2, r3]
 8000404:	50c4      	str	r4, [r0, r3]
 8000406:	3304      	adds	r3, #4

08000408 <LoopCopyDataInit>:
 8000408:	18c4      	adds	r4, r0, r3
 800040a:	428c      	cmp	r4, r1
 800040c:	d3f9      	bcc.n	8000402 <CopyDataInit>
 800040e:	4a0b      	ldr	r2, [pc, #44]	; (800043c <LoopForever+0x12>)
 8000410:	4c0b      	ldr	r4, [pc, #44]	; (8000440 <LoopForever+0x16>)
 8000412:	2300      	movs	r3, #0
 8000414:	e001      	b.n	800041a <LoopFillZerobss>

08000416 <FillZerobss>:
 8000416:	6013      	str	r3, [r2, #0]
 8000418:	3204      	adds	r2, #4

0800041a <LoopFillZerobss>:
 800041a:	42a2      	cmp	r2, r4
 800041c:	d3fb      	bcc.n	8000416 <FillZerobss>
 800041e:	f001 fab9 	bl	8001994 <SystemInit>
 8000422:	f002 f971 	bl	8002708 <__libc_init_array>
 8000426:	f001 fa99 	bl	800195c <main>

0800042a <LoopForever>:
 800042a:	e7fe      	b.n	800042a <LoopForever>
 800042c:	20002000 	.word	0x20002000
 8000430:	20000000 	.word	0x20000000
 8000434:	20000504 	.word	0x20000504
 8000438:	08004fe0 	.word	0x08004fe0
 800043c:	20000504 	.word	0x20000504
 8000440:	20000de8 	.word	0x20000de8

08000444 <ADC1_COMP_IRQHandler>:
 8000444:	e7fe      	b.n	8000444 <ADC1_COMP_IRQHandler>
	...

08000448 <NVIC_EnableIRQ>:
 8000448:	b580      	push	{r7, lr}
 800044a:	b082      	sub	sp, #8
 800044c:	af00      	add	r7, sp, #0
 800044e:	0002      	movs	r2, r0
 8000450:	1dfb      	adds	r3, r7, #7
 8000452:	701a      	strb	r2, [r3, #0]
 8000454:	1dfb      	adds	r3, r7, #7
 8000456:	781b      	ldrb	r3, [r3, #0]
 8000458:	001a      	movs	r2, r3
 800045a:	231f      	movs	r3, #31
 800045c:	401a      	ands	r2, r3
 800045e:	4b04      	ldr	r3, [pc, #16]	; (8000470 <NVIC_EnableIRQ+0x28>)
 8000460:	2101      	movs	r1, #1
 8000462:	4091      	lsls	r1, r2
 8000464:	000a      	movs	r2, r1
 8000466:	601a      	str	r2, [r3, #0]
 8000468:	46c0      	nop			; (mov r8, r8)
 800046a:	46bd      	mov	sp, r7
 800046c:	b002      	add	sp, #8
 800046e:	bd80      	pop	{r7, pc}
 8000470:	e000e100 	.word	0xe000e100

08000474 <NVIC_SetPriority>:
 8000474:	b590      	push	{r4, r7, lr}
 8000476:	b083      	sub	sp, #12
 8000478:	af00      	add	r7, sp, #0
 800047a:	0002      	movs	r2, r0
 800047c:	6039      	str	r1, [r7, #0]
 800047e:	1dfb      	adds	r3, r7, #7
 8000480:	701a      	strb	r2, [r3, #0]
 8000482:	1dfb      	adds	r3, r7, #7
 8000484:	781b      	ldrb	r3, [r3, #0]
 8000486:	2b7f      	cmp	r3, #127	; 0x7f
 8000488:	d932      	bls.n	80004f0 <NVIC_SetPriority+0x7c>
 800048a:	4a2f      	ldr	r2, [pc, #188]	; (8000548 <NVIC_SetPriority+0xd4>)
 800048c:	1dfb      	adds	r3, r7, #7
 800048e:	781b      	ldrb	r3, [r3, #0]
 8000490:	0019      	movs	r1, r3
 8000492:	230f      	movs	r3, #15
 8000494:	400b      	ands	r3, r1
 8000496:	3b08      	subs	r3, #8
 8000498:	089b      	lsrs	r3, r3, #2
 800049a:	3306      	adds	r3, #6
 800049c:	009b      	lsls	r3, r3, #2
 800049e:	18d3      	adds	r3, r2, r3
 80004a0:	3304      	adds	r3, #4
 80004a2:	681b      	ldr	r3, [r3, #0]
 80004a4:	1dfa      	adds	r2, r7, #7
 80004a6:	7812      	ldrb	r2, [r2, #0]
 80004a8:	0011      	movs	r1, r2
 80004aa:	2203      	movs	r2, #3
 80004ac:	400a      	ands	r2, r1
 80004ae:	00d2      	lsls	r2, r2, #3
 80004b0:	21ff      	movs	r1, #255	; 0xff
 80004b2:	4091      	lsls	r1, r2
 80004b4:	000a      	movs	r2, r1
 80004b6:	43d2      	mvns	r2, r2
 80004b8:	401a      	ands	r2, r3
 80004ba:	0011      	movs	r1, r2
 80004bc:	683b      	ldr	r3, [r7, #0]
 80004be:	019b      	lsls	r3, r3, #6
 80004c0:	22ff      	movs	r2, #255	; 0xff
 80004c2:	401a      	ands	r2, r3
 80004c4:	1dfb      	adds	r3, r7, #7
 80004c6:	781b      	ldrb	r3, [r3, #0]
 80004c8:	0018      	movs	r0, r3
 80004ca:	2303      	movs	r3, #3
 80004cc:	4003      	ands	r3, r0
 80004ce:	00db      	lsls	r3, r3, #3
 80004d0:	409a      	lsls	r2, r3
 80004d2:	481d      	ldr	r0, [pc, #116]	; (8000548 <NVIC_SetPriority+0xd4>)
 80004d4:	1dfb      	adds	r3, r7, #7
 80004d6:	781b      	ldrb	r3, [r3, #0]
 80004d8:	001c      	movs	r4, r3
 80004da:	230f      	movs	r3, #15
 80004dc:	4023      	ands	r3, r4
 80004de:	3b08      	subs	r3, #8
 80004e0:	089b      	lsrs	r3, r3, #2
 80004e2:	430a      	orrs	r2, r1
 80004e4:	3306      	adds	r3, #6
 80004e6:	009b      	lsls	r3, r3, #2
 80004e8:	18c3      	adds	r3, r0, r3
 80004ea:	3304      	adds	r3, #4
 80004ec:	601a      	str	r2, [r3, #0]
 80004ee:	e027      	b.n	8000540 <NVIC_SetPriority+0xcc>
 80004f0:	4a16      	ldr	r2, [pc, #88]	; (800054c <NVIC_SetPriority+0xd8>)
 80004f2:	1dfb      	adds	r3, r7, #7
 80004f4:	781b      	ldrb	r3, [r3, #0]
 80004f6:	b25b      	sxtb	r3, r3
 80004f8:	089b      	lsrs	r3, r3, #2
 80004fa:	33c0      	adds	r3, #192	; 0xc0
 80004fc:	009b      	lsls	r3, r3, #2
 80004fe:	589b      	ldr	r3, [r3, r2]
 8000500:	1dfa      	adds	r2, r7, #7
 8000502:	7812      	ldrb	r2, [r2, #0]
 8000504:	0011      	movs	r1, r2
 8000506:	2203      	movs	r2, #3
 8000508:	400a      	ands	r2, r1
 800050a:	00d2      	lsls	r2, r2, #3
 800050c:	21ff      	movs	r1, #255	; 0xff
 800050e:	4091      	lsls	r1, r2
 8000510:	000a      	movs	r2, r1
 8000512:	43d2      	mvns	r2, r2
 8000514:	401a      	ands	r2, r3
 8000516:	0011      	movs	r1, r2
 8000518:	683b      	ldr	r3, [r7, #0]
 800051a:	019b      	lsls	r3, r3, #6
 800051c:	22ff      	movs	r2, #255	; 0xff
 800051e:	401a      	ands	r2, r3
 8000520:	1dfb      	adds	r3, r7, #7
 8000522:	781b      	ldrb	r3, [r3, #0]
 8000524:	0018      	movs	r0, r3
 8000526:	2303      	movs	r3, #3
 8000528:	4003      	ands	r3, r0
 800052a:	00db      	lsls	r3, r3, #3
 800052c:	409a      	lsls	r2, r3
 800052e:	4807      	ldr	r0, [pc, #28]	; (800054c <NVIC_SetPriority+0xd8>)
 8000530:	1dfb      	adds	r3, r7, #7
 8000532:	781b      	ldrb	r3, [r3, #0]
 8000534:	b25b      	sxtb	r3, r3
 8000536:	089b      	lsrs	r3, r3, #2
 8000538:	430a      	orrs	r2, r1
 800053a:	33c0      	adds	r3, #192	; 0xc0
 800053c:	009b      	lsls	r3, r3, #2
 800053e:	501a      	str	r2, [r3, r0]
 8000540:	46c0      	nop			; (mov r8, r8)
 8000542:	46bd      	mov	sp, r7
 8000544:	b003      	add	sp, #12
 8000546:	bd90      	pop	{r4, r7, pc}
 8000548:	e000ed00 	.word	0xe000ed00
 800054c:	e000e100 	.word	0xe000e100

08000550 <SysTick_Config>:
 8000550:	b580      	push	{r7, lr}
 8000552:	b082      	sub	sp, #8
 8000554:	af00      	add	r7, sp, #0
 8000556:	6078      	str	r0, [r7, #4]
 8000558:	687b      	ldr	r3, [r7, #4]
 800055a:	3b01      	subs	r3, #1
 800055c:	4a0c      	ldr	r2, [pc, #48]	; (8000590 <SysTick_Config+0x40>)
 800055e:	4293      	cmp	r3, r2
 8000560:	d901      	bls.n	8000566 <SysTick_Config+0x16>
 8000562:	2301      	movs	r3, #1
 8000564:	e010      	b.n	8000588 <SysTick_Config+0x38>
 8000566:	4b0b      	ldr	r3, [pc, #44]	; (8000594 <SysTick_Config+0x44>)
 8000568:	687a      	ldr	r2, [r7, #4]
 800056a:	3a01      	subs	r2, #1
 800056c:	605a      	str	r2, [r3, #4]
 800056e:	2301      	movs	r3, #1
 8000570:	425b      	negs	r3, r3
 8000572:	2103      	movs	r1, #3
 8000574:	0018      	movs	r0, r3
 8000576:	f7ff ff7d 	bl	8000474 <NVIC_SetPriority>
 800057a:	4b06      	ldr	r3, [pc, #24]	; (8000594 <SysTick_Config+0x44>)
 800057c:	2200      	movs	r2, #0
 800057e:	609a      	str	r2, [r3, #8]
 8000580:	4b04      	ldr	r3, [pc, #16]	; (8000594 <SysTick_Config+0x44>)
 8000582:	2207      	movs	r2, #7
 8000584:	601a      	str	r2, [r3, #0]
 8000586:	2300      	movs	r3, #0
 8000588:	0018      	movs	r0, r3
 800058a:	46bd      	mov	sp, r7
 800058c:	b002      	add	sp, #8
 800058e:	bd80      	pop	{r7, pc}
 8000590:	00ffffff 	.word	0x00ffffff
 8000594:	e000e010 	.word	0xe000e010

08000598 <LL_RCC_HSI_Enable>:
 8000598:	b580      	push	{r7, lr}
 800059a:	af00      	add	r7, sp, #0
 800059c:	4b04      	ldr	r3, [pc, #16]	; (80005b0 <LL_RCC_HSI_Enable+0x18>)
 800059e:	681a      	ldr	r2, [r3, #0]
 80005a0:	4b03      	ldr	r3, [pc, #12]	; (80005b0 <LL_RCC_HSI_Enable+0x18>)
 80005a2:	2101      	movs	r1, #1
 80005a4:	430a      	orrs	r2, r1
 80005a6:	601a      	str	r2, [r3, #0]
 80005a8:	46c0      	nop			; (mov r8, r8)
 80005aa:	46bd      	mov	sp, r7
 80005ac:	bd80      	pop	{r7, pc}
 80005ae:	46c0      	nop			; (mov r8, r8)
 80005b0:	40021000 	.word	0x40021000

080005b4 <LL_RCC_HSI_IsReady>:
 80005b4:	b580      	push	{r7, lr}
 80005b6:	af00      	add	r7, sp, #0
 80005b8:	4b05      	ldr	r3, [pc, #20]	; (80005d0 <LL_RCC_HSI_IsReady+0x1c>)
 80005ba:	681b      	ldr	r3, [r3, #0]
 80005bc:	2202      	movs	r2, #2
 80005be:	4013      	ands	r3, r2
 80005c0:	3b02      	subs	r3, #2
 80005c2:	425a      	negs	r2, r3
 80005c4:	4153      	adcs	r3, r2
 80005c6:	b2db      	uxtb	r3, r3
 80005c8:	0018      	movs	r0, r3
 80005ca:	46bd      	mov	sp, r7
 80005cc:	bd80      	pop	{r7, pc}
 80005ce:	46c0      	nop			; (mov r8, r8)
 80005d0:	40021000 	.word	0x40021000

080005d4 <LL_RCC_SetSysClkSource>:
 80005d4:	b580      	push	{r7, lr}
 80005d6:	b082      	sub	sp, #8
 80005d8:	af00      	add	r7, sp, #0
 80005da:	6078      	str	r0, [r7, #4]
 80005dc:	4b06      	ldr	r3, [pc, #24]	; (80005f8 <LL_RCC_SetSysClkSource+0x24>)
 80005de:	685b      	ldr	r3, [r3, #4]
 80005e0:	2203      	movs	r2, #3
 80005e2:	4393      	bics	r3, r2
 80005e4:	0019      	movs	r1, r3
 80005e6:	4b04      	ldr	r3, [pc, #16]	; (80005f8 <LL_RCC_SetSysClkSource+0x24>)
 80005e8:	687a      	ldr	r2, [r7, #4]
 80005ea:	430a      	orrs	r2, r1
 80005ec:	605a      	str	r2, [r3, #4]
 80005ee:	46c0      	nop			; (mov r8, r8)
 80005f0:	46bd      	mov	sp, r7
 80005f2:	b002      	add	sp, #8
 80005f4:	bd80      	pop	{r7, pc}
 80005f6:	46c0      	nop			; (mov r8, r8)
 80005f8:	40021000 	.word	0x40021000

080005fc <LL_RCC_GetSysClkSource>:
 80005fc:	b580      	push	{r7, lr}
 80005fe:	af00      	add	r7, sp, #0
 8000600:	4b03      	ldr	r3, [pc, #12]	; (8000610 <LL_RCC_GetSysClkSource+0x14>)
 8000602:	685b      	ldr	r3, [r3, #4]
 8000604:	220c      	movs	r2, #12
 8000606:	4013      	ands	r3, r2
 8000608:	0018      	movs	r0, r3
 800060a:	46bd      	mov	sp, r7
 800060c:	bd80      	pop	{r7, pc}
 800060e:	46c0      	nop			; (mov r8, r8)
 8000610:	40021000 	.word	0x40021000

08000614 <LL_RCC_SetAHBPrescaler>:
 8000614:	b580      	push	{r7, lr}
 8000616:	b082      	sub	sp, #8
 8000618:	af00      	add	r7, sp, #0
 800061a:	6078      	str	r0, [r7, #4]
 800061c:	4b06      	ldr	r3, [pc, #24]	; (8000638 <LL_RCC_SetAHBPrescaler+0x24>)
 800061e:	685b      	ldr	r3, [r3, #4]
 8000620:	22f0      	movs	r2, #240	; 0xf0
 8000622:	4393      	bics	r3, r2
 8000624:	0019      	movs	r1, r3
 8000626:	4b04      	ldr	r3, [pc, #16]	; (8000638 <LL_RCC_SetAHBPrescaler+0x24>)
 8000628:	687a      	ldr	r2, [r7, #4]
 800062a:	430a      	orrs	r2, r1
 800062c:	605a      	str	r2, [r3, #4]
 800062e:	46c0      	nop			; (mov r8, r8)
 8000630:	46bd      	mov	sp, r7
 8000632:	b002      	add	sp, #8
 8000634:	bd80      	pop	{r7, pc}
 8000636:	46c0      	nop			; (mov r8, r8)
 8000638:	40021000 	.word	0x40021000

0800063c <LL_RCC_SetAPB1Prescaler>:
 800063c:	b580      	push	{r7, lr}
 800063e:	b082      	sub	sp, #8
 8000640:	af00      	add	r7, sp, #0
 8000642:	6078      	str	r0, [r7, #4]
 8000644:	4b06      	ldr	r3, [pc, #24]	; (8000660 <LL_RCC_SetAPB1Prescaler+0x24>)
 8000646:	685b      	ldr	r3, [r3, #4]
 8000648:	4a06      	ldr	r2, [pc, #24]	; (8000664 <LL_RCC_SetAPB1Prescaler+0x28>)
 800064a:	4013      	ands	r3, r2
 800064c:	0019      	movs	r1, r3
 800064e:	4b04      	ldr	r3, [pc, #16]	; (8000660 <LL_RCC_SetAPB1Prescaler+0x24>)
 8000650:	687a      	ldr	r2, [r7, #4]
 8000652:	430a      	orrs	r2, r1
 8000654:	605a      	str	r2, [r3, #4]
 8000656:	46c0      	nop			; (mov r8, r8)
 8000658:	46bd      	mov	sp, r7
 800065a:	b002      	add	sp, #8
 800065c:	bd80      	pop	{r7, pc}
 800065e:	46c0      	nop			; (mov r8, r8)
 8000660:	40021000 	.word	0x40021000
 8000664:	fffff8ff 	.word	0xfffff8ff

08000668 <LL_RCC_PLL_Enable>:
 8000668:	b580      	push	{r7, lr}
 800066a:	af00      	add	r7, sp, #0
 800066c:	4b04      	ldr	r3, [pc, #16]	; (8000680 <LL_RCC_PLL_Enable+0x18>)
 800066e:	681a      	ldr	r2, [r3, #0]
 8000670:	4b03      	ldr	r3, [pc, #12]	; (8000680 <LL_RCC_PLL_Enable+0x18>)
 8000672:	2180      	movs	r1, #128	; 0x80
 8000674:	0449      	lsls	r1, r1, #17
 8000676:	430a      	orrs	r2, r1
 8000678:	601a      	str	r2, [r3, #0]
 800067a:	46c0      	nop			; (mov r8, r8)
 800067c:	46bd      	mov	sp, r7
 800067e:	bd80      	pop	{r7, pc}
 8000680:	40021000 	.word	0x40021000

08000684 <LL_RCC_PLL_IsReady>:
 8000684:	b580      	push	{r7, lr}
 8000686:	af00      	add	r7, sp, #0
 8000688:	4b07      	ldr	r3, [pc, #28]	; (80006a8 <LL_RCC_PLL_IsReady+0x24>)
 800068a:	681a      	ldr	r2, [r3, #0]
 800068c:	2380      	movs	r3, #128	; 0x80
 800068e:	049b      	lsls	r3, r3, #18
 8000690:	4013      	ands	r3, r2
 8000692:	22fe      	movs	r2, #254	; 0xfe
 8000694:	0612      	lsls	r2, r2, #24
 8000696:	4694      	mov	ip, r2
 8000698:	4463      	add	r3, ip
 800069a:	425a      	negs	r2, r3
 800069c:	4153      	adcs	r3, r2
 800069e:	b2db      	uxtb	r3, r3
 80006a0:	0018      	movs	r0, r3
 80006a2:	46bd      	mov	sp, r7
 80006a4:	bd80      	pop	{r7, pc}
 80006a6:	46c0      	nop			; (mov r8, r8)
 80006a8:	40021000 	.word	0x40021000

080006ac <LL_RCC_PLL_ConfigDomain_SYS>:
 80006ac:	b580      	push	{r7, lr}
 80006ae:	b082      	sub	sp, #8
 80006b0:	af00      	add	r7, sp, #0
 80006b2:	6078      	str	r0, [r7, #4]
 80006b4:	6039      	str	r1, [r7, #0]
 80006b6:	4b0e      	ldr	r3, [pc, #56]	; (80006f0 <LL_RCC_PLL_ConfigDomain_SYS+0x44>)
 80006b8:	685b      	ldr	r3, [r3, #4]
 80006ba:	4a0e      	ldr	r2, [pc, #56]	; (80006f4 <LL_RCC_PLL_ConfigDomain_SYS+0x48>)
 80006bc:	4013      	ands	r3, r2
 80006be:	0019      	movs	r1, r3
 80006c0:	687a      	ldr	r2, [r7, #4]
 80006c2:	2380      	movs	r3, #128	; 0x80
 80006c4:	025b      	lsls	r3, r3, #9
 80006c6:	401a      	ands	r2, r3
 80006c8:	683b      	ldr	r3, [r7, #0]
 80006ca:	431a      	orrs	r2, r3
 80006cc:	4b08      	ldr	r3, [pc, #32]	; (80006f0 <LL_RCC_PLL_ConfigDomain_SYS+0x44>)
 80006ce:	430a      	orrs	r2, r1
 80006d0:	605a      	str	r2, [r3, #4]
 80006d2:	4b07      	ldr	r3, [pc, #28]	; (80006f0 <LL_RCC_PLL_ConfigDomain_SYS+0x44>)
 80006d4:	6adb      	ldr	r3, [r3, #44]	; 0x2c
 80006d6:	220f      	movs	r2, #15
 80006d8:	4393      	bics	r3, r2
 80006da:	0019      	movs	r1, r3
 80006dc:	687b      	ldr	r3, [r7, #4]
 80006de:	220f      	movs	r2, #15
 80006e0:	401a      	ands	r2, r3
 80006e2:	4b03      	ldr	r3, [pc, #12]	; (80006f0 <LL_RCC_PLL_ConfigDomain_SYS+0x44>)
 80006e4:	430a      	orrs	r2, r1
 80006e6:	62da      	str	r2, [r3, #44]	; 0x2c
 80006e8:	46c0      	nop			; (mov r8, r8)
 80006ea:	46bd      	mov	sp, r7
 80006ec:	b002      	add	sp, #8
 80006ee:	bd80      	pop	{r7, pc}
 80006f0:	40021000 	.word	0x40021000
 80006f4:	ffc2ffff 	.word	0xffc2ffff

080006f8 <LL_FLASH_SetLatency>:
 80006f8:	b580      	push	{r7, lr}
 80006fa:	b082      	sub	sp, #8
 80006fc:	af00      	add	r7, sp, #0
 80006fe:	6078      	str	r0, [r7, #4]
 8000700:	4b06      	ldr	r3, [pc, #24]	; (800071c <LL_FLASH_SetLatency+0x24>)
 8000702:	681b      	ldr	r3, [r3, #0]
 8000704:	2201      	movs	r2, #1
 8000706:	4393      	bics	r3, r2
 8000708:	0019      	movs	r1, r3
 800070a:	4b04      	ldr	r3, [pc, #16]	; (800071c <LL_FLASH_SetLatency+0x24>)
 800070c:	687a      	ldr	r2, [r7, #4]
 800070e:	430a      	orrs	r2, r1
 8000710:	601a      	str	r2, [r3, #0]
 8000712:	46c0      	nop			; (mov r8, r8)
 8000714:	46bd      	mov	sp, r7
 8000716:	b002      	add	sp, #8
 8000718:	bd80      	pop	{r7, pc}
 800071a:	46c0      	nop			; (mov r8, r8)
 800071c:	40022000 	.word	0x40022000

08000720 <LL_AHB1_GRP1_EnableClock>:
 8000720:	b580      	push	{r7, lr}
 8000722:	b084      	sub	sp, #16
 8000724:	af00      	add	r7, sp, #0
 8000726:	6078      	str	r0, [r7, #4]
 8000728:	4b07      	ldr	r3, [pc, #28]	; (8000748 <LL_AHB1_GRP1_EnableClock+0x28>)
 800072a:	6959      	ldr	r1, [r3, #20]
 800072c:	4b06      	ldr	r3, [pc, #24]	; (8000748 <LL_AHB1_GRP1_EnableClock+0x28>)
 800072e:	687a      	ldr	r2, [r7, #4]
 8000730:	430a      	orrs	r2, r1
 8000732:	615a      	str	r2, [r3, #20]
 8000734:	4b04      	ldr	r3, [pc, #16]	; (8000748 <LL_AHB1_GRP1_EnableClock+0x28>)
 8000736:	695b      	ldr	r3, [r3, #20]
 8000738:	687a      	ldr	r2, [r7, #4]
 800073a:	4013      	ands	r3, r2
 800073c:	60fb      	str	r3, [r7, #12]
 800073e:	68fb      	ldr	r3, [r7, #12]
 8000740:	46c0      	nop			; (mov r8, r8)
 8000742:	46bd      	mov	sp, r7
 8000744:	b004      	add	sp, #16
 8000746:	bd80      	pop	{r7, pc}
 8000748:	40021000 	.word	0x40021000

0800074c <LL_APB1_GRP1_EnableClock>:
 800074c:	b580      	push	{r7, lr}
 800074e:	b084      	sub	sp, #16
 8000750:	af00      	add	r7, sp, #0
 8000752:	6078      	str	r0, [r7, #4]
 8000754:	4b07      	ldr	r3, [pc, #28]	; (8000774 <LL_APB1_GRP1_EnableClock+0x28>)
 8000756:	69d9      	ldr	r1, [r3, #28]
 8000758:	4b06      	ldr	r3, [pc, #24]	; (8000774 <LL_APB1_GRP1_EnableClock+0x28>)
 800075a:	687a      	ldr	r2, [r7, #4]
 800075c:	430a      	orrs	r2, r1
 800075e:	61da      	str	r2, [r3, #28]
 8000760:	4b04      	ldr	r3, [pc, #16]	; (8000774 <LL_APB1_GRP1_EnableClock+0x28>)
 8000762:	69db      	ldr	r3, [r3, #28]
 8000764:	687a      	ldr	r2, [r7, #4]
 8000766:	4013      	ands	r3, r2
 8000768:	60fb      	str	r3, [r7, #12]
 800076a:	68fb      	ldr	r3, [r7, #12]
 800076c:	46c0      	nop			; (mov r8, r8)
 800076e:	46bd      	mov	sp, r7
 8000770:	b004      	add	sp, #16
 8000772:	bd80      	pop	{r7, pc}
 8000774:	40021000 	.word	0x40021000

08000778 <LL_GPIO_SetPinMode>:
 8000778:	b580      	push	{r7, lr}
 800077a:	b084      	sub	sp, #16
 800077c:	af00      	add	r7, sp, #0
 800077e:	60f8      	str	r0, [r7, #12]
 8000780:	60b9      	str	r1, [r7, #8]
 8000782:	607a      	str	r2, [r7, #4]
 8000784:	68fb      	ldr	r3, [r7, #12]
 8000786:	6819      	ldr	r1, [r3, #0]
 8000788:	68bb      	ldr	r3, [r7, #8]
 800078a:	68ba      	ldr	r2, [r7, #8]
 800078c:	435a      	muls	r2, r3
 800078e:	0013      	movs	r3, r2
 8000790:	005b      	lsls	r3, r3, #1
 8000792:	189b      	adds	r3, r3, r2
 8000794:	43db      	mvns	r3, r3
 8000796:	400b      	ands	r3, r1
 8000798:	001a      	movs	r2, r3
 800079a:	68bb      	ldr	r3, [r7, #8]
 800079c:	68b9      	ldr	r1, [r7, #8]
 800079e:	434b      	muls	r3, r1
 80007a0:	6879      	ldr	r1, [r7, #4]
 80007a2:	434b      	muls	r3, r1
 80007a4:	431a      	orrs	r2, r3
 80007a6:	68fb      	ldr	r3, [r7, #12]
 80007a8:	601a      	str	r2, [r3, #0]
 80007aa:	46c0      	nop			; (mov r8, r8)
 80007ac:	46bd      	mov	sp, r7
 80007ae:	b004      	add	sp, #16
 80007b0:	bd80      	pop	{r7, pc}

080007b2 <LL_GPIO_SetPinPull>:
 80007b2:	b580      	push	{r7, lr}
 80007b4:	b084      	sub	sp, #16
 80007b6:	af00      	add	r7, sp, #0
 80007b8:	60f8      	str	r0, [r7, #12]
 80007ba:	60b9      	str	r1, [r7, #8]
 80007bc:	607a      	str	r2, [r7, #4]
 80007be:	68fb      	ldr	r3, [r7, #12]
 80007c0:	68d9      	ldr	r1, [r3, #12]
 80007c2:	68bb      	ldr	r3, [r7, #8]
 80007c4:	68ba      	ldr	r2, [r7, #8]
 80007c6:	435a      	muls	r2, r3
 80007c8:	0013      	movs	r3, r2
 80007ca:	005b      	lsls	r3, r3, #1
 80007cc:	189b      	adds	r3, r3, r2
 80007ce:	43db      	mvns	r3, r3
 80007d0:	400b      	ands	r3, r1
 80007d2:	001a      	movs	r2, r3
 80007d4:	68bb      	ldr	r3, [r7, #8]
 80007d6:	68b9      	ldr	r1, [r7, #8]
 80007d8:	434b      	muls	r3, r1
 80007da:	6879      	ldr	r1, [r7, #4]
 80007dc:	434b      	muls	r3, r1
 80007de:	431a      	orrs	r2, r3
 80007e0:	68fb      	ldr	r3, [r7, #12]
 80007e2:	60da      	str	r2, [r3, #12]
 80007e4:	46c0      	nop			; (mov r8, r8)
 80007e6:	46bd      	mov	sp, r7
 80007e8:	b004      	add	sp, #16
 80007ea:	bd80      	pop	{r7, pc}

080007ec <LL_GPIO_SetAFPin_0_7>:
 80007ec:	b580      	push	{r7, lr}
 80007ee:	b084      	sub	sp, #16
 80007f0:	af00      	add	r7, sp, #0
 80007f2:	60f8      	str	r0, [r7, #12]
 80007f4:	60b9      	str	r1, [r7, #8]
 80007f6:	607a      	str	r2, [r7, #4]
 80007f8:	68fb      	ldr	r3, [r7, #12]
 80007fa:	6a19      	ldr	r1, [r3, #32]
 80007fc:	68bb      	ldr	r3, [r7, #8]
 80007fe:	68ba      	ldr	r2, [r7, #8]
 8000800:	4353      	muls	r3, r2
 8000802:	68ba      	ldr	r2, [r7, #8]
 8000804:	4353      	muls	r3, r2
 8000806:	68ba      	ldr	r2, [r7, #8]
 8000808:	435a      	muls	r2, r3
 800080a:	0013      	movs	r3, r2
 800080c:	011b      	lsls	r3, r3, #4
 800080e:	1a9b      	subs	r3, r3, r2
 8000810:	43db      	mvns	r3, r3
 8000812:	400b      	ands	r3, r1
 8000814:	001a      	movs	r2, r3
 8000816:	68bb      	ldr	r3, [r7, #8]
 8000818:	68b9      	ldr	r1, [r7, #8]
 800081a:	434b      	muls	r3, r1
 800081c:	68b9      	ldr	r1, [r7, #8]
 800081e:	434b      	muls	r3, r1
 8000820:	68b9      	ldr	r1, [r7, #8]
 8000822:	434b      	muls	r3, r1
 8000824:	6879      	ldr	r1, [r7, #4]
 8000826:	434b      	muls	r3, r1
 8000828:	431a      	orrs	r2, r3
 800082a:	68fb      	ldr	r3, [r7, #12]
 800082c:	621a      	str	r2, [r3, #32]
 800082e:	46c0      	nop			; (mov r8, r8)
 8000830:	46bd      	mov	sp, r7
 8000832:	b004      	add	sp, #16
 8000834:	bd80      	pop	{r7, pc}

08000836 <LL_GPIO_TogglePin>:
 8000836:	b580      	push	{r7, lr}
 8000838:	b082      	sub	sp, #8
 800083a:	af00      	add	r7, sp, #0
 800083c:	6078      	str	r0, [r7, #4]
 800083e:	6039      	str	r1, [r7, #0]
 8000840:	687b      	ldr	r3, [r7, #4]
 8000842:	695a      	ldr	r2, [r3, #20]
 8000844:	683b      	ldr	r3, [r7, #0]
 8000846:	405a      	eors	r2, r3
 8000848:	687b      	ldr	r3, [r7, #4]
 800084a:	615a      	str	r2, [r3, #20]
 800084c:	46c0      	nop			; (mov r8, r8)
 800084e:	46bd      	mov	sp, r7
 8000850:	b002      	add	sp, #8
 8000852:	bd80      	pop	{r7, pc}

08000854 <LL_TIM_EnableCounter>:
 8000854:	b580      	push	{r7, lr}
 8000856:	b082      	sub	sp, #8
 8000858:	af00      	add	r7, sp, #0
 800085a:	6078      	str	r0, [r7, #4]
 800085c:	687b      	ldr	r3, [r7, #4]
 800085e:	681b      	ldr	r3, [r3, #0]
 8000860:	2201      	movs	r2, #1
 8000862:	431a      	orrs	r2, r3
 8000864:	687b      	ldr	r3, [r7, #4]
 8000866:	601a      	str	r2, [r3, #0]
 8000868:	46c0      	nop			; (mov r8, r8)
 800086a:	46bd      	mov	sp, r7
 800086c:	b002      	add	sp, #8
 800086e:	bd80      	pop	{r7, pc}

08000870 <LL_TIM_GetCounter>:
 8000870:	b580      	push	{r7, lr}
 8000872:	b082      	sub	sp, #8
 8000874:	af00      	add	r7, sp, #0
 8000876:	6078      	str	r0, [r7, #4]
 8000878:	687b      	ldr	r3, [r7, #4]
 800087a:	6a5b      	ldr	r3, [r3, #36]	; 0x24
 800087c:	0018      	movs	r0, r3
 800087e:	46bd      	mov	sp, r7
 8000880:	b002      	add	sp, #8
 8000882:	bd80      	pop	{r7, pc}

08000884 <LL_TIM_SetAutoReload>:
 8000884:	b580      	push	{r7, lr}
 8000886:	b082      	sub	sp, #8
 8000888:	af00      	add	r7, sp, #0
 800088a:	6078      	str	r0, [r7, #4]
 800088c:	6039      	str	r1, [r7, #0]
 800088e:	687b      	ldr	r3, [r7, #4]
 8000890:	683a      	ldr	r2, [r7, #0]
 8000892:	62da      	str	r2, [r3, #44]	; 0x2c
 8000894:	46c0      	nop			; (mov r8, r8)
 8000896:	46bd      	mov	sp, r7
 8000898:	b002      	add	sp, #8
 800089a:	bd80      	pop	{r7, pc}

0800089c <LL_TIM_CC_EnableChannel>:
 800089c:	b580      	push	{r7, lr}
 800089e:	b082      	sub	sp, #8
 80008a0:	af00      	add	r7, sp, #0
 80008a2:	6078      	str	r0, [r7, #4]
 80008a4:	6039      	str	r1, [r7, #0]
 80008a6:	687b      	ldr	r3, [r7, #4]
 80008a8:	6a1a      	ldr	r2, [r3, #32]
 80008aa:	683b      	ldr	r3, [r7, #0]
 80008ac:	431a      	orrs	r2, r3
 80008ae:	687b      	ldr	r3, [r7, #4]
 80008b0:	621a      	str	r2, [r3, #32]
 80008b2:	46c0      	nop			; (mov r8, r8)
 80008b4:	46bd      	mov	sp, r7
 80008b6:	b002      	add	sp, #8
 80008b8:	bd80      	pop	{r7, pc}
	...

080008bc <LL_TIM_IC_SetActiveInput>:
 80008bc:	b5b0      	push	{r4, r5, r7, lr}
 80008be:	b084      	sub	sp, #16
 80008c0:	af00      	add	r7, sp, #0
 80008c2:	60f8      	str	r0, [r7, #12]
 80008c4:	60b9      	str	r1, [r7, #8]
 80008c6:	607a      	str	r2, [r7, #4]
 80008c8:	68bb      	ldr	r3, [r7, #8]
 80008ca:	2b01      	cmp	r3, #1
 80008cc:	d01e      	beq.n	800090c <LL_TIM_IC_SetActiveInput+0x50>
 80008ce:	68bb      	ldr	r3, [r7, #8]
 80008d0:	2b04      	cmp	r3, #4
 80008d2:	d019      	beq.n	8000908 <LL_TIM_IC_SetActiveInput+0x4c>
 80008d4:	68bb      	ldr	r3, [r7, #8]
 80008d6:	2b10      	cmp	r3, #16
 80008d8:	d014      	beq.n	8000904 <LL_TIM_IC_SetActiveInput+0x48>
 80008da:	68bb      	ldr	r3, [r7, #8]
 80008dc:	2b40      	cmp	r3, #64	; 0x40
 80008de:	d00f      	beq.n	8000900 <LL_TIM_IC_SetActiveInput+0x44>
 80008e0:	68ba      	ldr	r2, [r7, #8]
 80008e2:	2380      	movs	r3, #128	; 0x80
 80008e4:	005b      	lsls	r3, r3, #1
 80008e6:	429a      	cmp	r2, r3
 80008e8:	d008      	beq.n	80008fc <LL_TIM_IC_SetActiveInput+0x40>
 80008ea:	68ba      	ldr	r2, [r7, #8]
 80008ec:	2380      	movs	r3, #128	; 0x80
 80008ee:	00db      	lsls	r3, r3, #3
 80008f0:	429a      	cmp	r2, r3
 80008f2:	d101      	bne.n	80008f8 <LL_TIM_IC_SetActiveInput+0x3c>
 80008f4:	2305      	movs	r3, #5
 80008f6:	e00a      	b.n	800090e <LL_TIM_IC_SetActiveInput+0x52>
 80008f8:	2306      	movs	r3, #6
 80008fa:	e008      	b.n	800090e <LL_TIM_IC_SetActiveInput+0x52>
 80008fc:	2304      	movs	r3, #4
 80008fe:	e006      	b.n	800090e <LL_TIM_IC_SetActiveInput+0x52>
 8000900:	2303      	movs	r3, #3
 8000902:	e004      	b.n	800090e <LL_TIM_IC_SetActiveInput+0x52>
 8000904:	2302      	movs	r3, #2
 8000906:	e002      	b.n	800090e <LL_TIM_IC_SetActiveInput+0x52>
 8000908:	2301      	movs	r3, #1
 800090a:	e000      	b.n	800090e <LL_TIM_IC_SetActiveInput+0x52>
 800090c:	2300      	movs	r3, #0
 800090e:	001d      	movs	r5, r3
 8000910:	68fb      	ldr	r3, [r7, #12]
 8000912:	3318      	adds	r3, #24
 8000914:	001a      	movs	r2, r3
 8000916:	0029      	movs	r1, r5
 8000918:	4b0c      	ldr	r3, [pc, #48]	; (800094c <LL_TIM_IC_SetActiveInput+0x90>)
 800091a:	5c5b      	ldrb	r3, [r3, r1]
 800091c:	18d3      	adds	r3, r2, r3
 800091e:	001c      	movs	r4, r3
 8000920:	6823      	ldr	r3, [r4, #0]
 8000922:	0029      	movs	r1, r5
 8000924:	4a0a      	ldr	r2, [pc, #40]	; (8000950 <LL_TIM_IC_SetActiveInput+0x94>)
 8000926:	5c52      	ldrb	r2, [r2, r1]
 8000928:	0011      	movs	r1, r2
 800092a:	2203      	movs	r2, #3
 800092c:	408a      	lsls	r2, r1
 800092e:	43d2      	mvns	r2, r2
 8000930:	401a      	ands	r2, r3
 8000932:	687b      	ldr	r3, [r7, #4]
 8000934:	0c1b      	lsrs	r3, r3, #16
 8000936:	0028      	movs	r0, r5
 8000938:	4905      	ldr	r1, [pc, #20]	; (8000950 <LL_TIM_IC_SetActiveInput+0x94>)
 800093a:	5c09      	ldrb	r1, [r1, r0]
 800093c:	408b      	lsls	r3, r1
 800093e:	4313      	orrs	r3, r2
 8000940:	6023      	str	r3, [r4, #0]
 8000942:	46c0      	nop			; (mov r8, r8)
 8000944:	46bd      	mov	sp, r7
 8000946:	b004      	add	sp, #16
 8000948:	bdb0      	pop	{r4, r5, r7, pc}
 800094a:	46c0      	nop			; (mov r8, r8)
 800094c:	08002a0c 	.word	0x08002a0c
 8000950:	08002a14 	.word	0x08002a14

08000954 <LL_TIM_IC_SetPrescaler>:
 8000954:	b5b0      	push	{r4, r5, r7, lr}
 8000956:	b084      	sub	sp, #16
 8000958:	af00      	add	r7, sp, #0
 800095a:	60f8      	str	r0, [r7, #12]
 800095c:	60b9      	str	r1, [r7, #8]
 800095e:	607a      	str	r2, [r7, #4]
 8000960:	68bb      	ldr	r3, [r7, #8]
 8000962:	2b01      	cmp	r3, #1
 8000964:	d01e      	beq.n	80009a4 <LL_TIM_IC_SetPrescaler+0x50>
 8000966:	68bb      	ldr	r3, [r7, #8]
 8000968:	2b04      	cmp	r3, #4
 800096a:	d019      	beq.n	80009a0 <LL_TIM_IC_SetPrescaler+0x4c>
 800096c:	68bb      	ldr	r3, [r7, #8]
 800096e:	2b10      	cmp	r3, #16
 8000970:	d014      	beq.n	800099c <LL_TIM_IC_SetPrescaler+0x48>
 8000972:	68bb      	ldr	r3, [r7, #8]
 8000974:	2b40      	cmp	r3, #64	; 0x40
 8000976:	d00f      	beq.n	8000998 <LL_TIM_IC_SetPrescaler+0x44>
 8000978:	68ba      	ldr	r2, [r7, #8]
 800097a:	2380      	movs	r3, #128	; 0x80
 800097c:	005b      	lsls	r3, r3, #1
 800097e:	429a      	cmp	r2, r3
 8000980:	d008      	beq.n	8000994 <LL_TIM_IC_SetPrescaler+0x40>
 8000982:	68ba      	ldr	r2, [r7, #8]
 8000984:	2380      	movs	r3, #128	; 0x80
 8000986:	00db      	lsls	r3, r3, #3
 8000988:	429a      	cmp	r2, r3
 800098a:	d101      	bne.n	8000990 <LL_TIM_IC_SetPrescaler+0x3c>
 800098c:	2305      	movs	r3, #5
 800098e:	e00a      	b.n	80009a6 <LL_TIM_IC_SetPrescaler+0x52>
 8000990:	2306      	movs	r3, #6
 8000992:	e008      	b.n	80009a6 <LL_TIM_IC_SetPrescaler+0x52>
 8000994:	2304      	movs	r3, #4
 8000996:	e006      	b.n	80009a6 <LL_TIM_IC_SetPrescaler+0x52>
 8000998:	2303      	movs	r3, #3
 800099a:	e004      	b.n	80009a6 <LL_TIM_IC_SetPrescaler+0x52>
 800099c:	2302      	movs	r3, #2
 800099e:	e002      	b.n	80009a6 <LL_TIM_IC_SetPrescaler+0x52>
 80009a0:	2301      	movs	r3, #1
 80009a2:	e000      	b.n	80009a6 <LL_TIM_IC_SetPrescaler+0x52>
 80009a4:	2300      	movs	r3, #0
 80009a6:	001d      	movs	r5, r3
 80009a8:	68fb      	ldr	r3, [r7, #12]
 80009aa:	3318      	adds	r3, #24
 80009ac:	001a      	movs	r2, r3
 80009ae:	0029      	movs	r1, r5
 80009b0:	4b0c      	ldr	r3, [pc, #48]	; (80009e4 <LL_TIM_IC_SetPrescaler+0x90>)
 80009b2:	5c5b      	ldrb	r3, [r3, r1]
 80009b4:	18d3      	adds	r3, r2, r3
 80009b6:	001c      	movs	r4, r3
 80009b8:	6823      	ldr	r3, [r4, #0]
 80009ba:	0029      	movs	r1, r5
 80009bc:	4a0a      	ldr	r2, [pc, #40]	; (80009e8 <LL_TIM_IC_SetPrescaler+0x94>)
 80009be:	5c52      	ldrb	r2, [r2, r1]
 80009c0:	0011      	movs	r1, r2
 80009c2:	220c      	movs	r2, #12
 80009c4:	408a      	lsls	r2, r1
 80009c6:	43d2      	mvns	r2, r2
 80009c8:	401a      	ands	r2, r3
 80009ca:	687b      	ldr	r3, [r7, #4]
 80009cc:	0c1b      	lsrs	r3, r3, #16
 80009ce:	0028      	movs	r0, r5
 80009d0:	4905      	ldr	r1, [pc, #20]	; (80009e8 <LL_TIM_IC_SetPrescaler+0x94>)
 80009d2:	5c09      	ldrb	r1, [r1, r0]
 80009d4:	408b      	lsls	r3, r1
 80009d6:	4313      	orrs	r3, r2
 80009d8:	6023      	str	r3, [r4, #0]
 80009da:	46c0      	nop			; (mov r8, r8)
 80009dc:	46bd      	mov	sp, r7
 80009de:	b004      	add	sp, #16
 80009e0:	bdb0      	pop	{r4, r5, r7, pc}
 80009e2:	46c0      	nop			; (mov r8, r8)
 80009e4:	08002a0c 	.word	0x08002a0c
 80009e8:	08002a14 	.word	0x08002a14

080009ec <LL_TIM_IC_SetFilter>:
 80009ec:	b5b0      	push	{r4, r5, r7, lr}
 80009ee:	b084      	sub	sp, #16
 80009f0:	af00      	add	r7, sp, #0
 80009f2:	60f8      	str	r0, [r7, #12]
 80009f4:	60b9      	str	r1, [r7, #8]
 80009f6:	607a      	str	r2, [r7, #4]
 80009f8:	68bb      	ldr	r3, [r7, #8]
 80009fa:	2b01      	cmp	r3, #1
 80009fc:	d01e      	beq.n	8000a3c <LL_TIM_IC_SetFilter+0x50>
 80009fe:	68bb      	ldr	r3, [r7, #8]
 8000a00:	2b04      	cmp	r3, #4
 8000a02:	d019      	beq.n	8000a38 <LL_TIM_IC_SetFilter+0x4c>
 8000a04:	68bb      	ldr	r3, [r7, #8]
 8000a06:	2b10      	cmp	r3, #16
 8000a08:	d014      	beq.n	8000a34 <LL_TIM_IC_SetFilter+0x48>
 8000a0a:	68bb      	ldr	r3, [r7, #8]
 8000a0c:	2b40      	cmp	r3, #64	; 0x40
 8000a0e:	d00f      	beq.n	8000a30 <LL_TIM_IC_SetFilter+0x44>
 8000a10:	68ba      	ldr	r2, [r7, #8]
 8000a12:	2380      	movs	r3, #128	; 0x80
 8000a14:	005b      	lsls	r3, r3, #1
 8000a16:	429a      	cmp	r2, r3
 8000a18:	d008      	beq.n	8000a2c <LL_TIM_IC_SetFilter+0x40>
 8000a1a:	68ba      	ldr	r2, [r7, #8]
 8000a1c:	2380      	movs	r3, #128	; 0x80
 8000a1e:	00db      	lsls	r3, r3, #3
 8000a20:	429a      	cmp	r2, r3
 8000a22:	d101      	bne.n	8000a28 <LL_TIM_IC_SetFilter+0x3c>
 8000a24:	2305      	movs	r3, #5
 8000a26:	e00a      	b.n	8000a3e <LL_TIM_IC_SetFilter+0x52>
 8000a28:	2306      	movs	r3, #6
 8000a2a:	e008      	b.n	8000a3e <LL_TIM_IC_SetFilter+0x52>
 8000a2c:	2304      	movs	r3, #4
 8000a2e:	e006      	b.n	8000a3e <LL_TIM_IC_SetFilter+0x52>
 8000a30:	2303      	movs	r3, #3
 8000a32:	e004      	b.n	8000a3e <LL_TIM_IC_SetFilter+0x52>
 8000a34:	2302      	movs	r3, #2
 8000a36:	e002      	b.n	8000a3e <LL_TIM_IC_SetFilter+0x52>
 8000a38:	2301      	movs	r3, #1
 8000a3a:	e000      	b.n	8000a3e <LL_TIM_IC_SetFilter+0x52>
 8000a3c:	2300      	movs	r3, #0
 8000a3e:	001d      	movs	r5, r3
 8000a40:	68fb      	ldr	r3, [r7, #12]
 8000a42:	3318      	adds	r3, #24
 8000a44:	001a      	movs	r2, r3
 8000a46:	0029      	movs	r1, r5
 8000a48:	4b0c      	ldr	r3, [pc, #48]	; (8000a7c <LL_TIM_IC_SetFilter+0x90>)
 8000a4a:	5c5b      	ldrb	r3, [r3, r1]
 8000a4c:	18d3      	adds	r3, r2, r3
 8000a4e:	001c      	movs	r4, r3
 8000a50:	6823      	ldr	r3, [r4, #0]
 8000a52:	0029      	movs	r1, r5
 8000a54:	4a0a      	ldr	r2, [pc, #40]	; (8000a80 <LL_TIM_IC_SetFilter+0x94>)
 8000a56:	5c52      	ldrb	r2, [r2, r1]
 8000a58:	0011      	movs	r1, r2
 8000a5a:	22f0      	movs	r2, #240	; 0xf0
 8000a5c:	408a      	lsls	r2, r1
 8000a5e:	43d2      	mvns	r2, r2
 8000a60:	401a      	ands	r2, r3
 8000a62:	687b      	ldr	r3, [r7, #4]
 8000a64:	0c1b      	lsrs	r3, r3, #16
 8000a66:	0028      	movs	r0, r5
 8000a68:	4905      	ldr	r1, [pc, #20]	; (8000a80 <LL_TIM_IC_SetFilter+0x94>)
 8000a6a:	5c09      	ldrb	r1, [r1, r0]
 8000a6c:	408b      	lsls	r3, r1
 8000a6e:	4313      	orrs	r3, r2
 8000a70:	6023      	str	r3, [r4, #0]
 8000a72:	46c0      	nop			; (mov r8, r8)
 8000a74:	46bd      	mov	sp, r7
 8000a76:	b004      	add	sp, #16
 8000a78:	bdb0      	pop	{r4, r5, r7, pc}
 8000a7a:	46c0      	nop			; (mov r8, r8)
 8000a7c:	08002a0c 	.word	0x08002a0c
 8000a80:	08002a14 	.word	0x08002a14

08000a84 <LL_TIM_IC_SetPolarity>:
 8000a84:	b590      	push	{r4, r7, lr}
 8000a86:	b085      	sub	sp, #20
 8000a88:	af00      	add	r7, sp, #0
 8000a8a:	60f8      	str	r0, [r7, #12]
 8000a8c:	60b9      	str	r1, [r7, #8]
 8000a8e:	607a      	str	r2, [r7, #4]
 8000a90:	68bb      	ldr	r3, [r7, #8]
 8000a92:	2b01      	cmp	r3, #1
 8000a94:	d01e      	beq.n	8000ad4 <LL_TIM_IC_SetPolarity+0x50>
 8000a96:	68bb      	ldr	r3, [r7, #8]
 8000a98:	2b04      	cmp	r3, #4
 8000a9a:	d019      	beq.n	8000ad0 <LL_TIM_IC_SetPolarity+0x4c>
 8000a9c:	68bb      	ldr	r3, [r7, #8]
 8000a9e:	2b10      	cmp	r3, #16
 8000aa0:	d014      	beq.n	8000acc <LL_TIM_IC_SetPolarity+0x48>
 8000aa2:	68bb      	ldr	r3, [r7, #8]
 8000aa4:	2b40      	cmp	r3, #64	; 0x40
 8000aa6:	d00f      	beq.n	8000ac8 <LL_TIM_IC_SetPolarity+0x44>
 8000aa8:	68ba      	ldr	r2, [r7, #8]
 8000aaa:	2380      	movs	r3, #128	; 0x80
 8000aac:	005b      	lsls	r3, r3, #1
 8000aae:	429a      	cmp	r2, r3
 8000ab0:	d008      	beq.n	8000ac4 <LL_TIM_IC_SetPolarity+0x40>
 8000ab2:	68ba      	ldr	r2, [r7, #8]
 8000ab4:	2380      	movs	r3, #128	; 0x80
 8000ab6:	00db      	lsls	r3, r3, #3
 8000ab8:	429a      	cmp	r2, r3
 8000aba:	d101      	bne.n	8000ac0 <LL_TIM_IC_SetPolarity+0x3c>
 8000abc:	2305      	movs	r3, #5
 8000abe:	e00a      	b.n	8000ad6 <LL_TIM_IC_SetPolarity+0x52>
 8000ac0:	2306      	movs	r3, #6
 8000ac2:	e008      	b.n	8000ad6 <LL_TIM_IC_SetPolarity+0x52>
 8000ac4:	2304      	movs	r3, #4
 8000ac6:	e006      	b.n	8000ad6 <LL_TIM_IC_SetPolarity+0x52>
 8000ac8:	2303      	movs	r3, #3
 8000aca:	e004      	b.n	8000ad6 <LL_TIM_IC_SetPolarity+0x52>
 8000acc:	2302      	movs	r3, #2
 8000ace:	e002      	b.n	8000ad6 <LL_TIM_IC_SetPolarity+0x52>
 8000ad0:	2301      	movs	r3, #1
 8000ad2:	e000      	b.n	8000ad6 <LL_TIM_IC_SetPolarity+0x52>
 8000ad4:	2300      	movs	r3, #0
 8000ad6:	001c      	movs	r4, r3
 8000ad8:	68fb      	ldr	r3, [r7, #12]
 8000ada:	6a1b      	ldr	r3, [r3, #32]
 8000adc:	0021      	movs	r1, r4
 8000ade:	4a0a      	ldr	r2, [pc, #40]	; (8000b08 <LL_TIM_IC_SetPolarity+0x84>)
 8000ae0:	5c52      	ldrb	r2, [r2, r1]
 8000ae2:	0011      	movs	r1, r2
 8000ae4:	220a      	movs	r2, #10
 8000ae6:	408a      	lsls	r2, r1
 8000ae8:	43d2      	mvns	r2, r2
 8000aea:	401a      	ands	r2, r3
 8000aec:	0021      	movs	r1, r4
 8000aee:	4b06      	ldr	r3, [pc, #24]	; (8000b08 <LL_TIM_IC_SetPolarity+0x84>)
 8000af0:	5c5b      	ldrb	r3, [r3, r1]
 8000af2:	0019      	movs	r1, r3
 8000af4:	687b      	ldr	r3, [r7, #4]
 8000af6:	408b      	lsls	r3, r1
 8000af8:	431a      	orrs	r2, r3
 8000afa:	68fb      	ldr	r3, [r7, #12]
 8000afc:	621a      	str	r2, [r3, #32]
 8000afe:	46c0      	nop			; (mov r8, r8)
 8000b00:	46bd      	mov	sp, r7
 8000b02:	b005      	add	sp, #20
 8000b04:	bd90      	pop	{r4, r7, pc}
 8000b06:	46c0      	nop			; (mov r8, r8)
 8000b08:	08002a1c 	.word	0x08002a1c

08000b0c <LL_TIM_IC_GetCaptureCH1>:
 8000b0c:	b580      	push	{r7, lr}
 8000b0e:	b082      	sub	sp, #8
 8000b10:	af00      	add	r7, sp, #0
 8000b12:	6078      	str	r0, [r7, #4]
 8000b14:	687b      	ldr	r3, [r7, #4]
 8000b16:	6b5b      	ldr	r3, [r3, #52]	; 0x34
 8000b18:	0018      	movs	r0, r3
 8000b1a:	46bd      	mov	sp, r7
 8000b1c:	b002      	add	sp, #8
 8000b1e:	bd80      	pop	{r7, pc}

08000b20 <LL_TIM_SetEncoderMode>:
 8000b20:	b580      	push	{r7, lr}
 8000b22:	b082      	sub	sp, #8
 8000b24:	af00      	add	r7, sp, #0
 8000b26:	6078      	str	r0, [r7, #4]
 8000b28:	6039      	str	r1, [r7, #0]
 8000b2a:	687b      	ldr	r3, [r7, #4]
 8000b2c:	689b      	ldr	r3, [r3, #8]
 8000b2e:	2207      	movs	r2, #7
 8000b30:	4393      	bics	r3, r2
 8000b32:	001a      	movs	r2, r3
 8000b34:	683b      	ldr	r3, [r7, #0]
 8000b36:	431a      	orrs	r2, r3
 8000b38:	687b      	ldr	r3, [r7, #4]
 8000b3a:	609a      	str	r2, [r3, #8]
 8000b3c:	46c0      	nop			; (mov r8, r8)
 8000b3e:	46bd      	mov	sp, r7
 8000b40:	b002      	add	sp, #8
 8000b42:	bd80      	pop	{r7, pc}

08000b44 <LL_TIM_ClearFlag_CC1>:
 8000b44:	b580      	push	{r7, lr}
 8000b46:	b082      	sub	sp, #8
 8000b48:	af00      	add	r7, sp, #0
 8000b4a:	6078      	str	r0, [r7, #4]
 8000b4c:	687b      	ldr	r3, [r7, #4]
 8000b4e:	2203      	movs	r2, #3
 8000b50:	4252      	negs	r2, r2
 8000b52:	611a      	str	r2, [r3, #16]
 8000b54:	46c0      	nop			; (mov r8, r8)
 8000b56:	46bd      	mov	sp, r7
 8000b58:	b002      	add	sp, #8
 8000b5a:	bd80      	pop	{r7, pc}

08000b5c <LL_TIM_EnableIT_CC1>:
 8000b5c:	b580      	push	{r7, lr}
 8000b5e:	b082      	sub	sp, #8
 8000b60:	af00      	add	r7, sp, #0
 8000b62:	6078      	str	r0, [r7, #4]
 8000b64:	687b      	ldr	r3, [r7, #4]
 8000b66:	68db      	ldr	r3, [r3, #12]
 8000b68:	2202      	movs	r2, #2
 8000b6a:	431a      	orrs	r2, r3
 8000b6c:	687b      	ldr	r3, [r7, #4]
 8000b6e:	60da      	str	r2, [r3, #12]
 8000b70:	46c0      	nop			; (mov r8, r8)
 8000b72:	46bd      	mov	sp, r7
 8000b74:	b002      	add	sp, #8
 8000b76:	bd80      	pop	{r7, pc}

08000b78 <LL_SYSTICK_EnableIT>:
 8000b78:	b580      	push	{r7, lr}
 8000b7a:	af00      	add	r7, sp, #0
 8000b7c:	4b04      	ldr	r3, [pc, #16]	; (8000b90 <LL_SYSTICK_EnableIT+0x18>)
 8000b7e:	681a      	ldr	r2, [r3, #0]
 8000b80:	4b03      	ldr	r3, [pc, #12]	; (8000b90 <LL_SYSTICK_EnableIT+0x18>)
 8000b82:	2102      	movs	r1, #2
 8000b84:	430a      	orrs	r2, r1
 8000b86:	601a      	str	r2, [r3, #0]
 8000b88:	46c0      	nop			; (mov r8, r8)
 8000b8a:	46bd      	mov	sp, r7
 8000b8c:	bd80      	pop	{r7, pc}
 8000b8e:	46c0      	nop			; (mov r8, r8)
 8000b90:	e000e010 	.word	0xe000e010

08000b94 <tim_3_config>:
 8000b94:	b580      	push	{r7, lr}
 8000b96:	af00      	add	r7, sp, #0
 8000b98:	2380      	movs	r3, #128	; 0x80
 8000b9a:	029b      	lsls	r3, r3, #10
 8000b9c:	0018      	movs	r0, r3
 8000b9e:	f7ff fdbf 	bl	8000720 <LL_AHB1_GRP1_EnableClock>
 8000ba2:	2390      	movs	r3, #144	; 0x90
 8000ba4:	05db      	lsls	r3, r3, #23
 8000ba6:	2202      	movs	r2, #2
 8000ba8:	2180      	movs	r1, #128	; 0x80
 8000baa:	0018      	movs	r0, r3
 8000bac:	f7ff fde4 	bl	8000778 <LL_GPIO_SetPinMode>
 8000bb0:	2390      	movs	r3, #144	; 0x90
 8000bb2:	05db      	lsls	r3, r3, #23
 8000bb4:	2202      	movs	r2, #2
 8000bb6:	2140      	movs	r1, #64	; 0x40
 8000bb8:	0018      	movs	r0, r3
 8000bba:	f7ff fddd 	bl	8000778 <LL_GPIO_SetPinMode>
 8000bbe:	2390      	movs	r3, #144	; 0x90
 8000bc0:	05db      	lsls	r3, r3, #23
 8000bc2:	2201      	movs	r2, #1
 8000bc4:	2180      	movs	r1, #128	; 0x80
 8000bc6:	0018      	movs	r0, r3
 8000bc8:	f7ff fe10 	bl	80007ec <LL_GPIO_SetAFPin_0_7>
 8000bcc:	2390      	movs	r3, #144	; 0x90
 8000bce:	05db      	lsls	r3, r3, #23
 8000bd0:	2201      	movs	r2, #1
 8000bd2:	2140      	movs	r1, #64	; 0x40
 8000bd4:	0018      	movs	r0, r3
 8000bd6:	f7ff fe09 	bl	80007ec <LL_GPIO_SetAFPin_0_7>
 8000bda:	2390      	movs	r3, #144	; 0x90
 8000bdc:	05db      	lsls	r3, r3, #23
 8000bde:	2201      	movs	r2, #1
 8000be0:	2180      	movs	r1, #128	; 0x80
 8000be2:	0018      	movs	r0, r3
 8000be4:	f7ff fde5 	bl	80007b2 <LL_GPIO_SetPinPull>
 8000be8:	2390      	movs	r3, #144	; 0x90
 8000bea:	05db      	lsls	r3, r3, #23
 8000bec:	2201      	movs	r2, #1
 8000bee:	2140      	movs	r1, #64	; 0x40
 8000bf0:	0018      	movs	r0, r3
 8000bf2:	f7ff fdde 	bl	80007b2 <LL_GPIO_SetPinPull>
 8000bf6:	2002      	movs	r0, #2
 8000bf8:	f7ff fda8 	bl	800074c <LL_APB1_GRP1_EnableClock>
 8000bfc:	4b15      	ldr	r3, [pc, #84]	; (8000c54 <tim_3_config+0xc0>)
 8000bfe:	2103      	movs	r1, #3
 8000c00:	0018      	movs	r0, r3
 8000c02:	f7ff ff8d 	bl	8000b20 <LL_TIM_SetEncoderMode>
 8000c06:	4b13      	ldr	r3, [pc, #76]	; (8000c54 <tim_3_config+0xc0>)
 8000c08:	2202      	movs	r2, #2
 8000c0a:	2101      	movs	r1, #1
 8000c0c:	0018      	movs	r0, r3
 8000c0e:	f7ff ff39 	bl	8000a84 <LL_TIM_IC_SetPolarity>
 8000c12:	4b10      	ldr	r3, [pc, #64]	; (8000c54 <tim_3_config+0xc0>)
 8000c14:	2202      	movs	r2, #2
 8000c16:	2110      	movs	r1, #16
 8000c18:	0018      	movs	r0, r3
 8000c1a:	f7ff ff33 	bl	8000a84 <LL_TIM_IC_SetPolarity>
 8000c1e:	23a0      	movs	r3, #160	; 0xa0
 8000c20:	041b      	lsls	r3, r3, #16
 8000c22:	480c      	ldr	r0, [pc, #48]	; (8000c54 <tim_3_config+0xc0>)
 8000c24:	001a      	movs	r2, r3
 8000c26:	2101      	movs	r1, #1
 8000c28:	f7ff fee0 	bl	80009ec <LL_TIM_IC_SetFilter>
 8000c2c:	23a0      	movs	r3, #160	; 0xa0
 8000c2e:	041b      	lsls	r3, r3, #16
 8000c30:	4808      	ldr	r0, [pc, #32]	; (8000c54 <tim_3_config+0xc0>)
 8000c32:	001a      	movs	r2, r3
 8000c34:	2110      	movs	r1, #16
 8000c36:	f7ff fed9 	bl	80009ec <LL_TIM_IC_SetFilter>
 8000c3a:	4b06      	ldr	r3, [pc, #24]	; (8000c54 <tim_3_config+0xc0>)
 8000c3c:	2140      	movs	r1, #64	; 0x40
 8000c3e:	0018      	movs	r0, r3
 8000c40:	f7ff fe20 	bl	8000884 <LL_TIM_SetAutoReload>
 8000c44:	4b03      	ldr	r3, [pc, #12]	; (8000c54 <tim_3_config+0xc0>)
 8000c46:	0018      	movs	r0, r3
 8000c48:	f7ff fe04 	bl	8000854 <LL_TIM_EnableCounter>
 8000c4c:	46c0      	nop			; (mov r8, r8)
 8000c4e:	46bd      	mov	sp, r7
 8000c50:	bd80      	pop	{r7, pc}
 8000c52:	46c0      	nop			; (mov r8, r8)
 8000c54:	40000400 	.word	0x40000400

08000c58 <update_monster_location>:
 8000c58:	b5b0      	push	{r4, r5, r7, lr}
 8000c5a:	b084      	sub	sp, #16
 8000c5c:	af00      	add	r7, sp, #0
 8000c5e:	6078      	str	r0, [r7, #4]
 8000c60:	687b      	ldr	r3, [r7, #4]
 8000c62:	78db      	ldrb	r3, [r3, #3]
 8000c64:	2b00      	cmp	r3, #0
 8000c66:	d064      	beq.n	8000d32 <update_monster_location+0xda>
 8000c68:	2300      	movs	r3, #0
 8000c6a:	60fb      	str	r3, [r7, #12]
 8000c6c:	e021      	b.n	8000cb2 <update_monster_location+0x5a>
 8000c6e:	687b      	ldr	r3, [r7, #4]
 8000c70:	781c      	ldrb	r4, [r3, #0]
 8000c72:	68fb      	ldr	r3, [r7, #12]
 8000c74:	210b      	movs	r1, #11
 8000c76:	0018      	movs	r0, r3
 8000c78:	f7ff fbb6 	bl	80003e8 <__aeabi_idivmod>
 8000c7c:	000b      	movs	r3, r1
 8000c7e:	b2db      	uxtb	r3, r3
 8000c80:	18e3      	adds	r3, r4, r3
 8000c82:	b2db      	uxtb	r3, r3
 8000c84:	3b01      	subs	r3, #1
 8000c86:	b2dd      	uxtb	r5, r3
 8000c88:	687b      	ldr	r3, [r7, #4]
 8000c8a:	785c      	ldrb	r4, [r3, #1]
 8000c8c:	68fb      	ldr	r3, [r7, #12]
 8000c8e:	210b      	movs	r1, #11
 8000c90:	0018      	movs	r0, r3
 8000c92:	f7ff fac3 	bl	800021c <__divsi3>
 8000c96:	0003      	movs	r3, r0
 8000c98:	b2db      	uxtb	r3, r3
 8000c9a:	18e3      	adds	r3, r4, r3
 8000c9c:	b2db      	uxtb	r3, r3
 8000c9e:	3b08      	subs	r3, #8
 8000ca0:	b2db      	uxtb	r3, r3
 8000ca2:	2200      	movs	r2, #0
 8000ca4:	0019      	movs	r1, r3
 8000ca6:	0028      	movs	r0, r5
 8000ca8:	f001 fbb0 	bl	800240c <oled_set_pix>
 8000cac:	68fb      	ldr	r3, [r7, #12]
 8000cae:	3301      	adds	r3, #1
 8000cb0:	60fb      	str	r3, [r7, #12]
 8000cb2:	68fb      	ldr	r3, [r7, #12]
 8000cb4:	2b62      	cmp	r3, #98	; 0x62
 8000cb6:	ddda      	ble.n	8000c6e <update_monster_location+0x16>
 8000cb8:	2300      	movs	r3, #0
 8000cba:	60bb      	str	r3, [r7, #8]
 8000cbc:	e02a      	b.n	8000d14 <update_monster_location+0xbc>
 8000cbe:	687b      	ldr	r3, [r7, #4]
 8000cc0:	781c      	ldrb	r4, [r3, #0]
 8000cc2:	68bb      	ldr	r3, [r7, #8]
 8000cc4:	2109      	movs	r1, #9
 8000cc6:	0018      	movs	r0, r3
 8000cc8:	f7ff fb8e 	bl	80003e8 <__aeabi_idivmod>
 8000ccc:	000b      	movs	r3, r1
 8000cce:	b2db      	uxtb	r3, r3
 8000cd0:	18e3      	adds	r3, r4, r3
 8000cd2:	b2dd      	uxtb	r5, r3
 8000cd4:	687b      	ldr	r3, [r7, #4]
 8000cd6:	785c      	ldrb	r4, [r3, #1]
 8000cd8:	68bb      	ldr	r3, [r7, #8]
 8000cda:	2109      	movs	r1, #9
 8000cdc:	0018      	movs	r0, r3
 8000cde:	f7ff fa9d 	bl	800021c <__divsi3>
 8000ce2:	0003      	movs	r3, r0
 8000ce4:	b2db      	uxtb	r3, r3
 8000ce6:	18e3      	adds	r3, r4, r3
 8000ce8:	b2db      	uxtb	r3, r3
 8000cea:	3b07      	subs	r3, #7
 8000cec:	b2d8      	uxtb	r0, r3
 8000cee:	687b      	ldr	r3, [r7, #4]
 8000cf0:	789b      	ldrb	r3, [r3, #2]
 8000cf2:	0019      	movs	r1, r3
 8000cf4:	4a11      	ldr	r2, [pc, #68]	; (8000d3c <update_monster_location+0xe4>)
 8000cf6:	000b      	movs	r3, r1
 8000cf8:	019b      	lsls	r3, r3, #6
 8000cfa:	1a5b      	subs	r3, r3, r1
 8000cfc:	18d2      	adds	r2, r2, r3
 8000cfe:	68bb      	ldr	r3, [r7, #8]
 8000d00:	18d3      	adds	r3, r2, r3
 8000d02:	781b      	ldrb	r3, [r3, #0]
 8000d04:	001a      	movs	r2, r3
 8000d06:	0001      	movs	r1, r0
 8000d08:	0028      	movs	r0, r5
 8000d0a:	f001 fb7f 	bl	800240c <oled_set_pix>
 8000d0e:	68bb      	ldr	r3, [r7, #8]
 8000d10:	3301      	adds	r3, #1
 8000d12:	60bb      	str	r3, [r7, #8]
 8000d14:	68bb      	ldr	r3, [r7, #8]
 8000d16:	2b3e      	cmp	r3, #62	; 0x3e
 8000d18:	ddd1      	ble.n	8000cbe <update_monster_location+0x66>
 8000d1a:	687b      	ldr	r3, [r7, #4]
 8000d1c:	785b      	ldrb	r3, [r3, #1]
 8000d1e:	2b37      	cmp	r3, #55	; 0x37
 8000d20:	d908      	bls.n	8000d34 <update_monster_location+0xdc>
 8000d22:	687b      	ldr	r3, [r7, #4]
 8000d24:	78db      	ldrb	r3, [r3, #3]
 8000d26:	2b00      	cmp	r3, #0
 8000d28:	d004      	beq.n	8000d34 <update_monster_location+0xdc>
 8000d2a:	4b05      	ldr	r3, [pc, #20]	; (8000d40 <update_monster_location+0xe8>)
 8000d2c:	2201      	movs	r2, #1
 8000d2e:	701a      	strb	r2, [r3, #0]
 8000d30:	e000      	b.n	8000d34 <update_monster_location+0xdc>
 8000d32:	46c0      	nop			; (mov r8, r8)
 8000d34:	46bd      	mov	sp, r7
 8000d36:	b004      	add	sp, #16
 8000d38:	bdb0      	pop	{r4, r5, r7, pc}
 8000d3a:	46c0      	nop			; (mov r8, r8)
 8000d3c:	20000004 	.word	0x20000004
 8000d40:	20000521 	.word	0x20000521

08000d44 <spawn_monster>:
 8000d44:	b580      	push	{r7, lr}
 8000d46:	b084      	sub	sp, #16
 8000d48:	af00      	add	r7, sp, #0
 8000d4a:	60f8      	str	r0, [r7, #12]
 8000d4c:	60b9      	str	r1, [r7, #8]
 8000d4e:	607a      	str	r2, [r7, #4]
 8000d50:	603b      	str	r3, [r7, #0]
 8000d52:	68bb      	ldr	r3, [r7, #8]
 8000d54:	b2da      	uxtb	r2, r3
 8000d56:	68fb      	ldr	r3, [r7, #12]
 8000d58:	701a      	strb	r2, [r3, #0]
 8000d5a:	687b      	ldr	r3, [r7, #4]
 8000d5c:	b2da      	uxtb	r2, r3
 8000d5e:	68fb      	ldr	r3, [r7, #12]
 8000d60:	705a      	strb	r2, [r3, #1]
 8000d62:	68fb      	ldr	r3, [r7, #12]
 8000d64:	2201      	movs	r2, #1
 8000d66:	70da      	strb	r2, [r3, #3]
 8000d68:	683b      	ldr	r3, [r7, #0]
 8000d6a:	b2da      	uxtb	r2, r3
 8000d6c:	68fb      	ldr	r3, [r7, #12]
 8000d6e:	709a      	strb	r2, [r3, #2]
 8000d70:	68fb      	ldr	r3, [r7, #12]
 8000d72:	0018      	movs	r0, r3
 8000d74:	f7ff ff70 	bl	8000c58 <update_monster_location>
 8000d78:	68fb      	ldr	r3, [r7, #12]
 8000d7a:	0018      	movs	r0, r3
 8000d7c:	46bd      	mov	sp, r7
 8000d7e:	b004      	add	sp, #16
 8000d80:	bd80      	pop	{r7, pc}
	...

08000d84 <kill_monster>:
 8000d84:	b5b0      	push	{r4, r5, r7, lr}
 8000d86:	b084      	sub	sp, #16
 8000d88:	af00      	add	r7, sp, #0
 8000d8a:	6078      	str	r0, [r7, #4]
 8000d8c:	4a1e      	ldr	r2, [pc, #120]	; (8000e08 <kill_monster+0x84>)
 8000d8e:	687b      	ldr	r3, [r7, #4]
 8000d90:	009b      	lsls	r3, r3, #2
 8000d92:	18d3      	adds	r3, r2, r3
 8000d94:	3303      	adds	r3, #3
 8000d96:	2200      	movs	r2, #0
 8000d98:	701a      	strb	r2, [r3, #0]
 8000d9a:	2300      	movs	r3, #0
 8000d9c:	60fb      	str	r3, [r7, #12]
 8000d9e:	e024      	b.n	8000dea <kill_monster+0x66>
 8000da0:	4b19      	ldr	r3, [pc, #100]	; (8000e08 <kill_monster+0x84>)
 8000da2:	687a      	ldr	r2, [r7, #4]
 8000da4:	0092      	lsls	r2, r2, #2
 8000da6:	5cd4      	ldrb	r4, [r2, r3]
 8000da8:	68fb      	ldr	r3, [r7, #12]
 8000daa:	2109      	movs	r1, #9
 8000dac:	0018      	movs	r0, r3
 8000dae:	f7ff fb1b 	bl	80003e8 <__aeabi_idivmod>
 8000db2:	000b      	movs	r3, r1
 8000db4:	b2db      	uxtb	r3, r3
 8000db6:	18e3      	adds	r3, r4, r3
 8000db8:	b2dd      	uxtb	r5, r3
 8000dba:	4a13      	ldr	r2, [pc, #76]	; (8000e08 <kill_monster+0x84>)
 8000dbc:	687b      	ldr	r3, [r7, #4]
 8000dbe:	009b      	lsls	r3, r3, #2
 8000dc0:	18d3      	adds	r3, r2, r3
 8000dc2:	3301      	adds	r3, #1
 8000dc4:	781c      	ldrb	r4, [r3, #0]
 8000dc6:	68fa      	ldr	r2, [r7, #12]
 8000dc8:	2309      	movs	r3, #9
 8000dca:	4259      	negs	r1, r3
 8000dcc:	0010      	movs	r0, r2
 8000dce:	f7ff fa25 	bl	800021c <__divsi3>
 8000dd2:	0003      	movs	r3, r0
 8000dd4:	b2db      	uxtb	r3, r3
 8000dd6:	18e3      	adds	r3, r4, r3
 8000dd8:	b2db      	uxtb	r3, r3
 8000dda:	2200      	movs	r2, #0
 8000ddc:	0019      	movs	r1, r3
 8000dde:	0028      	movs	r0, r5
 8000de0:	f001 fb14 	bl	800240c <oled_set_pix>
 8000de4:	68fb      	ldr	r3, [r7, #12]
 8000de6:	3301      	adds	r3, #1
 8000de8:	60fb      	str	r3, [r7, #12]
 8000dea:	68fb      	ldr	r3, [r7, #12]
 8000dec:	2b47      	cmp	r3, #71	; 0x47
 8000dee:	ddd7      	ble.n	8000da0 <kill_monster+0x1c>
 8000df0:	f001 fa88 	bl	8002304 <oled_update>
 8000df4:	4b05      	ldr	r3, [pc, #20]	; (8000e0c <kill_monster+0x88>)
 8000df6:	781b      	ldrb	r3, [r3, #0]
 8000df8:	3301      	adds	r3, #1
 8000dfa:	b2da      	uxtb	r2, r3
 8000dfc:	4b03      	ldr	r3, [pc, #12]	; (8000e0c <kill_monster+0x88>)
 8000dfe:	701a      	strb	r2, [r3, #0]
 8000e00:	46c0      	nop			; (mov r8, r8)
 8000e02:	46bd      	mov	sp, r7
 8000e04:	b004      	add	sp, #16
 8000e06:	bdb0      	pop	{r4, r5, r7, pc}
 8000e08:	20000530 	.word	0x20000530
 8000e0c:	20000520 	.word	0x20000520

08000e10 <move_monster>:
 8000e10:	b580      	push	{r7, lr}
 8000e12:	b082      	sub	sp, #8
 8000e14:	af00      	add	r7, sp, #0
 8000e16:	6078      	str	r0, [r7, #4]
 8000e18:	6039      	str	r1, [r7, #0]
 8000e1a:	683b      	ldr	r3, [r7, #0]
 8000e1c:	2b01      	cmp	r3, #1
 8000e1e:	d00f      	beq.n	8000e40 <move_monster+0x30>
 8000e20:	dc02      	bgt.n	8000e28 <move_monster+0x18>
 8000e22:	2b00      	cmp	r3, #0
 8000e24:	d005      	beq.n	8000e32 <move_monster+0x22>
 8000e26:	e020      	b.n	8000e6a <move_monster+0x5a>
 8000e28:	2b02      	cmp	r3, #2
 8000e2a:	d010      	beq.n	8000e4e <move_monster+0x3e>
 8000e2c:	2b03      	cmp	r3, #3
 8000e2e:	d015      	beq.n	8000e5c <move_monster+0x4c>
 8000e30:	e01b      	b.n	8000e6a <move_monster+0x5a>
 8000e32:	687b      	ldr	r3, [r7, #4]
 8000e34:	785b      	ldrb	r3, [r3, #1]
 8000e36:	3301      	adds	r3, #1
 8000e38:	b2da      	uxtb	r2, r3
 8000e3a:	687b      	ldr	r3, [r7, #4]
 8000e3c:	705a      	strb	r2, [r3, #1]
 8000e3e:	e014      	b.n	8000e6a <move_monster+0x5a>
 8000e40:	687b      	ldr	r3, [r7, #4]
 8000e42:	785b      	ldrb	r3, [r3, #1]
 8000e44:	3b01      	subs	r3, #1
 8000e46:	b2da      	uxtb	r2, r3
 8000e48:	687b      	ldr	r3, [r7, #4]
 8000e4a:	705a      	strb	r2, [r3, #1]
 8000e4c:	e00d      	b.n	8000e6a <move_monster+0x5a>
 8000e4e:	687b      	ldr	r3, [r7, #4]
 8000e50:	781b      	ldrb	r3, [r3, #0]
 8000e52:	3b01      	subs	r3, #1
 8000e54:	b2da      	uxtb	r2, r3
 8000e56:	687b      	ldr	r3, [r7, #4]
 8000e58:	701a      	strb	r2, [r3, #0]
 8000e5a:	e006      	b.n	8000e6a <move_monster+0x5a>
 8000e5c:	687b      	ldr	r3, [r7, #4]
 8000e5e:	781b      	ldrb	r3, [r3, #0]
 8000e60:	3301      	adds	r3, #1
 8000e62:	b2da      	uxtb	r2, r3
 8000e64:	687b      	ldr	r3, [r7, #4]
 8000e66:	701a      	strb	r2, [r3, #0]
 8000e68:	46c0      	nop			; (mov r8, r8)
 8000e6a:	687b      	ldr	r3, [r7, #4]
 8000e6c:	0018      	movs	r0, r3
 8000e6e:	f7ff fef3 	bl	8000c58 <update_monster_location>
 8000e72:	46c0      	nop			; (mov r8, r8)
 8000e74:	46bd      	mov	sp, r7
 8000e76:	b002      	add	sp, #8
 8000e78:	bd80      	pop	{r7, pc}

08000e7a <move_all_monster_dir>:
 8000e7a:	b580      	push	{r7, lr}
 8000e7c:	b086      	sub	sp, #24
 8000e7e:	af00      	add	r7, sp, #0
 8000e80:	60f8      	str	r0, [r7, #12]
 8000e82:	60b9      	str	r1, [r7, #8]
 8000e84:	607a      	str	r2, [r7, #4]
 8000e86:	2300      	movs	r3, #0
 8000e88:	617b      	str	r3, [r7, #20]
 8000e8a:	e00b      	b.n	8000ea4 <move_all_monster_dir+0x2a>
 8000e8c:	697b      	ldr	r3, [r7, #20]
 8000e8e:	009b      	lsls	r3, r3, #2
 8000e90:	68fa      	ldr	r2, [r7, #12]
 8000e92:	18d3      	adds	r3, r2, r3
 8000e94:	68ba      	ldr	r2, [r7, #8]
 8000e96:	0011      	movs	r1, r2
 8000e98:	0018      	movs	r0, r3
 8000e9a:	f7ff ffb9 	bl	8000e10 <move_monster>
 8000e9e:	697b      	ldr	r3, [r7, #20]
 8000ea0:	3301      	adds	r3, #1
 8000ea2:	617b      	str	r3, [r7, #20]
 8000ea4:	697a      	ldr	r2, [r7, #20]
 8000ea6:	687b      	ldr	r3, [r7, #4]
 8000ea8:	429a      	cmp	r2, r3
 8000eaa:	dbef      	blt.n	8000e8c <move_all_monster_dir+0x12>
 8000eac:	46c0      	nop			; (mov r8, r8)
 8000eae:	46bd      	mov	sp, r7
 8000eb0:	b006      	add	sp, #24
 8000eb2:	bd80      	pop	{r7, pc}

08000eb4 <move_all_monster>:
 8000eb4:	b580      	push	{r7, lr}
 8000eb6:	b084      	sub	sp, #16
 8000eb8:	af00      	add	r7, sp, #0
 8000eba:	60f8      	str	r0, [r7, #12]
 8000ebc:	60b9      	str	r1, [r7, #8]
 8000ebe:	607a      	str	r2, [r7, #4]
 8000ec0:	68bb      	ldr	r3, [r7, #8]
 8000ec2:	2130      	movs	r1, #48	; 0x30
 8000ec4:	0018      	movs	r0, r3
 8000ec6:	f7ff fa8f 	bl	80003e8 <__aeabi_idivmod>
 8000eca:	000b      	movs	r3, r1
 8000ecc:	2b13      	cmp	r3, #19
 8000ece:	dc06      	bgt.n	8000ede <move_all_monster+0x2a>
 8000ed0:	687a      	ldr	r2, [r7, #4]
 8000ed2:	68fb      	ldr	r3, [r7, #12]
 8000ed4:	2103      	movs	r1, #3
 8000ed6:	0018      	movs	r0, r3
 8000ed8:	f7ff ffcf 	bl	8000e7a <move_all_monster_dir>
 8000edc:	e02b      	b.n	8000f36 <move_all_monster+0x82>
 8000ede:	68bb      	ldr	r3, [r7, #8]
 8000ee0:	2130      	movs	r1, #48	; 0x30
 8000ee2:	0018      	movs	r0, r3
 8000ee4:	f7ff fa80 	bl	80003e8 <__aeabi_idivmod>
 8000ee8:	000b      	movs	r3, r1
 8000eea:	2b17      	cmp	r3, #23
 8000eec:	dc06      	bgt.n	8000efc <move_all_monster+0x48>
 8000eee:	687a      	ldr	r2, [r7, #4]
 8000ef0:	68fb      	ldr	r3, [r7, #12]
 8000ef2:	2100      	movs	r1, #0
 8000ef4:	0018      	movs	r0, r3
 8000ef6:	f7ff ffc0 	bl	8000e7a <move_all_monster_dir>
 8000efa:	e01c      	b.n	8000f36 <move_all_monster+0x82>
 8000efc:	68bb      	ldr	r3, [r7, #8]
 8000efe:	2130      	movs	r1, #48	; 0x30
 8000f00:	0018      	movs	r0, r3
 8000f02:	f7ff fa71 	bl	80003e8 <__aeabi_idivmod>
 8000f06:	000b      	movs	r3, r1
 8000f08:	2b2b      	cmp	r3, #43	; 0x2b
 8000f0a:	dc06      	bgt.n	8000f1a <move_all_monster+0x66>
 8000f0c:	687a      	ldr	r2, [r7, #4]
 8000f0e:	68fb      	ldr	r3, [r7, #12]
 8000f10:	2102      	movs	r1, #2
 8000f12:	0018      	movs	r0, r3
 8000f14:	f7ff ffb1 	bl	8000e7a <move_all_monster_dir>
 8000f18:	e00d      	b.n	8000f36 <move_all_monster+0x82>
 8000f1a:	68bb      	ldr	r3, [r7, #8]
 8000f1c:	2130      	movs	r1, #48	; 0x30
 8000f1e:	0018      	movs	r0, r3
 8000f20:	f7ff fa62 	bl	80003e8 <__aeabi_idivmod>
 8000f24:	000b      	movs	r3, r1
 8000f26:	2b2f      	cmp	r3, #47	; 0x2f
 8000f28:	dc05      	bgt.n	8000f36 <move_all_monster+0x82>
 8000f2a:	687a      	ldr	r2, [r7, #4]
 8000f2c:	68fb      	ldr	r3, [r7, #12]
 8000f2e:	2100      	movs	r1, #0
 8000f30:	0018      	movs	r0, r3
 8000f32:	f7ff ffa2 	bl	8000e7a <move_all_monster_dir>
 8000f36:	46c0      	nop			; (mov r8, r8)
 8000f38:	46bd      	mov	sp, r7
 8000f3a:	b004      	add	sp, #16
 8000f3c:	bd80      	pop	{r7, pc}
	...

08000f40 <spawn_all_monsters>:
 8000f40:	b580      	push	{r7, lr}
 8000f42:	b082      	sub	sp, #8
 8000f44:	af00      	add	r7, sp, #0
 8000f46:	1cfb      	adds	r3, r7, #3
 8000f48:	2200      	movs	r2, #0
 8000f4a:	701a      	strb	r2, [r3, #0]
 8000f4c:	2300      	movs	r3, #0
 8000f4e:	607b      	str	r3, [r7, #4]
 8000f50:	e02a      	b.n	8000fa8 <spawn_all_monsters+0x68>
 8000f52:	687b      	ldr	r3, [r7, #4]
 8000f54:	b2db      	uxtb	r3, r3
 8000f56:	1cfa      	adds	r2, r7, #3
 8000f58:	1c19      	adds	r1, r3, #0
 8000f5a:	00c9      	lsls	r1, r1, #3
 8000f5c:	1acb      	subs	r3, r1, r3
 8000f5e:	18db      	adds	r3, r3, r3
 8000f60:	7013      	strb	r3, [r2, #0]
 8000f62:	687b      	ldr	r3, [r7, #4]
 8000f64:	009a      	lsls	r2, r3, #2
 8000f66:	4b14      	ldr	r3, [pc, #80]	; (8000fb8 <spawn_all_monsters+0x78>)
 8000f68:	18d0      	adds	r0, r2, r3
 8000f6a:	1cfb      	adds	r3, r7, #3
 8000f6c:	7819      	ldrb	r1, [r3, #0]
 8000f6e:	2300      	movs	r3, #0
 8000f70:	2207      	movs	r2, #7
 8000f72:	f7ff fee7 	bl	8000d44 <spawn_monster>
 8000f76:	687b      	ldr	r3, [r7, #4]
 8000f78:	3308      	adds	r3, #8
 8000f7a:	009a      	lsls	r2, r3, #2
 8000f7c:	4b0e      	ldr	r3, [pc, #56]	; (8000fb8 <spawn_all_monsters+0x78>)
 8000f7e:	18d0      	adds	r0, r2, r3
 8000f80:	1cfb      	adds	r3, r7, #3
 8000f82:	7819      	ldrb	r1, [r3, #0]
 8000f84:	2301      	movs	r3, #1
 8000f86:	2211      	movs	r2, #17
 8000f88:	f7ff fedc 	bl	8000d44 <spawn_monster>
 8000f8c:	687b      	ldr	r3, [r7, #4]
 8000f8e:	3310      	adds	r3, #16
 8000f90:	009a      	lsls	r2, r3, #2
 8000f92:	4b09      	ldr	r3, [pc, #36]	; (8000fb8 <spawn_all_monsters+0x78>)
 8000f94:	18d0      	adds	r0, r2, r3
 8000f96:	1cfb      	adds	r3, r7, #3
 8000f98:	7819      	ldrb	r1, [r3, #0]
 8000f9a:	2302      	movs	r3, #2
 8000f9c:	221b      	movs	r2, #27
 8000f9e:	f7ff fed1 	bl	8000d44 <spawn_monster>
 8000fa2:	687b      	ldr	r3, [r7, #4]
 8000fa4:	3301      	adds	r3, #1
 8000fa6:	607b      	str	r3, [r7, #4]
 8000fa8:	687b      	ldr	r3, [r7, #4]
 8000faa:	2b07      	cmp	r3, #7
 8000fac:	ddd1      	ble.n	8000f52 <spawn_all_monsters+0x12>
 8000fae:	46c0      	nop			; (mov r8, r8)
 8000fb0:	46bd      	mov	sp, r7
 8000fb2:	b002      	add	sp, #8
 8000fb4:	bd80      	pop	{r7, pc}
 8000fb6:	46c0      	nop			; (mov r8, r8)
 8000fb8:	20000530 	.word	0x20000530

08000fbc <shots_config>:
 8000fbc:	b580      	push	{r7, lr}
 8000fbe:	b082      	sub	sp, #8
 8000fc0:	af00      	add	r7, sp, #0
 8000fc2:	1dfb      	adds	r3, r7, #7
 8000fc4:	2200      	movs	r2, #0
 8000fc6:	701a      	strb	r2, [r3, #0]
 8000fc8:	e00a      	b.n	8000fe0 <shots_config+0x24>
 8000fca:	1dfb      	adds	r3, r7, #7
 8000fcc:	781a      	ldrb	r2, [r3, #0]
 8000fce:	4b08      	ldr	r3, [pc, #32]	; (8000ff0 <shots_config+0x34>)
 8000fd0:	0092      	lsls	r2, r2, #2
 8000fd2:	2100      	movs	r1, #0
 8000fd4:	54d1      	strb	r1, [r2, r3]
 8000fd6:	1dfb      	adds	r3, r7, #7
 8000fd8:	1dfa      	adds	r2, r7, #7
 8000fda:	7812      	ldrb	r2, [r2, #0]
 8000fdc:	3201      	adds	r2, #1
 8000fde:	701a      	strb	r2, [r3, #0]
 8000fe0:	1dfb      	adds	r3, r7, #7
 8000fe2:	781b      	ldrb	r3, [r3, #0]
 8000fe4:	2b04      	cmp	r3, #4
 8000fe6:	d9f0      	bls.n	8000fca <shots_config+0xe>
 8000fe8:	46c0      	nop			; (mov r8, r8)
 8000fea:	46bd      	mov	sp, r7
 8000fec:	b002      	add	sp, #8
 8000fee:	bd80      	pop	{r7, pc}
 8000ff0:	20000da4 	.word	0x20000da4

08000ff4 <shot_capture>:
 8000ff4:	b580      	push	{r7, lr}
 8000ff6:	b084      	sub	sp, #16
 8000ff8:	af00      	add	r7, sp, #0
 8000ffa:	6078      	str	r0, [r7, #4]
 8000ffc:	2380      	movs	r3, #128	; 0x80
 8000ffe:	05db      	lsls	r3, r3, #23
 8001000:	0018      	movs	r0, r3
 8001002:	f7ff fd83 	bl	8000b0c <LL_TIM_IC_GetCaptureCH1>
 8001006:	0003      	movs	r3, r0
 8001008:	4925      	ldr	r1, [pc, #148]	; (80010a0 <shot_capture+0xac>)
 800100a:	0018      	movs	r0, r3
 800100c:	f7ff f87c 	bl	8000108 <__udivsi3>
 8001010:	0003      	movs	r3, r0
 8001012:	60fb      	str	r3, [r7, #12]
 8001014:	2380      	movs	r3, #128	; 0x80
 8001016:	05db      	lsls	r3, r3, #23
 8001018:	0018      	movs	r0, r3
 800101a:	f7ff fc29 	bl	8000870 <LL_TIM_GetCounter>
 800101e:	0003      	movs	r3, r0
 8001020:	491f      	ldr	r1, [pc, #124]	; (80010a0 <shot_capture+0xac>)
 8001022:	0018      	movs	r0, r3
 8001024:	f7ff f870 	bl	8000108 <__udivsi3>
 8001028:	0003      	movs	r3, r0
 800102a:	60fb      	str	r3, [r7, #12]
 800102c:	4b1d      	ldr	r3, [pc, #116]	; (80010a4 <shot_capture+0xb0>)
 800102e:	681b      	ldr	r3, [r3, #0]
 8001030:	68fa      	ldr	r2, [r7, #12]
 8001032:	1ad3      	subs	r3, r2, r3
 8001034:	60bb      	str	r3, [r7, #8]
 8001036:	68ba      	ldr	r2, [r7, #8]
 8001038:	687b      	ldr	r3, [r7, #4]
 800103a:	429a      	cmp	r2, r3
 800103c:	d92b      	bls.n	8001096 <shot_capture+0xa2>
 800103e:	4b19      	ldr	r3, [pc, #100]	; (80010a4 <shot_capture+0xb0>)
 8001040:	68fa      	ldr	r2, [r7, #12]
 8001042:	601a      	str	r2, [r3, #0]
 8001044:	4b18      	ldr	r3, [pc, #96]	; (80010a8 <shot_capture+0xb4>)
 8001046:	781b      	ldrb	r3, [r3, #0]
 8001048:	001a      	movs	r2, r3
 800104a:	4b18      	ldr	r3, [pc, #96]	; (80010ac <shot_capture+0xb8>)
 800104c:	0092      	lsls	r2, r2, #2
 800104e:	2101      	movs	r1, #1
 8001050:	54d1      	strb	r1, [r2, r3]
 8001052:	4b17      	ldr	r3, [pc, #92]	; (80010b0 <shot_capture+0xbc>)
 8001054:	781b      	ldrb	r3, [r3, #0]
 8001056:	4a14      	ldr	r2, [pc, #80]	; (80010a8 <shot_capture+0xb4>)
 8001058:	7812      	ldrb	r2, [r2, #0]
 800105a:	0010      	movs	r0, r2
 800105c:	3304      	adds	r3, #4
 800105e:	b2d9      	uxtb	r1, r3
 8001060:	4a12      	ldr	r2, [pc, #72]	; (80010ac <shot_capture+0xb8>)
 8001062:	0083      	lsls	r3, r0, #2
 8001064:	18d3      	adds	r3, r2, r3
 8001066:	3301      	adds	r3, #1
 8001068:	1c0a      	adds	r2, r1, #0
 800106a:	701a      	strb	r2, [r3, #0]
 800106c:	4b0e      	ldr	r3, [pc, #56]	; (80010a8 <shot_capture+0xb4>)
 800106e:	781b      	ldrb	r3, [r3, #0]
 8001070:	4a0e      	ldr	r2, [pc, #56]	; (80010ac <shot_capture+0xb8>)
 8001072:	009b      	lsls	r3, r3, #2
 8001074:	18d3      	adds	r3, r2, r3
 8001076:	3302      	adds	r3, #2
 8001078:	223e      	movs	r2, #62	; 0x3e
 800107a:	701a      	strb	r2, [r3, #0]
 800107c:	4b0a      	ldr	r3, [pc, #40]	; (80010a8 <shot_capture+0xb4>)
 800107e:	781b      	ldrb	r3, [r3, #0]
 8001080:	3301      	adds	r3, #1
 8001082:	b2da      	uxtb	r2, r3
 8001084:	4b08      	ldr	r3, [pc, #32]	; (80010a8 <shot_capture+0xb4>)
 8001086:	701a      	strb	r2, [r3, #0]
 8001088:	4b07      	ldr	r3, [pc, #28]	; (80010a8 <shot_capture+0xb4>)
 800108a:	781b      	ldrb	r3, [r3, #0]
 800108c:	2b05      	cmp	r3, #5
 800108e:	d102      	bne.n	8001096 <shot_capture+0xa2>
 8001090:	4b05      	ldr	r3, [pc, #20]	; (80010a8 <shot_capture+0xb4>)
 8001092:	2200      	movs	r2, #0
 8001094:	701a      	strb	r2, [r3, #0]
 8001096:	46c0      	nop			; (mov r8, r8)
 8001098:	46bd      	mov	sp, r7
 800109a:	b004      	add	sp, #16
 800109c:	bd80      	pop	{r7, pc}
 800109e:	46c0      	nop			; (mov r8, r8)
 80010a0:	0000bb80 	.word	0x0000bb80
 80010a4:	20000590 	.word	0x20000590
 80010a8:	20000594 	.word	0x20000594
 80010ac:	20000da4 	.word	0x20000da4
 80010b0:	2000052c 	.word	0x2000052c

080010b4 <shot_move>:
 80010b4:	b580      	push	{r7, lr}
 80010b6:	b082      	sub	sp, #8
 80010b8:	af00      	add	r7, sp, #0
 80010ba:	0002      	movs	r2, r0
 80010bc:	1dfb      	adds	r3, r7, #7
 80010be:	701a      	strb	r2, [r3, #0]
 80010c0:	1dfb      	adds	r3, r7, #7
 80010c2:	781a      	ldrb	r2, [r3, #0]
 80010c4:	4b3e      	ldr	r3, [pc, #248]	; (80011c0 <shot_move+0x10c>)
 80010c6:	0092      	lsls	r2, r2, #2
 80010c8:	5cd3      	ldrb	r3, [r2, r3]
 80010ca:	2b00      	cmp	r3, #0
 80010cc:	d073      	beq.n	80011b6 <shot_move+0x102>
 80010ce:	1dfb      	adds	r3, r7, #7
 80010d0:	781b      	ldrb	r3, [r3, #0]
 80010d2:	4a3b      	ldr	r2, [pc, #236]	; (80011c0 <shot_move+0x10c>)
 80010d4:	009b      	lsls	r3, r3, #2
 80010d6:	18d3      	adds	r3, r2, r3
 80010d8:	3301      	adds	r3, #1
 80010da:	7818      	ldrb	r0, [r3, #0]
 80010dc:	1dfb      	adds	r3, r7, #7
 80010de:	781b      	ldrb	r3, [r3, #0]
 80010e0:	4a37      	ldr	r2, [pc, #220]	; (80011c0 <shot_move+0x10c>)
 80010e2:	009b      	lsls	r3, r3, #2
 80010e4:	18d3      	adds	r3, r2, r3
 80010e6:	3302      	adds	r3, #2
 80010e8:	781b      	ldrb	r3, [r3, #0]
 80010ea:	2200      	movs	r2, #0
 80010ec:	0019      	movs	r1, r3
 80010ee:	f001 f98d 	bl	800240c <oled_set_pix>
 80010f2:	1dfb      	adds	r3, r7, #7
 80010f4:	781b      	ldrb	r3, [r3, #0]
 80010f6:	4a32      	ldr	r2, [pc, #200]	; (80011c0 <shot_move+0x10c>)
 80010f8:	009b      	lsls	r3, r3, #2
 80010fa:	18d3      	adds	r3, r2, r3
 80010fc:	3301      	adds	r3, #1
 80010fe:	7818      	ldrb	r0, [r3, #0]
 8001100:	1dfb      	adds	r3, r7, #7
 8001102:	781b      	ldrb	r3, [r3, #0]
 8001104:	4a2e      	ldr	r2, [pc, #184]	; (80011c0 <shot_move+0x10c>)
 8001106:	009b      	lsls	r3, r3, #2
 8001108:	18d3      	adds	r3, r2, r3
 800110a:	3302      	adds	r3, #2
 800110c:	781b      	ldrb	r3, [r3, #0]
 800110e:	3b01      	subs	r3, #1
 8001110:	b2db      	uxtb	r3, r3
 8001112:	2200      	movs	r2, #0
 8001114:	0019      	movs	r1, r3
 8001116:	f001 f979 	bl	800240c <oled_set_pix>
 800111a:	1dfb      	adds	r3, r7, #7
 800111c:	781b      	ldrb	r3, [r3, #0]
 800111e:	4a28      	ldr	r2, [pc, #160]	; (80011c0 <shot_move+0x10c>)
 8001120:	009b      	lsls	r3, r3, #2
 8001122:	18d3      	adds	r3, r2, r3
 8001124:	3302      	adds	r3, #2
 8001126:	781a      	ldrb	r2, [r3, #0]
 8001128:	1dfb      	adds	r3, r7, #7
 800112a:	781b      	ldrb	r3, [r3, #0]
 800112c:	3a02      	subs	r2, #2
 800112e:	b2d1      	uxtb	r1, r2
 8001130:	4a23      	ldr	r2, [pc, #140]	; (80011c0 <shot_move+0x10c>)
 8001132:	009b      	lsls	r3, r3, #2
 8001134:	18d3      	adds	r3, r2, r3
 8001136:	3302      	adds	r3, #2
 8001138:	1c0a      	adds	r2, r1, #0
 800113a:	701a      	strb	r2, [r3, #0]
 800113c:	1dfb      	adds	r3, r7, #7
 800113e:	781b      	ldrb	r3, [r3, #0]
 8001140:	4a1f      	ldr	r2, [pc, #124]	; (80011c0 <shot_move+0x10c>)
 8001142:	009b      	lsls	r3, r3, #2
 8001144:	18d3      	adds	r3, r2, r3
 8001146:	3301      	adds	r3, #1
 8001148:	7818      	ldrb	r0, [r3, #0]
 800114a:	1dfb      	adds	r3, r7, #7
 800114c:	781b      	ldrb	r3, [r3, #0]
 800114e:	4a1c      	ldr	r2, [pc, #112]	; (80011c0 <shot_move+0x10c>)
 8001150:	009b      	lsls	r3, r3, #2
 8001152:	18d3      	adds	r3, r2, r3
 8001154:	3302      	adds	r3, #2
 8001156:	781b      	ldrb	r3, [r3, #0]
 8001158:	2201      	movs	r2, #1
 800115a:	0019      	movs	r1, r3
 800115c:	f001 f956 	bl	800240c <oled_set_pix>
 8001160:	1dfb      	adds	r3, r7, #7
 8001162:	781b      	ldrb	r3, [r3, #0]
 8001164:	4a16      	ldr	r2, [pc, #88]	; (80011c0 <shot_move+0x10c>)
 8001166:	009b      	lsls	r3, r3, #2
 8001168:	18d3      	adds	r3, r2, r3
 800116a:	3301      	adds	r3, #1
 800116c:	7818      	ldrb	r0, [r3, #0]
 800116e:	1dfb      	adds	r3, r7, #7
 8001170:	781b      	ldrb	r3, [r3, #0]
 8001172:	4a13      	ldr	r2, [pc, #76]	; (80011c0 <shot_move+0x10c>)
 8001174:	009b      	lsls	r3, r3, #2
 8001176:	18d3      	adds	r3, r2, r3
 8001178:	3302      	adds	r3, #2
 800117a:	781b      	ldrb	r3, [r3, #0]
 800117c:	3b01      	subs	r3, #1
 800117e:	b2db      	uxtb	r3, r3
 8001180:	2201      	movs	r2, #1
 8001182:	0019      	movs	r1, r3
 8001184:	f001 f942 	bl	800240c <oled_set_pix>
 8001188:	1dfb      	adds	r3, r7, #7
 800118a:	781b      	ldrb	r3, [r3, #0]
 800118c:	4a0c      	ldr	r2, [pc, #48]	; (80011c0 <shot_move+0x10c>)
 800118e:	009b      	lsls	r3, r3, #2
 8001190:	18d3      	adds	r3, r2, r3
 8001192:	3302      	adds	r3, #2
 8001194:	781b      	ldrb	r3, [r3, #0]
 8001196:	2b41      	cmp	r3, #65	; 0x41
 8001198:	d90d      	bls.n	80011b6 <shot_move+0x102>
 800119a:	1dfb      	adds	r3, r7, #7
 800119c:	781a      	ldrb	r2, [r3, #0]
 800119e:	4b08      	ldr	r3, [pc, #32]	; (80011c0 <shot_move+0x10c>)
 80011a0:	0092      	lsls	r2, r2, #2
 80011a2:	2100      	movs	r1, #0
 80011a4:	54d1      	strb	r1, [r2, r3]
 80011a6:	1dfb      	adds	r3, r7, #7
 80011a8:	781b      	ldrb	r3, [r3, #0]
 80011aa:	4a05      	ldr	r2, [pc, #20]	; (80011c0 <shot_move+0x10c>)
 80011ac:	009b      	lsls	r3, r3, #2
 80011ae:	18d3      	adds	r3, r2, r3
 80011b0:	3303      	adds	r3, #3
 80011b2:	2200      	movs	r2, #0
 80011b4:	701a      	strb	r2, [r3, #0]
 80011b6:	46c0      	nop			; (mov r8, r8)
 80011b8:	46bd      	mov	sp, r7
 80011ba:	b002      	add	sp, #8
 80011bc:	bd80      	pop	{r7, pc}
 80011be:	46c0      	nop			; (mov r8, r8)
 80011c0:	20000da4 	.word	0x20000da4

080011c4 <check_kill_x>:
 80011c4:	b580      	push	{r7, lr}
 80011c6:	b084      	sub	sp, #16
 80011c8:	af00      	add	r7, sp, #0
 80011ca:	6078      	str	r0, [r7, #4]
 80011cc:	000a      	movs	r2, r1
 80011ce:	1cfb      	adds	r3, r7, #3
 80011d0:	701a      	strb	r2, [r3, #0]
 80011d2:	230f      	movs	r3, #15
 80011d4:	18fb      	adds	r3, r7, r3
 80011d6:	687a      	ldr	r2, [r7, #4]
 80011d8:	701a      	strb	r2, [r3, #0]
 80011da:	e04b      	b.n	8001274 <check_kill_x+0xb0>
 80011dc:	1cfb      	adds	r3, r7, #3
 80011de:	781b      	ldrb	r3, [r3, #0]
 80011e0:	4a2a      	ldr	r2, [pc, #168]	; (800128c <check_kill_x+0xc8>)
 80011e2:	009b      	lsls	r3, r3, #2
 80011e4:	18d3      	adds	r3, r2, r3
 80011e6:	3301      	adds	r3, #1
 80011e8:	781b      	ldrb	r3, [r3, #0]
 80011ea:	0019      	movs	r1, r3
 80011ec:	230f      	movs	r3, #15
 80011ee:	18fb      	adds	r3, r7, r3
 80011f0:	781a      	ldrb	r2, [r3, #0]
 80011f2:	4b27      	ldr	r3, [pc, #156]	; (8001290 <check_kill_x+0xcc>)
 80011f4:	0092      	lsls	r2, r2, #2
 80011f6:	5cd3      	ldrb	r3, [r2, r3]
 80011f8:	001a      	movs	r2, r3
 80011fa:	687b      	ldr	r3, [r7, #4]
 80011fc:	2b00      	cmp	r3, #0
 80011fe:	da00      	bge.n	8001202 <check_kill_x+0x3e>
 8001200:	3307      	adds	r3, #7
 8001202:	10db      	asrs	r3, r3, #3
 8001204:	425b      	negs	r3, r3
 8001206:	18d3      	adds	r3, r2, r3
 8001208:	3302      	adds	r3, #2
 800120a:	4299      	cmp	r1, r3
 800120c:	db2c      	blt.n	8001268 <check_kill_x+0xa4>
 800120e:	1cfb      	adds	r3, r7, #3
 8001210:	781b      	ldrb	r3, [r3, #0]
 8001212:	4a1e      	ldr	r2, [pc, #120]	; (800128c <check_kill_x+0xc8>)
 8001214:	009b      	lsls	r3, r3, #2
 8001216:	18d3      	adds	r3, r2, r3
 8001218:	3301      	adds	r3, #1
 800121a:	781b      	ldrb	r3, [r3, #0]
 800121c:	0019      	movs	r1, r3
 800121e:	230f      	movs	r3, #15
 8001220:	18fb      	adds	r3, r7, r3
 8001222:	781a      	ldrb	r2, [r3, #0]
 8001224:	4b1a      	ldr	r3, [pc, #104]	; (8001290 <check_kill_x+0xcc>)
 8001226:	0092      	lsls	r2, r2, #2
 8001228:	5cd3      	ldrb	r3, [r2, r3]
 800122a:	1d9a      	adds	r2, r3, #6
 800122c:	687b      	ldr	r3, [r7, #4]
 800122e:	2b00      	cmp	r3, #0
 8001230:	da00      	bge.n	8001234 <check_kill_x+0x70>
 8001232:	3307      	adds	r3, #7
 8001234:	10db      	asrs	r3, r3, #3
 8001236:	18d3      	adds	r3, r2, r3
 8001238:	4299      	cmp	r1, r3
 800123a:	dc15      	bgt.n	8001268 <check_kill_x+0xa4>
 800123c:	230f      	movs	r3, #15
 800123e:	18fb      	adds	r3, r7, r3
 8001240:	781b      	ldrb	r3, [r3, #0]
 8001242:	4a13      	ldr	r2, [pc, #76]	; (8001290 <check_kill_x+0xcc>)
 8001244:	009b      	lsls	r3, r3, #2
 8001246:	18d3      	adds	r3, r2, r3
 8001248:	3303      	adds	r3, #3
 800124a:	781b      	ldrb	r3, [r3, #0]
 800124c:	2b00      	cmp	r3, #0
 800124e:	d00b      	beq.n	8001268 <check_kill_x+0xa4>
 8001250:	230f      	movs	r3, #15
 8001252:	18fb      	adds	r3, r7, r3
 8001254:	781b      	ldrb	r3, [r3, #0]
 8001256:	0018      	movs	r0, r3
 8001258:	f7ff fd94 	bl	8000d84 <kill_monster>
 800125c:	1cfb      	adds	r3, r7, #3
 800125e:	781a      	ldrb	r2, [r3, #0]
 8001260:	4b0a      	ldr	r3, [pc, #40]	; (800128c <check_kill_x+0xc8>)
 8001262:	0092      	lsls	r2, r2, #2
 8001264:	2100      	movs	r1, #0
 8001266:	54d1      	strb	r1, [r2, r3]
 8001268:	220f      	movs	r2, #15
 800126a:	18bb      	adds	r3, r7, r2
 800126c:	18ba      	adds	r2, r7, r2
 800126e:	7812      	ldrb	r2, [r2, #0]
 8001270:	3201      	adds	r2, #1
 8001272:	701a      	strb	r2, [r3, #0]
 8001274:	230f      	movs	r3, #15
 8001276:	18fb      	adds	r3, r7, r3
 8001278:	781a      	ldrb	r2, [r3, #0]
 800127a:	687b      	ldr	r3, [r7, #4]
 800127c:	3308      	adds	r3, #8
 800127e:	429a      	cmp	r2, r3
 8001280:	dbac      	blt.n	80011dc <check_kill_x+0x18>
 8001282:	46c0      	nop			; (mov r8, r8)
 8001284:	46bd      	mov	sp, r7
 8001286:	b004      	add	sp, #16
 8001288:	bd80      	pop	{r7, pc}
 800128a:	46c0      	nop			; (mov r8, r8)
 800128c:	20000da4 	.word	0x20000da4
 8001290:	20000530 	.word	0x20000530

08001294 <kill_check>:
 8001294:	b580      	push	{r7, lr}
 8001296:	b082      	sub	sp, #8
 8001298:	af00      	add	r7, sp, #0
 800129a:	0002      	movs	r2, r0
 800129c:	1dfb      	adds	r3, r7, #7
 800129e:	701a      	strb	r2, [r3, #0]
 80012a0:	1dfb      	adds	r3, r7, #7
 80012a2:	781a      	ldrb	r2, [r3, #0]
 80012a4:	4b34      	ldr	r3, [pc, #208]	; (8001378 <kill_check+0xe4>)
 80012a6:	0092      	lsls	r2, r2, #2
 80012a8:	5cd3      	ldrb	r3, [r2, r3]
 80012aa:	2b00      	cmp	r3, #0
 80012ac:	d060      	beq.n	8001370 <kill_check+0xdc>
 80012ae:	1dfb      	adds	r3, r7, #7
 80012b0:	781b      	ldrb	r3, [r3, #0]
 80012b2:	4a31      	ldr	r2, [pc, #196]	; (8001378 <kill_check+0xe4>)
 80012b4:	009b      	lsls	r3, r3, #2
 80012b6:	18d3      	adds	r3, r2, r3
 80012b8:	3302      	adds	r3, #2
 80012ba:	781a      	ldrb	r2, [r3, #0]
 80012bc:	4b2f      	ldr	r3, [pc, #188]	; (800137c <kill_check+0xe8>)
 80012be:	2141      	movs	r1, #65	; 0x41
 80012c0:	5c5b      	ldrb	r3, [r3, r1]
 80012c2:	429a      	cmp	r2, r3
 80012c4:	d00d      	beq.n	80012e2 <kill_check+0x4e>
 80012c6:	1dfb      	adds	r3, r7, #7
 80012c8:	781b      	ldrb	r3, [r3, #0]
 80012ca:	4a2b      	ldr	r2, [pc, #172]	; (8001378 <kill_check+0xe4>)
 80012cc:	009b      	lsls	r3, r3, #2
 80012ce:	18d3      	adds	r3, r2, r3
 80012d0:	3302      	adds	r3, #2
 80012d2:	781b      	ldrb	r3, [r3, #0]
 80012d4:	0019      	movs	r1, r3
 80012d6:	4b29      	ldr	r3, [pc, #164]	; (800137c <kill_check+0xe8>)
 80012d8:	2241      	movs	r2, #65	; 0x41
 80012da:	5c9b      	ldrb	r3, [r3, r2]
 80012dc:	3b01      	subs	r3, #1
 80012de:	4299      	cmp	r1, r3
 80012e0:	d106      	bne.n	80012f0 <kill_check+0x5c>
 80012e2:	1dfb      	adds	r3, r7, #7
 80012e4:	781b      	ldrb	r3, [r3, #0]
 80012e6:	0019      	movs	r1, r3
 80012e8:	2010      	movs	r0, #16
 80012ea:	f7ff ff6b 	bl	80011c4 <check_kill_x>
 80012ee:	e040      	b.n	8001372 <kill_check+0xde>
 80012f0:	1dfb      	adds	r3, r7, #7
 80012f2:	781b      	ldrb	r3, [r3, #0]
 80012f4:	4a20      	ldr	r2, [pc, #128]	; (8001378 <kill_check+0xe4>)
 80012f6:	009b      	lsls	r3, r3, #2
 80012f8:	18d3      	adds	r3, r2, r3
 80012fa:	3302      	adds	r3, #2
 80012fc:	781a      	ldrb	r2, [r3, #0]
 80012fe:	4b1f      	ldr	r3, [pc, #124]	; (800137c <kill_check+0xe8>)
 8001300:	2121      	movs	r1, #33	; 0x21
 8001302:	5c5b      	ldrb	r3, [r3, r1]
 8001304:	429a      	cmp	r2, r3
 8001306:	d00d      	beq.n	8001324 <kill_check+0x90>
 8001308:	1dfb      	adds	r3, r7, #7
 800130a:	781b      	ldrb	r3, [r3, #0]
 800130c:	4a1a      	ldr	r2, [pc, #104]	; (8001378 <kill_check+0xe4>)
 800130e:	009b      	lsls	r3, r3, #2
 8001310:	18d3      	adds	r3, r2, r3
 8001312:	3302      	adds	r3, #2
 8001314:	781b      	ldrb	r3, [r3, #0]
 8001316:	0019      	movs	r1, r3
 8001318:	4b18      	ldr	r3, [pc, #96]	; (800137c <kill_check+0xe8>)
 800131a:	2221      	movs	r2, #33	; 0x21
 800131c:	5c9b      	ldrb	r3, [r3, r2]
 800131e:	3b01      	subs	r3, #1
 8001320:	4299      	cmp	r1, r3
 8001322:	d106      	bne.n	8001332 <kill_check+0x9e>
 8001324:	1dfb      	adds	r3, r7, #7
 8001326:	781b      	ldrb	r3, [r3, #0]
 8001328:	0019      	movs	r1, r3
 800132a:	2008      	movs	r0, #8
 800132c:	f7ff ff4a 	bl	80011c4 <check_kill_x>
 8001330:	e01f      	b.n	8001372 <kill_check+0xde>
 8001332:	1dfb      	adds	r3, r7, #7
 8001334:	781b      	ldrb	r3, [r3, #0]
 8001336:	4a10      	ldr	r2, [pc, #64]	; (8001378 <kill_check+0xe4>)
 8001338:	009b      	lsls	r3, r3, #2
 800133a:	18d3      	adds	r3, r2, r3
 800133c:	3302      	adds	r3, #2
 800133e:	781a      	ldrb	r2, [r3, #0]
 8001340:	4b0e      	ldr	r3, [pc, #56]	; (800137c <kill_check+0xe8>)
 8001342:	785b      	ldrb	r3, [r3, #1]
 8001344:	429a      	cmp	r2, r3
 8001346:	d00c      	beq.n	8001362 <kill_check+0xce>
 8001348:	1dfb      	adds	r3, r7, #7
 800134a:	781b      	ldrb	r3, [r3, #0]
 800134c:	4a0a      	ldr	r2, [pc, #40]	; (8001378 <kill_check+0xe4>)
 800134e:	009b      	lsls	r3, r3, #2
 8001350:	18d3      	adds	r3, r2, r3
 8001352:	3302      	adds	r3, #2
 8001354:	781b      	ldrb	r3, [r3, #0]
 8001356:	001a      	movs	r2, r3
 8001358:	4b08      	ldr	r3, [pc, #32]	; (800137c <kill_check+0xe8>)
 800135a:	785b      	ldrb	r3, [r3, #1]
 800135c:	3b01      	subs	r3, #1
 800135e:	429a      	cmp	r2, r3
 8001360:	d107      	bne.n	8001372 <kill_check+0xde>
 8001362:	1dfb      	adds	r3, r7, #7
 8001364:	781b      	ldrb	r3, [r3, #0]
 8001366:	0019      	movs	r1, r3
 8001368:	2000      	movs	r0, #0
 800136a:	f7ff ff2b 	bl	80011c4 <check_kill_x>
 800136e:	e000      	b.n	8001372 <kill_check+0xde>
 8001370:	46c0      	nop			; (mov r8, r8)
 8001372:	46bd      	mov	sp, r7
 8001374:	b002      	add	sp, #8
 8001376:	bd80      	pop	{r7, pc}
 8001378:	20000da4 	.word	0x20000da4
 800137c:	20000530 	.word	0x20000530

08001380 <draw_ship>:
 8001380:	b5b0      	push	{r4, r5, r7, lr}
 8001382:	b084      	sub	sp, #16
 8001384:	af00      	add	r7, sp, #0
 8001386:	0002      	movs	r2, r0
 8001388:	1dfb      	adds	r3, r7, #7
 800138a:	701a      	strb	r2, [r3, #0]
 800138c:	1dbb      	adds	r3, r7, #6
 800138e:	1c0a      	adds	r2, r1, #0
 8001390:	701a      	strb	r2, [r3, #0]
 8001392:	1dbb      	adds	r3, r7, #6
 8001394:	781b      	ldrb	r3, [r3, #0]
 8001396:	2b00      	cmp	r3, #0
 8001398:	d02e      	beq.n	80013f8 <draw_ship+0x78>
 800139a:	230f      	movs	r3, #15
 800139c:	18fb      	adds	r3, r7, r3
 800139e:	2200      	movs	r2, #0
 80013a0:	701a      	strb	r2, [r3, #0]
 80013a2:	e023      	b.n	80013ec <draw_ship+0x6c>
 80013a4:	250f      	movs	r5, #15
 80013a6:	197b      	adds	r3, r7, r5
 80013a8:	781b      	ldrb	r3, [r3, #0]
 80013aa:	2109      	movs	r1, #9
 80013ac:	0018      	movs	r0, r3
 80013ae:	f7fe ff31 	bl	8000214 <__aeabi_uidivmod>
 80013b2:	000b      	movs	r3, r1
 80013b4:	b2da      	uxtb	r2, r3
 80013b6:	1dfb      	adds	r3, r7, #7
 80013b8:	781b      	ldrb	r3, [r3, #0]
 80013ba:	18d3      	adds	r3, r2, r3
 80013bc:	b2dc      	uxtb	r4, r3
 80013be:	197b      	adds	r3, r7, r5
 80013c0:	781b      	ldrb	r3, [r3, #0]
 80013c2:	2109      	movs	r1, #9
 80013c4:	0018      	movs	r0, r3
 80013c6:	f7fe fe9f 	bl	8000108 <__udivsi3>
 80013ca:	0003      	movs	r3, r0
 80013cc:	b2db      	uxtb	r3, r3
 80013ce:	3337      	adds	r3, #55	; 0x37
 80013d0:	b2d9      	uxtb	r1, r3
 80013d2:	197b      	adds	r3, r7, r5
 80013d4:	781b      	ldrb	r3, [r3, #0]
 80013d6:	4a20      	ldr	r2, [pc, #128]	; (8001458 <draw_ship+0xd8>)
 80013d8:	5cd3      	ldrb	r3, [r2, r3]
 80013da:	001a      	movs	r2, r3
 80013dc:	0020      	movs	r0, r4
 80013de:	f001 f815 	bl	800240c <oled_set_pix>
 80013e2:	197b      	adds	r3, r7, r5
 80013e4:	197a      	adds	r2, r7, r5
 80013e6:	7812      	ldrb	r2, [r2, #0]
 80013e8:	3201      	adds	r2, #1
 80013ea:	701a      	strb	r2, [r3, #0]
 80013ec:	230f      	movs	r3, #15
 80013ee:	18fb      	adds	r3, r7, r3
 80013f0:	781b      	ldrb	r3, [r3, #0]
 80013f2:	2b50      	cmp	r3, #80	; 0x50
 80013f4:	d9d6      	bls.n	80013a4 <draw_ship+0x24>
 80013f6:	e02a      	b.n	800144e <draw_ship+0xce>
 80013f8:	230e      	movs	r3, #14
 80013fa:	18fb      	adds	r3, r7, r3
 80013fc:	2200      	movs	r2, #0
 80013fe:	701a      	strb	r2, [r3, #0]
 8001400:	e020      	b.n	8001444 <draw_ship+0xc4>
 8001402:	250e      	movs	r5, #14
 8001404:	197b      	adds	r3, r7, r5
 8001406:	781b      	ldrb	r3, [r3, #0]
 8001408:	2109      	movs	r1, #9
 800140a:	0018      	movs	r0, r3
 800140c:	f7fe ff02 	bl	8000214 <__aeabi_uidivmod>
 8001410:	000b      	movs	r3, r1
 8001412:	b2da      	uxtb	r2, r3
 8001414:	1dfb      	adds	r3, r7, #7
 8001416:	781b      	ldrb	r3, [r3, #0]
 8001418:	18d3      	adds	r3, r2, r3
 800141a:	b2dc      	uxtb	r4, r3
 800141c:	197b      	adds	r3, r7, r5
 800141e:	781b      	ldrb	r3, [r3, #0]
 8001420:	2109      	movs	r1, #9
 8001422:	0018      	movs	r0, r3
 8001424:	f7fe fe70 	bl	8000108 <__udivsi3>
 8001428:	0003      	movs	r3, r0
 800142a:	b2db      	uxtb	r3, r3
 800142c:	3337      	adds	r3, #55	; 0x37
 800142e:	b2db      	uxtb	r3, r3
 8001430:	2200      	movs	r2, #0
 8001432:	0019      	movs	r1, r3
 8001434:	0020      	movs	r0, r4
 8001436:	f000 ffe9 	bl	800240c <oled_set_pix>
 800143a:	197b      	adds	r3, r7, r5
 800143c:	197a      	adds	r2, r7, r5
 800143e:	7812      	ldrb	r2, [r2, #0]
 8001440:	3201      	adds	r2, #1
 8001442:	701a      	strb	r2, [r3, #0]
 8001444:	230e      	movs	r3, #14
 8001446:	18fb      	adds	r3, r7, r3
 8001448:	781b      	ldrb	r3, [r3, #0]
 800144a:	2b50      	cmp	r3, #80	; 0x50
 800144c:	d9d9      	bls.n	8001402 <draw_ship+0x82>
 800144e:	46c0      	nop			; (mov r8, r8)
 8001450:	46bd      	mov	sp, r7
 8001452:	b004      	add	sp, #16
 8001454:	bdb0      	pop	{r4, r5, r7, pc}
 8001456:	46c0      	nop			; (mov r8, r8)
 8001458:	08002a24 	.word	0x08002a24

0800145c <tim_2_config>:
 800145c:	b580      	push	{r7, lr}
 800145e:	af00      	add	r7, sp, #0
 8001460:	2380      	movs	r3, #128	; 0x80
 8001462:	029b      	lsls	r3, r3, #10
 8001464:	0018      	movs	r0, r3
 8001466:	f7ff f95b 	bl	8000720 <LL_AHB1_GRP1_EnableClock>
 800146a:	2390      	movs	r3, #144	; 0x90
 800146c:	05db      	lsls	r3, r3, #23
 800146e:	2202      	movs	r2, #2
 8001470:	2120      	movs	r1, #32
 8001472:	0018      	movs	r0, r3
 8001474:	f7ff f980 	bl	8000778 <LL_GPIO_SetPinMode>
 8001478:	2390      	movs	r3, #144	; 0x90
 800147a:	05db      	lsls	r3, r3, #23
 800147c:	2202      	movs	r2, #2
 800147e:	2120      	movs	r1, #32
 8001480:	0018      	movs	r0, r3
 8001482:	f7ff f9b3 	bl	80007ec <LL_GPIO_SetAFPin_0_7>
 8001486:	2390      	movs	r3, #144	; 0x90
 8001488:	05db      	lsls	r3, r3, #23
 800148a:	2201      	movs	r2, #1
 800148c:	2120      	movs	r1, #32
 800148e:	0018      	movs	r0, r3
 8001490:	f7ff f98f 	bl	80007b2 <LL_GPIO_SetPinPull>
 8001494:	2001      	movs	r0, #1
 8001496:	f7ff f959 	bl	800074c <LL_APB1_GRP1_EnableClock>
 800149a:	4a1f      	ldr	r2, [pc, #124]	; (8001518 <tim_2_config+0xbc>)
 800149c:	2380      	movs	r3, #128	; 0x80
 800149e:	05db      	lsls	r3, r3, #23
 80014a0:	0011      	movs	r1, r2
 80014a2:	0018      	movs	r0, r3
 80014a4:	f7ff f9ee 	bl	8000884 <LL_TIM_SetAutoReload>
 80014a8:	23a0      	movs	r3, #160	; 0xa0
 80014aa:	041a      	lsls	r2, r3, #16
 80014ac:	2380      	movs	r3, #128	; 0x80
 80014ae:	05db      	lsls	r3, r3, #23
 80014b0:	2101      	movs	r1, #1
 80014b2:	0018      	movs	r0, r3
 80014b4:	f7ff fa9a 	bl	80009ec <LL_TIM_IC_SetFilter>
 80014b8:	2380      	movs	r3, #128	; 0x80
 80014ba:	05db      	lsls	r3, r3, #23
 80014bc:	2202      	movs	r2, #2
 80014be:	2101      	movs	r1, #1
 80014c0:	0018      	movs	r0, r3
 80014c2:	f7ff fadf 	bl	8000a84 <LL_TIM_IC_SetPolarity>
 80014c6:	2380      	movs	r3, #128	; 0x80
 80014c8:	025a      	lsls	r2, r3, #9
 80014ca:	2380      	movs	r3, #128	; 0x80
 80014cc:	05db      	lsls	r3, r3, #23
 80014ce:	2101      	movs	r1, #1
 80014d0:	0018      	movs	r0, r3
 80014d2:	f7ff f9f3 	bl	80008bc <LL_TIM_IC_SetActiveInput>
 80014d6:	2380      	movs	r3, #128	; 0x80
 80014d8:	05db      	lsls	r3, r3, #23
 80014da:	2200      	movs	r2, #0
 80014dc:	2101      	movs	r1, #1
 80014de:	0018      	movs	r0, r3
 80014e0:	f7ff fa38 	bl	8000954 <LL_TIM_IC_SetPrescaler>
 80014e4:	2380      	movs	r3, #128	; 0x80
 80014e6:	05db      	lsls	r3, r3, #23
 80014e8:	2101      	movs	r1, #1
 80014ea:	0018      	movs	r0, r3
 80014ec:	f7ff f9d6 	bl	800089c <LL_TIM_CC_EnableChannel>
 80014f0:	2380      	movs	r3, #128	; 0x80
 80014f2:	05db      	lsls	r3, r3, #23
 80014f4:	0018      	movs	r0, r3
 80014f6:	f7ff fb31 	bl	8000b5c <LL_TIM_EnableIT_CC1>
 80014fa:	2380      	movs	r3, #128	; 0x80
 80014fc:	05db      	lsls	r3, r3, #23
 80014fe:	0018      	movs	r0, r3
 8001500:	f7ff f9a8 	bl	8000854 <LL_TIM_EnableCounter>
 8001504:	200f      	movs	r0, #15
 8001506:	f7fe ff9f 	bl	8000448 <NVIC_EnableIRQ>
 800150a:	2101      	movs	r1, #1
 800150c:	200f      	movs	r0, #15
 800150e:	f7fe ffb1 	bl	8000474 <NVIC_SetPriority>
 8001512:	46c0      	nop			; (mov r8, r8)
 8001514:	46bd      	mov	sp, r7
 8001516:	bd80      	pop	{r7, pc}
 8001518:	77359400 	.word	0x77359400

0800151c <button_capture>:
 800151c:	b580      	push	{r7, lr}
 800151e:	b084      	sub	sp, #16
 8001520:	af00      	add	r7, sp, #0
 8001522:	6078      	str	r0, [r7, #4]
 8001524:	2380      	movs	r3, #128	; 0x80
 8001526:	05db      	lsls	r3, r3, #23
 8001528:	0018      	movs	r0, r3
 800152a:	f7ff faef 	bl	8000b0c <LL_TIM_IC_GetCaptureCH1>
 800152e:	0003      	movs	r3, r0
 8001530:	4924      	ldr	r1, [pc, #144]	; (80015c4 <button_capture+0xa8>)
 8001532:	0018      	movs	r0, r3
 8001534:	f7fe fde8 	bl	8000108 <__udivsi3>
 8001538:	0003      	movs	r3, r0
 800153a:	60fb      	str	r3, [r7, #12]
 800153c:	2380      	movs	r3, #128	; 0x80
 800153e:	05db      	lsls	r3, r3, #23
 8001540:	0018      	movs	r0, r3
 8001542:	f7ff f995 	bl	8000870 <LL_TIM_GetCounter>
 8001546:	0003      	movs	r3, r0
 8001548:	491e      	ldr	r1, [pc, #120]	; (80015c4 <button_capture+0xa8>)
 800154a:	0018      	movs	r0, r3
 800154c:	f7fe fddc 	bl	8000108 <__udivsi3>
 8001550:	0003      	movs	r3, r0
 8001552:	60fb      	str	r3, [r7, #12]
 8001554:	4b1c      	ldr	r3, [pc, #112]	; (80015c8 <button_capture+0xac>)
 8001556:	681b      	ldr	r3, [r3, #0]
 8001558:	68fa      	ldr	r2, [r7, #12]
 800155a:	1ad3      	subs	r3, r2, r3
 800155c:	60bb      	str	r3, [r7, #8]
 800155e:	68ba      	ldr	r2, [r7, #8]
 8001560:	687b      	ldr	r3, [r7, #4]
 8001562:	429a      	cmp	r2, r3
 8001564:	d929      	bls.n	80015ba <button_capture+0x9e>
 8001566:	4b18      	ldr	r3, [pc, #96]	; (80015c8 <button_capture+0xac>)
 8001568:	68fa      	ldr	r2, [r7, #12]
 800156a:	601a      	str	r2, [r3, #0]
 800156c:	4b17      	ldr	r3, [pc, #92]	; (80015cc <button_capture+0xb0>)
 800156e:	781b      	ldrb	r3, [r3, #0]
 8001570:	2b18      	cmp	r3, #24
 8001572:	d10d      	bne.n	8001590 <button_capture+0x74>
 8001574:	4b15      	ldr	r3, [pc, #84]	; (80015cc <button_capture+0xb0>)
 8001576:	2200      	movs	r2, #0
 8001578:	701a      	strb	r2, [r3, #0]
 800157a:	4b15      	ldr	r3, [pc, #84]	; (80015d0 <button_capture+0xb4>)
 800157c:	2201      	movs	r2, #1
 800157e:	701a      	strb	r2, [r3, #0]
 8001580:	2000      	movs	r0, #0
 8001582:	f000 feab 	bl	80022dc <oled_clr>
 8001586:	f000 febd 	bl	8002304 <oled_update>
 800158a:	4b12      	ldr	r3, [pc, #72]	; (80015d4 <button_capture+0xb8>)
 800158c:	2200      	movs	r2, #0
 800158e:	601a      	str	r2, [r3, #0]
 8001590:	4b11      	ldr	r3, [pc, #68]	; (80015d8 <button_capture+0xbc>)
 8001592:	781b      	ldrb	r3, [r3, #0]
 8001594:	2b00      	cmp	r3, #0
 8001596:	d010      	beq.n	80015ba <button_capture+0x9e>
 8001598:	4b0f      	ldr	r3, [pc, #60]	; (80015d8 <button_capture+0xbc>)
 800159a:	2200      	movs	r2, #0
 800159c:	701a      	strb	r2, [r3, #0]
 800159e:	4b0c      	ldr	r3, [pc, #48]	; (80015d0 <button_capture+0xb4>)
 80015a0:	2201      	movs	r2, #1
 80015a2:	701a      	strb	r2, [r3, #0]
 80015a4:	4b0d      	ldr	r3, [pc, #52]	; (80015dc <button_capture+0xc0>)
 80015a6:	2200      	movs	r2, #0
 80015a8:	701a      	strb	r2, [r3, #0]
 80015aa:	2000      	movs	r0, #0
 80015ac:	f000 fe96 	bl	80022dc <oled_clr>
 80015b0:	f000 fea8 	bl	8002304 <oled_update>
 80015b4:	4b07      	ldr	r3, [pc, #28]	; (80015d4 <button_capture+0xb8>)
 80015b6:	2200      	movs	r2, #0
 80015b8:	601a      	str	r2, [r3, #0]
 80015ba:	46c0      	nop			; (mov r8, r8)
 80015bc:	46bd      	mov	sp, r7
 80015be:	b004      	add	sp, #16
 80015c0:	bd80      	pop	{r7, pc}
 80015c2:	46c0      	nop			; (mov r8, r8)
 80015c4:	0000bb80 	.word	0x0000bb80
 80015c8:	20000598 	.word	0x20000598
 80015cc:	20000520 	.word	0x20000520
 80015d0:	20000000 	.word	0x20000000
 80015d4:	20000528 	.word	0x20000528
 80015d8:	20000521 	.word	0x20000521
 80015dc:	20000001 	.word	0x20000001

080015e0 <rcc_config>:
 80015e0:	b580      	push	{r7, lr}
 80015e2:	af00      	add	r7, sp, #0
 80015e4:	2001      	movs	r0, #1
 80015e6:	f7ff f887 	bl	80006f8 <LL_FLASH_SetLatency>
 80015ea:	f7fe ffd5 	bl	8000598 <LL_RCC_HSI_Enable>
 80015ee:	46c0      	nop			; (mov r8, r8)
 80015f0:	f7fe ffe0 	bl	80005b4 <LL_RCC_HSI_IsReady>
 80015f4:	0003      	movs	r3, r0
 80015f6:	2b01      	cmp	r3, #1
 80015f8:	d1fa      	bne.n	80015f0 <rcc_config+0x10>
 80015fa:	23a0      	movs	r3, #160	; 0xa0
 80015fc:	039b      	lsls	r3, r3, #14
 80015fe:	0019      	movs	r1, r3
 8001600:	2000      	movs	r0, #0
 8001602:	f7ff f853 	bl	80006ac <LL_RCC_PLL_ConfigDomain_SYS>
 8001606:	f7ff f82f 	bl	8000668 <LL_RCC_PLL_Enable>
 800160a:	46c0      	nop			; (mov r8, r8)
 800160c:	f7ff f83a 	bl	8000684 <LL_RCC_PLL_IsReady>
 8001610:	0003      	movs	r3, r0
 8001612:	2b01      	cmp	r3, #1
 8001614:	d1fa      	bne.n	800160c <rcc_config+0x2c>
 8001616:	2000      	movs	r0, #0
 8001618:	f7fe fffc 	bl	8000614 <LL_RCC_SetAHBPrescaler>
 800161c:	2002      	movs	r0, #2
 800161e:	f7fe ffd9 	bl	80005d4 <LL_RCC_SetSysClkSource>
 8001622:	46c0      	nop			; (mov r8, r8)
 8001624:	f7fe ffea 	bl	80005fc <LL_RCC_GetSysClkSource>
 8001628:	0003      	movs	r3, r0
 800162a:	2b08      	cmp	r3, #8
 800162c:	d1fa      	bne.n	8001624 <rcc_config+0x44>
 800162e:	2000      	movs	r0, #0
 8001630:	f7ff f804 	bl	800063c <LL_RCC_SetAPB1Prescaler>
 8001634:	4b02      	ldr	r3, [pc, #8]	; (8001640 <rcc_config+0x60>)
 8001636:	4a03      	ldr	r2, [pc, #12]	; (8001644 <rcc_config+0x64>)
 8001638:	601a      	str	r2, [r3, #0]
 800163a:	46c0      	nop			; (mov r8, r8)
 800163c:	46bd      	mov	sp, r7
 800163e:	bd80      	pop	{r7, pc}
 8001640:	200000c4 	.word	0x200000c4
 8001644:	02dc6c00 	.word	0x02dc6c00

08001648 <gpio_config>:
 8001648:	b580      	push	{r7, lr}
 800164a:	af00      	add	r7, sp, #0
 800164c:	2380      	movs	r3, #128	; 0x80
 800164e:	031b      	lsls	r3, r3, #12
 8001650:	0018      	movs	r0, r3
 8001652:	f7ff f865 	bl	8000720 <LL_AHB1_GRP1_EnableClock>
 8001656:	2380      	movs	r3, #128	; 0x80
 8001658:	005b      	lsls	r3, r3, #1
 800165a:	4807      	ldr	r0, [pc, #28]	; (8001678 <gpio_config+0x30>)
 800165c:	2201      	movs	r2, #1
 800165e:	0019      	movs	r1, r3
 8001660:	f7ff f88a 	bl	8000778 <LL_GPIO_SetPinMode>
 8001664:	2380      	movs	r3, #128	; 0x80
 8001666:	009b      	lsls	r3, r3, #2
 8001668:	4803      	ldr	r0, [pc, #12]	; (8001678 <gpio_config+0x30>)
 800166a:	2201      	movs	r2, #1
 800166c:	0019      	movs	r1, r3
 800166e:	f7ff f883 	bl	8000778 <LL_GPIO_SetPinMode>
 8001672:	46c0      	nop			; (mov r8, r8)
 8001674:	46bd      	mov	sp, r7
 8001676:	bd80      	pop	{r7, pc}
 8001678:	48000800 	.word	0x48000800

0800167c <printf_config>:
 800167c:	b580      	push	{r7, lr}
 800167e:	af00      	add	r7, sp, #0
 8001680:	4b02      	ldr	r3, [pc, #8]	; (800168c <printf_config+0x10>)
 8001682:	4a03      	ldr	r2, [pc, #12]	; (8001690 <printf_config+0x14>)
 8001684:	601a      	str	r2, [r3, #0]
 8001686:	46c0      	nop			; (mov r8, r8)
 8001688:	46bd      	mov	sp, r7
 800168a:	bd80      	pop	{r7, pc}
 800168c:	20000dc0 	.word	0x20000dc0
 8001690:	08002509 	.word	0x08002509

08001694 <systick_config>:
 8001694:	b580      	push	{r7, lr}
 8001696:	af00      	add	r7, sp, #0
 8001698:	4b07      	ldr	r3, [pc, #28]	; (80016b8 <systick_config+0x24>)
 800169a:	0018      	movs	r0, r3
 800169c:	f7fe ff58 	bl	8000550 <SysTick_Config>
 80016a0:	f7ff fa6a 	bl	8000b78 <LL_SYSTICK_EnableIT>
 80016a4:	2301      	movs	r3, #1
 80016a6:	425b      	negs	r3, r3
 80016a8:	2102      	movs	r1, #2
 80016aa:	0018      	movs	r0, r3
 80016ac:	f7fe fee2 	bl	8000474 <NVIC_SetPriority>
 80016b0:	46c0      	nop			; (mov r8, r8)
 80016b2:	46bd      	mov	sp, r7
 80016b4:	bd80      	pop	{r7, pc}
 80016b6:	46c0      	nop			; (mov r8, r8)
 80016b8:	0000bb80 	.word	0x0000bb80

080016bc <TIM2_IRQHandler>:
 80016bc:	b580      	push	{r7, lr}
 80016be:	af00      	add	r7, sp, #0
 80016c0:	2380      	movs	r3, #128	; 0x80
 80016c2:	005b      	lsls	r3, r3, #1
 80016c4:	4a10      	ldr	r2, [pc, #64]	; (8001708 <TIM2_IRQHandler+0x4c>)
 80016c6:	0019      	movs	r1, r3
 80016c8:	0010      	movs	r0, r2
 80016ca:	f7ff f8b4 	bl	8000836 <LL_GPIO_TogglePin>
 80016ce:	4b0f      	ldr	r3, [pc, #60]	; (800170c <TIM2_IRQHandler+0x50>)
 80016d0:	781b      	ldrb	r3, [r3, #0]
 80016d2:	2b00      	cmp	r3, #0
 80016d4:	d005      	beq.n	80016e2 <TIM2_IRQHandler+0x26>
 80016d6:	4b0d      	ldr	r3, [pc, #52]	; (800170c <TIM2_IRQHandler+0x50>)
 80016d8:	2200      	movs	r2, #0
 80016da:	701a      	strb	r2, [r3, #0]
 80016dc:	2000      	movs	r0, #0
 80016de:	f000 fdfd 	bl	80022dc <oled_clr>
 80016e2:	23fa      	movs	r3, #250	; 0xfa
 80016e4:	00db      	lsls	r3, r3, #3
 80016e6:	0018      	movs	r0, r3
 80016e8:	f7ff ff18 	bl	800151c <button_capture>
 80016ec:	2396      	movs	r3, #150	; 0x96
 80016ee:	005b      	lsls	r3, r3, #1
 80016f0:	0018      	movs	r0, r3
 80016f2:	f7ff fc7f 	bl	8000ff4 <shot_capture>
 80016f6:	2380      	movs	r3, #128	; 0x80
 80016f8:	05db      	lsls	r3, r3, #23
 80016fa:	0018      	movs	r0, r3
 80016fc:	f7ff fa22 	bl	8000b44 <LL_TIM_ClearFlag_CC1>
 8001700:	46c0      	nop			; (mov r8, r8)
 8001702:	46bd      	mov	sp, r7
 8001704:	bd80      	pop	{r7, pc}
 8001706:	46c0      	nop			; (mov r8, r8)
 8001708:	48000800 	.word	0x48000800
 800170c:	200000c1 	.word	0x200000c1

08001710 <SysTick_Handler>:
 8001710:	b580      	push	{r7, lr}
 8001712:	b084      	sub	sp, #16
 8001714:	af00      	add	r7, sp, #0
 8001716:	4b7c      	ldr	r3, [pc, #496]	; (8001908 <SysTick_Handler+0x1f8>)
 8001718:	781b      	ldrb	r3, [r3, #0]
 800171a:	2b00      	cmp	r3, #0
 800171c:	d041      	beq.n	80017a2 <SysTick_Handler+0x92>
 800171e:	2000      	movs	r0, #0
 8001720:	f000 fddc 	bl	80022dc <oled_clr>
 8001724:	2100      	movs	r1, #0
 8001726:	2000      	movs	r0, #0
 8001728:	f000 fed4 	bl	80024d4 <oled_set_cursor>
 800172c:	4b77      	ldr	r3, [pc, #476]	; (800190c <SysTick_Handler+0x1fc>)
 800172e:	0018      	movs	r0, r3
 8001730:	f000 fb3e 	bl	8001db0 <xprintf>
 8001734:	4b76      	ldr	r3, [pc, #472]	; (8001910 <SysTick_Handler+0x200>)
 8001736:	0018      	movs	r0, r3
 8001738:	f000 fb3a 	bl	8001db0 <xprintf>
 800173c:	4b75      	ldr	r3, [pc, #468]	; (8001914 <SysTick_Handler+0x204>)
 800173e:	0018      	movs	r0, r3
 8001740:	f000 fb36 	bl	8001db0 <xprintf>
 8001744:	4b74      	ldr	r3, [pc, #464]	; (8001918 <SysTick_Handler+0x208>)
 8001746:	0018      	movs	r0, r3
 8001748:	f000 fb32 	bl	8001db0 <xprintf>
 800174c:	f000 fdda 	bl	8002304 <oled_update>
 8001750:	2380      	movs	r3, #128	; 0x80
 8001752:	60fb      	str	r3, [r7, #12]
 8001754:	230a      	movs	r3, #10
 8001756:	425b      	negs	r3, r3
 8001758:	60bb      	str	r3, [r7, #8]
 800175a:	e01e      	b.n	800179a <SysTick_Handler+0x8a>
 800175c:	68b9      	ldr	r1, [r7, #8]
 800175e:	486f      	ldr	r0, [pc, #444]	; (800191c <SysTick_Handler+0x20c>)
 8001760:	2302      	movs	r3, #2
 8001762:	2207      	movs	r2, #7
 8001764:	f7ff faee 	bl	8000d44 <spawn_monster>
 8001768:	68bb      	ldr	r3, [r7, #8]
 800176a:	3301      	adds	r3, #1
 800176c:	60bb      	str	r3, [r7, #8]
 800176e:	68bb      	ldr	r3, [r7, #8]
 8001770:	2bc8      	cmp	r3, #200	; 0xc8
 8001772:	d102      	bne.n	800177a <SysTick_Handler+0x6a>
 8001774:	230a      	movs	r3, #10
 8001776:	425b      	negs	r3, r3
 8001778:	60bb      	str	r3, [r7, #8]
 800177a:	68f9      	ldr	r1, [r7, #12]
 800177c:	4868      	ldr	r0, [pc, #416]	; (8001920 <SysTick_Handler+0x210>)
 800177e:	2301      	movs	r3, #1
 8001780:	2222      	movs	r2, #34	; 0x22
 8001782:	f7ff fadf 	bl	8000d44 <spawn_monster>
 8001786:	68fb      	ldr	r3, [r7, #12]
 8001788:	3b01      	subs	r3, #1
 800178a:	60fb      	str	r3, [r7, #12]
 800178c:	68bb      	ldr	r3, [r7, #8]
 800178e:	3364      	adds	r3, #100	; 0x64
 8001790:	d101      	bne.n	8001796 <SysTick_Handler+0x86>
 8001792:	2380      	movs	r3, #128	; 0x80
 8001794:	60bb      	str	r3, [r7, #8]
 8001796:	f000 fdb5 	bl	8002304 <oled_update>
 800179a:	4b5b      	ldr	r3, [pc, #364]	; (8001908 <SysTick_Handler+0x1f8>)
 800179c:	781b      	ldrb	r3, [r3, #0]
 800179e:	2b00      	cmp	r3, #0
 80017a0:	d1dc      	bne.n	800175c <SysTick_Handler+0x4c>
 80017a2:	4b60      	ldr	r3, [pc, #384]	; (8001924 <SysTick_Handler+0x214>)
 80017a4:	781b      	ldrb	r3, [r3, #0]
 80017a6:	2b00      	cmp	r3, #0
 80017a8:	d01c      	beq.n	80017e4 <SysTick_Handler+0xd4>
 80017aa:	2000      	movs	r0, #0
 80017ac:	f000 fd96 	bl	80022dc <oled_clr>
 80017b0:	2100      	movs	r1, #0
 80017b2:	2000      	movs	r0, #0
 80017b4:	f000 fe8e 	bl	80024d4 <oled_set_cursor>
 80017b8:	4b5b      	ldr	r3, [pc, #364]	; (8001928 <SysTick_Handler+0x218>)
 80017ba:	0018      	movs	r0, r3
 80017bc:	f000 faf8 	bl	8001db0 <xprintf>
 80017c0:	4b54      	ldr	r3, [pc, #336]	; (8001914 <SysTick_Handler+0x204>)
 80017c2:	0018      	movs	r0, r3
 80017c4:	f000 faf4 	bl	8001db0 <xprintf>
 80017c8:	4b58      	ldr	r3, [pc, #352]	; (800192c <SysTick_Handler+0x21c>)
 80017ca:	0018      	movs	r0, r3
 80017cc:	f000 faf0 	bl	8001db0 <xprintf>
 80017d0:	f000 fd98 	bl	8002304 <oled_update>
 80017d4:	4b56      	ldr	r3, [pc, #344]	; (8001930 <SysTick_Handler+0x220>)
 80017d6:	2200      	movs	r2, #0
 80017d8:	701a      	strb	r2, [r3, #0]
 80017da:	46c0      	nop			; (mov r8, r8)
 80017dc:	4b51      	ldr	r3, [pc, #324]	; (8001924 <SysTick_Handler+0x214>)
 80017de:	781b      	ldrb	r3, [r3, #0]
 80017e0:	2b00      	cmp	r3, #0
 80017e2:	d1fb      	bne.n	80017dc <SysTick_Handler+0xcc>
 80017e4:	4b52      	ldr	r3, [pc, #328]	; (8001930 <SysTick_Handler+0x220>)
 80017e6:	781b      	ldrb	r3, [r3, #0]
 80017e8:	2b18      	cmp	r3, #24
 80017ea:	d12e      	bne.n	800184a <SysTick_Handler+0x13a>
 80017ec:	2000      	movs	r0, #0
 80017ee:	f000 fd75 	bl	80022dc <oled_clr>
 80017f2:	2100      	movs	r1, #0
 80017f4:	2000      	movs	r0, #0
 80017f6:	f000 fe6d 	bl	80024d4 <oled_set_cursor>
 80017fa:	4b4e      	ldr	r3, [pc, #312]	; (8001934 <SysTick_Handler+0x224>)
 80017fc:	781b      	ldrb	r3, [r3, #0]
 80017fe:	2b04      	cmp	r3, #4
 8001800:	d10a      	bne.n	8001818 <SysTick_Handler+0x108>
 8001802:	4b4c      	ldr	r3, [pc, #304]	; (8001934 <SysTick_Handler+0x224>)
 8001804:	2200      	movs	r2, #0
 8001806:	701a      	strb	r2, [r3, #0]
 8001808:	4b4b      	ldr	r3, [pc, #300]	; (8001938 <SysTick_Handler+0x228>)
 800180a:	2164      	movs	r1, #100	; 0x64
 800180c:	0018      	movs	r0, r3
 800180e:	f000 fef7 	bl	8002600 <oled_pic>
 8001812:	f000 fd77 	bl	8002304 <oled_update>
 8001816:	e013      	b.n	8001840 <SysTick_Handler+0x130>
 8001818:	4b48      	ldr	r3, [pc, #288]	; (800193c <SysTick_Handler+0x22c>)
 800181a:	0018      	movs	r0, r3
 800181c:	f000 fac8 	bl	8001db0 <xprintf>
 8001820:	4b3c      	ldr	r3, [pc, #240]	; (8001914 <SysTick_Handler+0x204>)
 8001822:	0018      	movs	r0, r3
 8001824:	f000 fac4 	bl	8001db0 <xprintf>
 8001828:	4b45      	ldr	r3, [pc, #276]	; (8001940 <SysTick_Handler+0x230>)
 800182a:	0018      	movs	r0, r3
 800182c:	f000 fac0 	bl	8001db0 <xprintf>
 8001830:	f000 fd68 	bl	8002304 <oled_update>
 8001834:	4b3f      	ldr	r3, [pc, #252]	; (8001934 <SysTick_Handler+0x224>)
 8001836:	781b      	ldrb	r3, [r3, #0]
 8001838:	3301      	adds	r3, #1
 800183a:	b2da      	uxtb	r2, r3
 800183c:	4b3d      	ldr	r3, [pc, #244]	; (8001934 <SysTick_Handler+0x224>)
 800183e:	701a      	strb	r2, [r3, #0]
 8001840:	46c0      	nop			; (mov r8, r8)
 8001842:	4b3b      	ldr	r3, [pc, #236]	; (8001930 <SysTick_Handler+0x220>)
 8001844:	781b      	ldrb	r3, [r3, #0]
 8001846:	2b18      	cmp	r3, #24
 8001848:	d0fb      	beq.n	8001842 <SysTick_Handler+0x132>
 800184a:	4b3e      	ldr	r3, [pc, #248]	; (8001944 <SysTick_Handler+0x234>)
 800184c:	781b      	ldrb	r3, [r3, #0]
 800184e:	2b00      	cmp	r3, #0
 8001850:	d004      	beq.n	800185c <SysTick_Handler+0x14c>
 8001852:	f7ff fb75 	bl	8000f40 <spawn_all_monsters>
 8001856:	4b3b      	ldr	r3, [pc, #236]	; (8001944 <SysTick_Handler+0x234>)
 8001858:	2200      	movs	r2, #0
 800185a:	701a      	strb	r2, [r3, #0]
 800185c:	1dfb      	adds	r3, r7, #7
 800185e:	2200      	movs	r2, #0
 8001860:	701a      	strb	r2, [r3, #0]
 8001862:	e00e      	b.n	8001882 <SysTick_Handler+0x172>
 8001864:	1dfb      	adds	r3, r7, #7
 8001866:	781b      	ldrb	r3, [r3, #0]
 8001868:	0018      	movs	r0, r3
 800186a:	f7ff fc23 	bl	80010b4 <shot_move>
 800186e:	1dfb      	adds	r3, r7, #7
 8001870:	781b      	ldrb	r3, [r3, #0]
 8001872:	0018      	movs	r0, r3
 8001874:	f7ff fd0e 	bl	8001294 <kill_check>
 8001878:	1dfb      	adds	r3, r7, #7
 800187a:	1dfa      	adds	r2, r7, #7
 800187c:	7812      	ldrb	r2, [r2, #0]
 800187e:	3201      	adds	r2, #1
 8001880:	701a      	strb	r2, [r3, #0]
 8001882:	1dfb      	adds	r3, r7, #7
 8001884:	781b      	ldrb	r3, [r3, #0]
 8001886:	2b04      	cmp	r3, #4
 8001888:	d9ec      	bls.n	8001864 <SysTick_Handler+0x154>
 800188a:	4b2f      	ldr	r3, [pc, #188]	; (8001948 <SysTick_Handler+0x238>)
 800188c:	681b      	ldr	r3, [r3, #0]
 800188e:	1c5a      	adds	r2, r3, #1
 8001890:	4b2d      	ldr	r3, [pc, #180]	; (8001948 <SysTick_Handler+0x238>)
 8001892:	601a      	str	r2, [r3, #0]
 8001894:	4b2c      	ldr	r3, [pc, #176]	; (8001948 <SysTick_Handler+0x238>)
 8001896:	681b      	ldr	r3, [r3, #0]
 8001898:	2b09      	cmp	r3, #9
 800189a:	dd19      	ble.n	80018d0 <SysTick_Handler+0x1c0>
 800189c:	2380      	movs	r3, #128	; 0x80
 800189e:	009b      	lsls	r3, r3, #2
 80018a0:	4a2a      	ldr	r2, [pc, #168]	; (800194c <SysTick_Handler+0x23c>)
 80018a2:	0019      	movs	r1, r3
 80018a4:	0010      	movs	r0, r2
 80018a6:	f7fe ffc6 	bl	8000836 <LL_GPIO_TogglePin>
 80018aa:	4b29      	ldr	r3, [pc, #164]	; (8001950 <SysTick_Handler+0x240>)
 80018ac:	6819      	ldr	r1, [r3, #0]
 80018ae:	4b1b      	ldr	r3, [pc, #108]	; (800191c <SysTick_Handler+0x20c>)
 80018b0:	2218      	movs	r2, #24
 80018b2:	0018      	movs	r0, r3
 80018b4:	f7ff fafe 	bl	8000eb4 <move_all_monster>
 80018b8:	f000 fd24 	bl	8002304 <oled_update>
 80018bc:	4b24      	ldr	r3, [pc, #144]	; (8001950 <SysTick_Handler+0x240>)
 80018be:	681b      	ldr	r3, [r3, #0]
 80018c0:	1c5a      	adds	r2, r3, #1
 80018c2:	4b23      	ldr	r3, [pc, #140]	; (8001950 <SysTick_Handler+0x240>)
 80018c4:	601a      	str	r2, [r3, #0]
 80018c6:	4b1b      	ldr	r3, [pc, #108]	; (8001934 <SysTick_Handler+0x224>)
 80018c8:	781b      	ldrb	r3, [r3, #0]
 80018ca:	005a      	lsls	r2, r3, #1
 80018cc:	4b1e      	ldr	r3, [pc, #120]	; (8001948 <SysTick_Handler+0x238>)
 80018ce:	601a      	str	r2, [r3, #0]
 80018d0:	4b20      	ldr	r3, [pc, #128]	; (8001954 <SysTick_Handler+0x244>)
 80018d2:	781b      	ldrb	r3, [r3, #0]
 80018d4:	2100      	movs	r1, #0
 80018d6:	0018      	movs	r0, r3
 80018d8:	f7ff fd52 	bl	8001380 <draw_ship>
 80018dc:	4b1e      	ldr	r3, [pc, #120]	; (8001958 <SysTick_Handler+0x248>)
 80018de:	0018      	movs	r0, r3
 80018e0:	f7fe ffc6 	bl	8000870 <LL_TIM_GetCounter>
 80018e4:	0003      	movs	r3, r0
 80018e6:	b2db      	uxtb	r3, r3
 80018e8:	18db      	adds	r3, r3, r3
 80018ea:	b2da      	uxtb	r2, r3
 80018ec:	4b19      	ldr	r3, [pc, #100]	; (8001954 <SysTick_Handler+0x244>)
 80018ee:	701a      	strb	r2, [r3, #0]
 80018f0:	4b18      	ldr	r3, [pc, #96]	; (8001954 <SysTick_Handler+0x244>)
 80018f2:	781b      	ldrb	r3, [r3, #0]
 80018f4:	2101      	movs	r1, #1
 80018f6:	0018      	movs	r0, r3
 80018f8:	f7ff fd42 	bl	8001380 <draw_ship>
 80018fc:	f000 fd02 	bl	8002304 <oled_update>
 8001900:	46c0      	nop			; (mov r8, r8)
 8001902:	46bd      	mov	sp, r7
 8001904:	b004      	add	sp, #16
 8001906:	bd80      	pop	{r7, pc}
 8001908:	200000c1 	.word	0x200000c1
 800190c:	0800295c 	.word	0x0800295c
 8001910:	08002974 	.word	0x08002974
 8001914:	0800298c 	.word	0x0800298c
 8001918:	080029a4 	.word	0x080029a4
 800191c:	20000530 	.word	0x20000530
 8001920:	20000534 	.word	0x20000534
 8001924:	20000521 	.word	0x20000521
 8001928:	080029bc 	.word	0x080029bc
 800192c:	080029d0 	.word	0x080029d0
 8001930:	20000520 	.word	0x20000520
 8001934:	20000001 	.word	0x20000001
 8001938:	08002a78 	.word	0x08002a78
 800193c:	080029e4 	.word	0x080029e4
 8001940:	080029f8 	.word	0x080029f8
 8001944:	20000000 	.word	0x20000000
 8001948:	20000524 	.word	0x20000524
 800194c:	48000800 	.word	0x48000800
 8001950:	20000528 	.word	0x20000528
 8001954:	2000052c 	.word	0x2000052c
 8001958:	40000400 	.word	0x40000400

0800195c <main>:
 800195c:	b580      	push	{r7, lr}
 800195e:	af00      	add	r7, sp, #0
 8001960:	f7ff fe3e 	bl	80015e0 <rcc_config>
 8001964:	f7ff fe70 	bl	8001648 <gpio_config>
 8001968:	f000 fcf8 	bl	800235c <oled_config>
 800196c:	f7ff fe86 	bl	800167c <printf_config>
 8001970:	f7ff fe90 	bl	8001694 <systick_config>
 8001974:	f7ff f90e 	bl	8000b94 <tim_3_config>
 8001978:	f7ff fd70 	bl	800145c <tim_2_config>
 800197c:	f7ff fb1e 	bl	8000fbc <shots_config>
 8001980:	2380      	movs	r3, #128	; 0x80
 8001982:	005b      	lsls	r3, r3, #1
 8001984:	4a02      	ldr	r2, [pc, #8]	; (8001990 <main+0x34>)
 8001986:	0019      	movs	r1, r3
 8001988:	0010      	movs	r0, r2
 800198a:	f7fe ff54 	bl	8000836 <LL_GPIO_TogglePin>
 800198e:	e7fe      	b.n	800198e <main+0x32>
 8001990:	48000800 	.word	0x48000800

08001994 <SystemInit>:
 8001994:	b580      	push	{r7, lr}
 8001996:	af00      	add	r7, sp, #0
 8001998:	4b1a      	ldr	r3, [pc, #104]	; (8001a04 <SystemInit+0x70>)
 800199a:	681a      	ldr	r2, [r3, #0]
 800199c:	4b19      	ldr	r3, [pc, #100]	; (8001a04 <SystemInit+0x70>)
 800199e:	2101      	movs	r1, #1
 80019a0:	430a      	orrs	r2, r1
 80019a2:	601a      	str	r2, [r3, #0]
 80019a4:	4b17      	ldr	r3, [pc, #92]	; (8001a04 <SystemInit+0x70>)
 80019a6:	685a      	ldr	r2, [r3, #4]
 80019a8:	4b16      	ldr	r3, [pc, #88]	; (8001a04 <SystemInit+0x70>)
 80019aa:	4917      	ldr	r1, [pc, #92]	; (8001a08 <SystemInit+0x74>)
 80019ac:	400a      	ands	r2, r1
 80019ae:	605a      	str	r2, [r3, #4]
 80019b0:	4b14      	ldr	r3, [pc, #80]	; (8001a04 <SystemInit+0x70>)
 80019b2:	681a      	ldr	r2, [r3, #0]
 80019b4:	4b13      	ldr	r3, [pc, #76]	; (8001a04 <SystemInit+0x70>)
 80019b6:	4915      	ldr	r1, [pc, #84]	; (8001a0c <SystemInit+0x78>)
 80019b8:	400a      	ands	r2, r1
 80019ba:	601a      	str	r2, [r3, #0]
 80019bc:	4b11      	ldr	r3, [pc, #68]	; (8001a04 <SystemInit+0x70>)
 80019be:	681a      	ldr	r2, [r3, #0]
 80019c0:	4b10      	ldr	r3, [pc, #64]	; (8001a04 <SystemInit+0x70>)
 80019c2:	4913      	ldr	r1, [pc, #76]	; (8001a10 <SystemInit+0x7c>)
 80019c4:	400a      	ands	r2, r1
 80019c6:	601a      	str	r2, [r3, #0]
 80019c8:	4b0e      	ldr	r3, [pc, #56]	; (8001a04 <SystemInit+0x70>)
 80019ca:	685a      	ldr	r2, [r3, #4]
 80019cc:	4b0d      	ldr	r3, [pc, #52]	; (8001a04 <SystemInit+0x70>)
 80019ce:	4911      	ldr	r1, [pc, #68]	; (8001a14 <SystemInit+0x80>)
 80019d0:	400a      	ands	r2, r1
 80019d2:	605a      	str	r2, [r3, #4]
 80019d4:	4b0b      	ldr	r3, [pc, #44]	; (8001a04 <SystemInit+0x70>)
 80019d6:	6ada      	ldr	r2, [r3, #44]	; 0x2c
 80019d8:	4b0a      	ldr	r3, [pc, #40]	; (8001a04 <SystemInit+0x70>)
 80019da:	210f      	movs	r1, #15
 80019dc:	438a      	bics	r2, r1
 80019de:	62da      	str	r2, [r3, #44]	; 0x2c
 80019e0:	4b08      	ldr	r3, [pc, #32]	; (8001a04 <SystemInit+0x70>)
 80019e2:	6b1a      	ldr	r2, [r3, #48]	; 0x30
 80019e4:	4b07      	ldr	r3, [pc, #28]	; (8001a04 <SystemInit+0x70>)
 80019e6:	490c      	ldr	r1, [pc, #48]	; (8001a18 <SystemInit+0x84>)
 80019e8:	400a      	ands	r2, r1
 80019ea:	631a      	str	r2, [r3, #48]	; 0x30
 80019ec:	4b05      	ldr	r3, [pc, #20]	; (8001a04 <SystemInit+0x70>)
 80019ee:	6b5a      	ldr	r2, [r3, #52]	; 0x34
 80019f0:	4b04      	ldr	r3, [pc, #16]	; (8001a04 <SystemInit+0x70>)
 80019f2:	2101      	movs	r1, #1
 80019f4:	438a      	bics	r2, r1
 80019f6:	635a      	str	r2, [r3, #52]	; 0x34
 80019f8:	4b02      	ldr	r3, [pc, #8]	; (8001a04 <SystemInit+0x70>)
 80019fa:	2200      	movs	r2, #0
 80019fc:	609a      	str	r2, [r3, #8]
 80019fe:	46c0      	nop			; (mov r8, r8)
 8001a00:	46bd      	mov	sp, r7
 8001a02:	bd80      	pop	{r7, pc}
 8001a04:	40021000 	.word	0x40021000
 8001a08:	f8ffb80c 	.word	0xf8ffb80c
 8001a0c:	fef6ffff 	.word	0xfef6ffff
 8001a10:	fffbffff 	.word	0xfffbffff
 8001a14:	ffc0ffff 	.word	0xffc0ffff
 8001a18:	fffffeac 	.word	0xfffffeac

08001a1c <xputc>:
 8001a1c:	b580      	push	{r7, lr}
 8001a1e:	b082      	sub	sp, #8
 8001a20:	af00      	add	r7, sp, #0
 8001a22:	0002      	movs	r2, r0
 8001a24:	1dfb      	adds	r3, r7, #7
 8001a26:	701a      	strb	r2, [r3, #0]
 8001a28:	1dfb      	adds	r3, r7, #7
 8001a2a:	781b      	ldrb	r3, [r3, #0]
 8001a2c:	2b0a      	cmp	r3, #10
 8001a2e:	d102      	bne.n	8001a36 <xputc+0x1a>
 8001a30:	200d      	movs	r0, #13
 8001a32:	f7ff fff3 	bl	8001a1c <xputc>
 8001a36:	4b0d      	ldr	r3, [pc, #52]	; (8001a6c <xputc+0x50>)
 8001a38:	681b      	ldr	r3, [r3, #0]
 8001a3a:	2b00      	cmp	r3, #0
 8001a3c:	d008      	beq.n	8001a50 <xputc+0x34>
 8001a3e:	4b0b      	ldr	r3, [pc, #44]	; (8001a6c <xputc+0x50>)
 8001a40:	681b      	ldr	r3, [r3, #0]
 8001a42:	1c59      	adds	r1, r3, #1
 8001a44:	4a09      	ldr	r2, [pc, #36]	; (8001a6c <xputc+0x50>)
 8001a46:	6011      	str	r1, [r2, #0]
 8001a48:	1dfa      	adds	r2, r7, #7
 8001a4a:	7812      	ldrb	r2, [r2, #0]
 8001a4c:	701a      	strb	r2, [r3, #0]
 8001a4e:	e009      	b.n	8001a64 <xputc+0x48>
 8001a50:	4b07      	ldr	r3, [pc, #28]	; (8001a70 <xputc+0x54>)
 8001a52:	681b      	ldr	r3, [r3, #0]
 8001a54:	2b00      	cmp	r3, #0
 8001a56:	d005      	beq.n	8001a64 <xputc+0x48>
 8001a58:	4b05      	ldr	r3, [pc, #20]	; (8001a70 <xputc+0x54>)
 8001a5a:	681b      	ldr	r3, [r3, #0]
 8001a5c:	1dfa      	adds	r2, r7, #7
 8001a5e:	7812      	ldrb	r2, [r2, #0]
 8001a60:	0010      	movs	r0, r2
 8001a62:	4798      	blx	r3
 8001a64:	46bd      	mov	sp, r7
 8001a66:	b002      	add	sp, #8
 8001a68:	bd80      	pop	{r7, pc}
 8001a6a:	46c0      	nop			; (mov r8, r8)
 8001a6c:	2000059c 	.word	0x2000059c
 8001a70:	20000dc0 	.word	0x20000dc0

08001a74 <xputs>:
 8001a74:	b580      	push	{r7, lr}
 8001a76:	b082      	sub	sp, #8
 8001a78:	af00      	add	r7, sp, #0
 8001a7a:	6078      	str	r0, [r7, #4]
 8001a7c:	e006      	b.n	8001a8c <xputs+0x18>
 8001a7e:	687b      	ldr	r3, [r7, #4]
 8001a80:	1c5a      	adds	r2, r3, #1
 8001a82:	607a      	str	r2, [r7, #4]
 8001a84:	781b      	ldrb	r3, [r3, #0]
 8001a86:	0018      	movs	r0, r3
 8001a88:	f7ff ffc8 	bl	8001a1c <xputc>
 8001a8c:	687b      	ldr	r3, [r7, #4]
 8001a8e:	781b      	ldrb	r3, [r3, #0]
 8001a90:	2b00      	cmp	r3, #0
 8001a92:	d1f4      	bne.n	8001a7e <xputs+0xa>
 8001a94:	46c0      	nop			; (mov r8, r8)
 8001a96:	46bd      	mov	sp, r7
 8001a98:	b002      	add	sp, #8
 8001a9a:	bd80      	pop	{r7, pc}

08001a9c <xvprintf>:
 8001a9c:	b590      	push	{r4, r7, lr}
 8001a9e:	b093      	sub	sp, #76	; 0x4c
 8001aa0:	af00      	add	r7, sp, #0
 8001aa2:	6078      	str	r0, [r7, #4]
 8001aa4:	6039      	str	r1, [r7, #0]
 8001aa6:	687b      	ldr	r3, [r7, #4]
 8001aa8:	1c5a      	adds	r2, r3, #1
 8001aaa:	607a      	str	r2, [r7, #4]
 8001aac:	2133      	movs	r1, #51	; 0x33
 8001aae:	187a      	adds	r2, r7, r1
 8001ab0:	781b      	ldrb	r3, [r3, #0]
 8001ab2:	7013      	strb	r3, [r2, #0]
 8001ab4:	187b      	adds	r3, r7, r1
 8001ab6:	781b      	ldrb	r3, [r3, #0]
 8001ab8:	2b00      	cmp	r3, #0
 8001aba:	d100      	bne.n	8001abe <xvprintf+0x22>
 8001abc:	e16f      	b.n	8001d9e <xvprintf+0x302>
 8001abe:	2333      	movs	r3, #51	; 0x33
 8001ac0:	18fb      	adds	r3, r7, r3
 8001ac2:	781b      	ldrb	r3, [r3, #0]
 8001ac4:	2b25      	cmp	r3, #37	; 0x25
 8001ac6:	d006      	beq.n	8001ad6 <xvprintf+0x3a>
 8001ac8:	2333      	movs	r3, #51	; 0x33
 8001aca:	18fb      	adds	r3, r7, r3
 8001acc:	781b      	ldrb	r3, [r3, #0]
 8001ace:	0018      	movs	r0, r3
 8001ad0:	f7ff ffa4 	bl	8001a1c <xputc>
 8001ad4:	e162      	b.n	8001d9c <xvprintf+0x300>
 8001ad6:	2300      	movs	r3, #0
 8001ad8:	637b      	str	r3, [r7, #52]	; 0x34
 8001ada:	687b      	ldr	r3, [r7, #4]
 8001adc:	1c5a      	adds	r2, r3, #1
 8001ade:	607a      	str	r2, [r7, #4]
 8001ae0:	2133      	movs	r1, #51	; 0x33
 8001ae2:	187a      	adds	r2, r7, r1
 8001ae4:	781b      	ldrb	r3, [r3, #0]
 8001ae6:	7013      	strb	r3, [r2, #0]
 8001ae8:	187b      	adds	r3, r7, r1
 8001aea:	781b      	ldrb	r3, [r3, #0]
 8001aec:	2b30      	cmp	r3, #48	; 0x30
 8001aee:	d109      	bne.n	8001b04 <xvprintf+0x68>
 8001af0:	2301      	movs	r3, #1
 8001af2:	637b      	str	r3, [r7, #52]	; 0x34
 8001af4:	687b      	ldr	r3, [r7, #4]
 8001af6:	1c5a      	adds	r2, r3, #1
 8001af8:	607a      	str	r2, [r7, #4]
 8001afa:	2233      	movs	r2, #51	; 0x33
 8001afc:	18ba      	adds	r2, r7, r2
 8001afe:	781b      	ldrb	r3, [r3, #0]
 8001b00:	7013      	strb	r3, [r2, #0]
 8001b02:	e00d      	b.n	8001b20 <xvprintf+0x84>
 8001b04:	2333      	movs	r3, #51	; 0x33
 8001b06:	18fb      	adds	r3, r7, r3
 8001b08:	781b      	ldrb	r3, [r3, #0]
 8001b0a:	2b2d      	cmp	r3, #45	; 0x2d
 8001b0c:	d108      	bne.n	8001b20 <xvprintf+0x84>
 8001b0e:	2302      	movs	r3, #2
 8001b10:	637b      	str	r3, [r7, #52]	; 0x34
 8001b12:	687b      	ldr	r3, [r7, #4]
 8001b14:	1c5a      	adds	r2, r3, #1
 8001b16:	607a      	str	r2, [r7, #4]
 8001b18:	2233      	movs	r2, #51	; 0x33
 8001b1a:	18ba      	adds	r2, r7, r2
 8001b1c:	781b      	ldrb	r3, [r3, #0]
 8001b1e:	7013      	strb	r3, [r2, #0]
 8001b20:	2300      	movs	r3, #0
 8001b22:	63bb      	str	r3, [r7, #56]	; 0x38
 8001b24:	e011      	b.n	8001b4a <xvprintf+0xae>
 8001b26:	6bba      	ldr	r2, [r7, #56]	; 0x38
 8001b28:	0013      	movs	r3, r2
 8001b2a:	009b      	lsls	r3, r3, #2
 8001b2c:	189b      	adds	r3, r3, r2
 8001b2e:	005b      	lsls	r3, r3, #1
 8001b30:	001a      	movs	r2, r3
 8001b32:	2133      	movs	r1, #51	; 0x33
 8001b34:	187b      	adds	r3, r7, r1
 8001b36:	781b      	ldrb	r3, [r3, #0]
 8001b38:	18d3      	adds	r3, r2, r3
 8001b3a:	3b30      	subs	r3, #48	; 0x30
 8001b3c:	63bb      	str	r3, [r7, #56]	; 0x38
 8001b3e:	687b      	ldr	r3, [r7, #4]
 8001b40:	1c5a      	adds	r2, r3, #1
 8001b42:	607a      	str	r2, [r7, #4]
 8001b44:	187a      	adds	r2, r7, r1
 8001b46:	781b      	ldrb	r3, [r3, #0]
 8001b48:	7013      	strb	r3, [r2, #0]
 8001b4a:	2333      	movs	r3, #51	; 0x33
 8001b4c:	18fb      	adds	r3, r7, r3
 8001b4e:	781b      	ldrb	r3, [r3, #0]
 8001b50:	2b2f      	cmp	r3, #47	; 0x2f
 8001b52:	d904      	bls.n	8001b5e <xvprintf+0xc2>
 8001b54:	2333      	movs	r3, #51	; 0x33
 8001b56:	18fb      	adds	r3, r7, r3
 8001b58:	781b      	ldrb	r3, [r3, #0]
 8001b5a:	2b39      	cmp	r3, #57	; 0x39
 8001b5c:	d9e3      	bls.n	8001b26 <xvprintf+0x8a>
 8001b5e:	2333      	movs	r3, #51	; 0x33
 8001b60:	18fb      	adds	r3, r7, r3
 8001b62:	781b      	ldrb	r3, [r3, #0]
 8001b64:	2b6c      	cmp	r3, #108	; 0x6c
 8001b66:	d004      	beq.n	8001b72 <xvprintf+0xd6>
 8001b68:	2333      	movs	r3, #51	; 0x33
 8001b6a:	18fb      	adds	r3, r7, r3
 8001b6c:	781b      	ldrb	r3, [r3, #0]
 8001b6e:	2b4c      	cmp	r3, #76	; 0x4c
 8001b70:	d10a      	bne.n	8001b88 <xvprintf+0xec>
 8001b72:	6b7b      	ldr	r3, [r7, #52]	; 0x34
 8001b74:	2204      	movs	r2, #4
 8001b76:	4313      	orrs	r3, r2
 8001b78:	637b      	str	r3, [r7, #52]	; 0x34
 8001b7a:	687b      	ldr	r3, [r7, #4]
 8001b7c:	1c5a      	adds	r2, r3, #1
 8001b7e:	607a      	str	r2, [r7, #4]
 8001b80:	2233      	movs	r2, #51	; 0x33
 8001b82:	18ba      	adds	r2, r7, r2
 8001b84:	781b      	ldrb	r3, [r3, #0]
 8001b86:	7013      	strb	r3, [r2, #0]
 8001b88:	2333      	movs	r3, #51	; 0x33
 8001b8a:	18fb      	adds	r3, r7, r3
 8001b8c:	781b      	ldrb	r3, [r3, #0]
 8001b8e:	2b00      	cmp	r3, #0
 8001b90:	d100      	bne.n	8001b94 <xvprintf+0xf8>
 8001b92:	e106      	b.n	8001da2 <xvprintf+0x306>
 8001b94:	2132      	movs	r1, #50	; 0x32
 8001b96:	187b      	adds	r3, r7, r1
 8001b98:	2233      	movs	r2, #51	; 0x33
 8001b9a:	18ba      	adds	r2, r7, r2
 8001b9c:	7812      	ldrb	r2, [r2, #0]
 8001b9e:	701a      	strb	r2, [r3, #0]
 8001ba0:	187b      	adds	r3, r7, r1
 8001ba2:	781b      	ldrb	r3, [r3, #0]
 8001ba4:	2b60      	cmp	r3, #96	; 0x60
 8001ba6:	d905      	bls.n	8001bb4 <xvprintf+0x118>
 8001ba8:	2232      	movs	r2, #50	; 0x32
 8001baa:	18bb      	adds	r3, r7, r2
 8001bac:	18ba      	adds	r2, r7, r2
 8001bae:	7812      	ldrb	r2, [r2, #0]
 8001bb0:	3a20      	subs	r2, #32
 8001bb2:	701a      	strb	r2, [r3, #0]
 8001bb4:	2332      	movs	r3, #50	; 0x32
 8001bb6:	18fb      	adds	r3, r7, r3
 8001bb8:	781b      	ldrb	r3, [r3, #0]
 8001bba:	3b42      	subs	r3, #66	; 0x42
 8001bbc:	2b16      	cmp	r3, #22
 8001bbe:	d847      	bhi.n	8001c50 <xvprintf+0x1b4>
 8001bc0:	009a      	lsls	r2, r3, #2
 8001bc2:	4b7a      	ldr	r3, [pc, #488]	; (8001dac <xvprintf+0x310>)
 8001bc4:	18d3      	adds	r3, r2, r3
 8001bc6:	681b      	ldr	r3, [r3, #0]
 8001bc8:	469f      	mov	pc, r3
 8001bca:	683b      	ldr	r3, [r7, #0]
 8001bcc:	1d1a      	adds	r2, r3, #4
 8001bce:	603a      	str	r2, [r7, #0]
 8001bd0:	681b      	ldr	r3, [r3, #0]
 8001bd2:	627b      	str	r3, [r7, #36]	; 0x24
 8001bd4:	2300      	movs	r3, #0
 8001bd6:	63fb      	str	r3, [r7, #60]	; 0x3c
 8001bd8:	e002      	b.n	8001be0 <xvprintf+0x144>
 8001bda:	6bfb      	ldr	r3, [r7, #60]	; 0x3c
 8001bdc:	3301      	adds	r3, #1
 8001bde:	63fb      	str	r3, [r7, #60]	; 0x3c
 8001be0:	6a7a      	ldr	r2, [r7, #36]	; 0x24
 8001be2:	6bfb      	ldr	r3, [r7, #60]	; 0x3c
 8001be4:	18d3      	adds	r3, r2, r3
 8001be6:	781b      	ldrb	r3, [r3, #0]
 8001be8:	2b00      	cmp	r3, #0
 8001bea:	d1f6      	bne.n	8001bda <xvprintf+0x13e>
 8001bec:	e002      	b.n	8001bf4 <xvprintf+0x158>
 8001bee:	2020      	movs	r0, #32
 8001bf0:	f7ff ff14 	bl	8001a1c <xputc>
 8001bf4:	6b7b      	ldr	r3, [r7, #52]	; 0x34
 8001bf6:	2202      	movs	r2, #2
 8001bf8:	4013      	ands	r3, r2
 8001bfa:	d105      	bne.n	8001c08 <xvprintf+0x16c>
 8001bfc:	6bfb      	ldr	r3, [r7, #60]	; 0x3c
 8001bfe:	1c5a      	adds	r2, r3, #1
 8001c00:	63fa      	str	r2, [r7, #60]	; 0x3c
 8001c02:	6bba      	ldr	r2, [r7, #56]	; 0x38
 8001c04:	429a      	cmp	r2, r3
 8001c06:	d8f2      	bhi.n	8001bee <xvprintf+0x152>
 8001c08:	6a7b      	ldr	r3, [r7, #36]	; 0x24
 8001c0a:	0018      	movs	r0, r3
 8001c0c:	f7ff ff32 	bl	8001a74 <xputs>
 8001c10:	e002      	b.n	8001c18 <xvprintf+0x17c>
 8001c12:	2020      	movs	r0, #32
 8001c14:	f7ff ff02 	bl	8001a1c <xputc>
 8001c18:	6bfb      	ldr	r3, [r7, #60]	; 0x3c
 8001c1a:	1c5a      	adds	r2, r3, #1
 8001c1c:	63fa      	str	r2, [r7, #60]	; 0x3c
 8001c1e:	6bba      	ldr	r2, [r7, #56]	; 0x38
 8001c20:	429a      	cmp	r2, r3
 8001c22:	d8f6      	bhi.n	8001c12 <xvprintf+0x176>
 8001c24:	e0ba      	b.n	8001d9c <xvprintf+0x300>
 8001c26:	683b      	ldr	r3, [r7, #0]
 8001c28:	1d1a      	adds	r2, r3, #4
 8001c2a:	603a      	str	r2, [r7, #0]
 8001c2c:	681b      	ldr	r3, [r3, #0]
 8001c2e:	b2db      	uxtb	r3, r3
 8001c30:	0018      	movs	r0, r3
 8001c32:	f7ff fef3 	bl	8001a1c <xputc>
 8001c36:	e0b1      	b.n	8001d9c <xvprintf+0x300>
 8001c38:	2302      	movs	r3, #2
 8001c3a:	647b      	str	r3, [r7, #68]	; 0x44
 8001c3c:	e00f      	b.n	8001c5e <xvprintf+0x1c2>
 8001c3e:	2308      	movs	r3, #8
 8001c40:	647b      	str	r3, [r7, #68]	; 0x44
 8001c42:	e00c      	b.n	8001c5e <xvprintf+0x1c2>
 8001c44:	230a      	movs	r3, #10
 8001c46:	647b      	str	r3, [r7, #68]	; 0x44
 8001c48:	e009      	b.n	8001c5e <xvprintf+0x1c2>
 8001c4a:	2310      	movs	r3, #16
 8001c4c:	647b      	str	r3, [r7, #68]	; 0x44
 8001c4e:	e006      	b.n	8001c5e <xvprintf+0x1c2>
 8001c50:	2333      	movs	r3, #51	; 0x33
 8001c52:	18fb      	adds	r3, r7, r3
 8001c54:	781b      	ldrb	r3, [r3, #0]
 8001c56:	0018      	movs	r0, r3
 8001c58:	f7ff fee0 	bl	8001a1c <xputc>
 8001c5c:	e09e      	b.n	8001d9c <xvprintf+0x300>
 8001c5e:	6b7b      	ldr	r3, [r7, #52]	; 0x34
 8001c60:	2204      	movs	r2, #4
 8001c62:	4013      	ands	r3, r2
 8001c64:	d005      	beq.n	8001c72 <xvprintf+0x1d6>
 8001c66:	683b      	ldr	r3, [r7, #0]
 8001c68:	1d1a      	adds	r2, r3, #4
 8001c6a:	603a      	str	r2, [r7, #0]
 8001c6c:	681b      	ldr	r3, [r3, #0]
 8001c6e:	62fb      	str	r3, [r7, #44]	; 0x2c
 8001c70:	e00e      	b.n	8001c90 <xvprintf+0x1f4>
 8001c72:	2332      	movs	r3, #50	; 0x32
 8001c74:	18fb      	adds	r3, r7, r3
 8001c76:	781b      	ldrb	r3, [r3, #0]
 8001c78:	2b44      	cmp	r3, #68	; 0x44
 8001c7a:	d104      	bne.n	8001c86 <xvprintf+0x1ea>
 8001c7c:	683b      	ldr	r3, [r7, #0]
 8001c7e:	1d1a      	adds	r2, r3, #4
 8001c80:	603a      	str	r2, [r7, #0]
 8001c82:	681b      	ldr	r3, [r3, #0]
 8001c84:	e003      	b.n	8001c8e <xvprintf+0x1f2>
 8001c86:	683b      	ldr	r3, [r7, #0]
 8001c88:	1d1a      	adds	r2, r3, #4
 8001c8a:	603a      	str	r2, [r7, #0]
 8001c8c:	681b      	ldr	r3, [r3, #0]
 8001c8e:	62fb      	str	r3, [r7, #44]	; 0x2c
 8001c90:	2332      	movs	r3, #50	; 0x32
 8001c92:	18fb      	adds	r3, r7, r3
 8001c94:	781b      	ldrb	r3, [r3, #0]
 8001c96:	2b44      	cmp	r3, #68	; 0x44
 8001c98:	d109      	bne.n	8001cae <xvprintf+0x212>
 8001c9a:	6afb      	ldr	r3, [r7, #44]	; 0x2c
 8001c9c:	2b00      	cmp	r3, #0
 8001c9e:	da06      	bge.n	8001cae <xvprintf+0x212>
 8001ca0:	6afb      	ldr	r3, [r7, #44]	; 0x2c
 8001ca2:	425b      	negs	r3, r3
 8001ca4:	62fb      	str	r3, [r7, #44]	; 0x2c
 8001ca6:	6b7b      	ldr	r3, [r7, #52]	; 0x34
 8001ca8:	2210      	movs	r2, #16
 8001caa:	4313      	orrs	r3, r2
 8001cac:	637b      	str	r3, [r7, #52]	; 0x34
 8001cae:	2300      	movs	r3, #0
 8001cb0:	643b      	str	r3, [r7, #64]	; 0x40
 8001cb2:	6afb      	ldr	r3, [r7, #44]	; 0x2c
 8001cb4:	62bb      	str	r3, [r7, #40]	; 0x28
 8001cb6:	6abb      	ldr	r3, [r7, #40]	; 0x28
 8001cb8:	6c79      	ldr	r1, [r7, #68]	; 0x44
 8001cba:	0018      	movs	r0, r3
 8001cbc:	f7fe faaa 	bl	8000214 <__aeabi_uidivmod>
 8001cc0:	000b      	movs	r3, r1
 8001cc2:	001a      	movs	r2, r3
 8001cc4:	2432      	movs	r4, #50	; 0x32
 8001cc6:	193b      	adds	r3, r7, r4
 8001cc8:	701a      	strb	r2, [r3, #0]
 8001cca:	6c79      	ldr	r1, [r7, #68]	; 0x44
 8001ccc:	6ab8      	ldr	r0, [r7, #40]	; 0x28
 8001cce:	f7fe fa1b 	bl	8000108 <__udivsi3>
 8001cd2:	0003      	movs	r3, r0
 8001cd4:	62bb      	str	r3, [r7, #40]	; 0x28
 8001cd6:	193b      	adds	r3, r7, r4
 8001cd8:	781b      	ldrb	r3, [r3, #0]
 8001cda:	2b09      	cmp	r3, #9
 8001cdc:	d90d      	bls.n	8001cfa <xvprintf+0x25e>
 8001cde:	2333      	movs	r3, #51	; 0x33
 8001ce0:	18fb      	adds	r3, r7, r3
 8001ce2:	781b      	ldrb	r3, [r3, #0]
 8001ce4:	2b78      	cmp	r3, #120	; 0x78
 8001ce6:	d101      	bne.n	8001cec <xvprintf+0x250>
 8001ce8:	2327      	movs	r3, #39	; 0x27
 8001cea:	e000      	b.n	8001cee <xvprintf+0x252>
 8001cec:	2307      	movs	r3, #7
 8001cee:	2132      	movs	r1, #50	; 0x32
 8001cf0:	187a      	adds	r2, r7, r1
 8001cf2:	1879      	adds	r1, r7, r1
 8001cf4:	7809      	ldrb	r1, [r1, #0]
 8001cf6:	185b      	adds	r3, r3, r1
 8001cf8:	7013      	strb	r3, [r2, #0]
 8001cfa:	6c3b      	ldr	r3, [r7, #64]	; 0x40
 8001cfc:	1c5a      	adds	r2, r3, #1
 8001cfe:	643a      	str	r2, [r7, #64]	; 0x40
 8001d00:	2232      	movs	r2, #50	; 0x32
 8001d02:	18ba      	adds	r2, r7, r2
 8001d04:	7812      	ldrb	r2, [r2, #0]
 8001d06:	3230      	adds	r2, #48	; 0x30
 8001d08:	b2d1      	uxtb	r1, r2
 8001d0a:	220c      	movs	r2, #12
 8001d0c:	18ba      	adds	r2, r7, r2
 8001d0e:	54d1      	strb	r1, [r2, r3]
 8001d10:	6abb      	ldr	r3, [r7, #40]	; 0x28
 8001d12:	2b00      	cmp	r3, #0
 8001d14:	d002      	beq.n	8001d1c <xvprintf+0x280>
 8001d16:	6c3b      	ldr	r3, [r7, #64]	; 0x40
 8001d18:	2b17      	cmp	r3, #23
 8001d1a:	d9cc      	bls.n	8001cb6 <xvprintf+0x21a>
 8001d1c:	6b7b      	ldr	r3, [r7, #52]	; 0x34
 8001d1e:	2210      	movs	r2, #16
 8001d20:	4013      	ands	r3, r2
 8001d22:	d006      	beq.n	8001d32 <xvprintf+0x296>
 8001d24:	6c3b      	ldr	r3, [r7, #64]	; 0x40
 8001d26:	1c5a      	adds	r2, r3, #1
 8001d28:	643a      	str	r2, [r7, #64]	; 0x40
 8001d2a:	220c      	movs	r2, #12
 8001d2c:	18ba      	adds	r2, r7, r2
 8001d2e:	212d      	movs	r1, #45	; 0x2d
 8001d30:	54d1      	strb	r1, [r2, r3]
 8001d32:	6c3b      	ldr	r3, [r7, #64]	; 0x40
 8001d34:	63fb      	str	r3, [r7, #60]	; 0x3c
 8001d36:	6b7b      	ldr	r3, [r7, #52]	; 0x34
 8001d38:	2201      	movs	r2, #1
 8001d3a:	4013      	ands	r3, r2
 8001d3c:	d001      	beq.n	8001d42 <xvprintf+0x2a6>
 8001d3e:	2230      	movs	r2, #48	; 0x30
 8001d40:	e000      	b.n	8001d44 <xvprintf+0x2a8>
 8001d42:	2220      	movs	r2, #32
 8001d44:	2332      	movs	r3, #50	; 0x32
 8001d46:	18fb      	adds	r3, r7, r3
 8001d48:	701a      	strb	r2, [r3, #0]
 8001d4a:	e005      	b.n	8001d58 <xvprintf+0x2bc>
 8001d4c:	2332      	movs	r3, #50	; 0x32
 8001d4e:	18fb      	adds	r3, r7, r3
 8001d50:	781b      	ldrb	r3, [r3, #0]
 8001d52:	0018      	movs	r0, r3
 8001d54:	f7ff fe62 	bl	8001a1c <xputc>
 8001d58:	6b7b      	ldr	r3, [r7, #52]	; 0x34
 8001d5a:	2202      	movs	r2, #2
 8001d5c:	4013      	ands	r3, r2
 8001d5e:	d105      	bne.n	8001d6c <xvprintf+0x2d0>
 8001d60:	6bfb      	ldr	r3, [r7, #60]	; 0x3c
 8001d62:	1c5a      	adds	r2, r3, #1
 8001d64:	63fa      	str	r2, [r7, #60]	; 0x3c
 8001d66:	6bba      	ldr	r2, [r7, #56]	; 0x38
 8001d68:	429a      	cmp	r2, r3
 8001d6a:	d8ef      	bhi.n	8001d4c <xvprintf+0x2b0>
 8001d6c:	6c3b      	ldr	r3, [r7, #64]	; 0x40
 8001d6e:	3b01      	subs	r3, #1
 8001d70:	643b      	str	r3, [r7, #64]	; 0x40
 8001d72:	230c      	movs	r3, #12
 8001d74:	18fa      	adds	r2, r7, r3
 8001d76:	6c3b      	ldr	r3, [r7, #64]	; 0x40
 8001d78:	18d3      	adds	r3, r2, r3
 8001d7a:	781b      	ldrb	r3, [r3, #0]
 8001d7c:	0018      	movs	r0, r3
 8001d7e:	f7ff fe4d 	bl	8001a1c <xputc>
 8001d82:	6c3b      	ldr	r3, [r7, #64]	; 0x40
 8001d84:	2b00      	cmp	r3, #0
 8001d86:	d1f1      	bne.n	8001d6c <xvprintf+0x2d0>
 8001d88:	e002      	b.n	8001d90 <xvprintf+0x2f4>
 8001d8a:	2020      	movs	r0, #32
 8001d8c:	f7ff fe46 	bl	8001a1c <xputc>
 8001d90:	6bfb      	ldr	r3, [r7, #60]	; 0x3c
 8001d92:	1c5a      	adds	r2, r3, #1
 8001d94:	63fa      	str	r2, [r7, #60]	; 0x3c
 8001d96:	6bba      	ldr	r2, [r7, #56]	; 0x38
 8001d98:	429a      	cmp	r2, r3
 8001d9a:	d8f6      	bhi.n	8001d8a <xvprintf+0x2ee>
 8001d9c:	e683      	b.n	8001aa6 <xvprintf+0xa>
 8001d9e:	46c0      	nop			; (mov r8, r8)
 8001da0:	e000      	b.n	8001da4 <xvprintf+0x308>
 8001da2:	46c0      	nop			; (mov r8, r8)
 8001da4:	46c0      	nop			; (mov r8, r8)
 8001da6:	46bd      	mov	sp, r7
 8001da8:	b013      	add	sp, #76	; 0x4c
 8001daa:	bd90      	pop	{r4, r7, pc}
 8001dac:	08004a78 	.word	0x08004a78

08001db0 <xprintf>:
 8001db0:	b40f      	push	{r0, r1, r2, r3}
 8001db2:	b580      	push	{r7, lr}
 8001db4:	b082      	sub	sp, #8
 8001db6:	af00      	add	r7, sp, #0
 8001db8:	2314      	movs	r3, #20
 8001dba:	18fb      	adds	r3, r7, r3
 8001dbc:	607b      	str	r3, [r7, #4]
 8001dbe:	687a      	ldr	r2, [r7, #4]
 8001dc0:	693b      	ldr	r3, [r7, #16]
 8001dc2:	0011      	movs	r1, r2
 8001dc4:	0018      	movs	r0, r3
 8001dc6:	f7ff fe69 	bl	8001a9c <xvprintf>
 8001dca:	46c0      	nop			; (mov r8, r8)
 8001dcc:	46bd      	mov	sp, r7
 8001dce:	b002      	add	sp, #8
 8001dd0:	bc80      	pop	{r7}
 8001dd2:	bc08      	pop	{r3}
 8001dd4:	b004      	add	sp, #16
 8001dd6:	4718      	bx	r3

08001dd8 <LL_AHB1_GRP1_EnableClock>:
 8001dd8:	b580      	push	{r7, lr}
 8001dda:	b084      	sub	sp, #16
 8001ddc:	af00      	add	r7, sp, #0
 8001dde:	6078      	str	r0, [r7, #4]
 8001de0:	4b07      	ldr	r3, [pc, #28]	; (8001e00 <LL_AHB1_GRP1_EnableClock+0x28>)
 8001de2:	6959      	ldr	r1, [r3, #20]
 8001de4:	4b06      	ldr	r3, [pc, #24]	; (8001e00 <LL_AHB1_GRP1_EnableClock+0x28>)
 8001de6:	687a      	ldr	r2, [r7, #4]
 8001de8:	430a      	orrs	r2, r1
 8001dea:	615a      	str	r2, [r3, #20]
 8001dec:	4b04      	ldr	r3, [pc, #16]	; (8001e00 <LL_AHB1_GRP1_EnableClock+0x28>)
 8001dee:	695b      	ldr	r3, [r3, #20]
 8001df0:	687a      	ldr	r2, [r7, #4]
 8001df2:	4013      	ands	r3, r2
 8001df4:	60fb      	str	r3, [r7, #12]
 8001df6:	68fb      	ldr	r3, [r7, #12]
 8001df8:	46c0      	nop			; (mov r8, r8)
 8001dfa:	46bd      	mov	sp, r7
 8001dfc:	b004      	add	sp, #16
 8001dfe:	bd80      	pop	{r7, pc}
 8001e00:	40021000 	.word	0x40021000

08001e04 <LL_APB1_GRP1_EnableClock>:
 8001e04:	b580      	push	{r7, lr}
 8001e06:	b084      	sub	sp, #16
 8001e08:	af00      	add	r7, sp, #0
 8001e0a:	6078      	str	r0, [r7, #4]
 8001e0c:	4b07      	ldr	r3, [pc, #28]	; (8001e2c <LL_APB1_GRP1_EnableClock+0x28>)
 8001e0e:	69d9      	ldr	r1, [r3, #28]
 8001e10:	4b06      	ldr	r3, [pc, #24]	; (8001e2c <LL_APB1_GRP1_EnableClock+0x28>)
 8001e12:	687a      	ldr	r2, [r7, #4]
 8001e14:	430a      	orrs	r2, r1
 8001e16:	61da      	str	r2, [r3, #28]
 8001e18:	4b04      	ldr	r3, [pc, #16]	; (8001e2c <LL_APB1_GRP1_EnableClock+0x28>)
 8001e1a:	69db      	ldr	r3, [r3, #28]
 8001e1c:	687a      	ldr	r2, [r7, #4]
 8001e1e:	4013      	ands	r3, r2
 8001e20:	60fb      	str	r3, [r7, #12]
 8001e22:	68fb      	ldr	r3, [r7, #12]
 8001e24:	46c0      	nop			; (mov r8, r8)
 8001e26:	46bd      	mov	sp, r7
 8001e28:	b004      	add	sp, #16
 8001e2a:	bd80      	pop	{r7, pc}
 8001e2c:	40021000 	.word	0x40021000

08001e30 <LL_GPIO_SetPinMode>:
 8001e30:	b580      	push	{r7, lr}
 8001e32:	b084      	sub	sp, #16
 8001e34:	af00      	add	r7, sp, #0
 8001e36:	60f8      	str	r0, [r7, #12]
 8001e38:	60b9      	str	r1, [r7, #8]
 8001e3a:	607a      	str	r2, [r7, #4]
 8001e3c:	68fb      	ldr	r3, [r7, #12]
 8001e3e:	6819      	ldr	r1, [r3, #0]
 8001e40:	68bb      	ldr	r3, [r7, #8]
 8001e42:	68ba      	ldr	r2, [r7, #8]
 8001e44:	435a      	muls	r2, r3
 8001e46:	0013      	movs	r3, r2
 8001e48:	005b      	lsls	r3, r3, #1
 8001e4a:	189b      	adds	r3, r3, r2
 8001e4c:	43db      	mvns	r3, r3
 8001e4e:	400b      	ands	r3, r1
 8001e50:	001a      	movs	r2, r3
 8001e52:	68bb      	ldr	r3, [r7, #8]
 8001e54:	68b9      	ldr	r1, [r7, #8]
 8001e56:	434b      	muls	r3, r1
 8001e58:	6879      	ldr	r1, [r7, #4]
 8001e5a:	434b      	muls	r3, r1
 8001e5c:	431a      	orrs	r2, r3
 8001e5e:	68fb      	ldr	r3, [r7, #12]
 8001e60:	601a      	str	r2, [r3, #0]
 8001e62:	46c0      	nop			; (mov r8, r8)
 8001e64:	46bd      	mov	sp, r7
 8001e66:	b004      	add	sp, #16
 8001e68:	bd80      	pop	{r7, pc}

08001e6a <LL_GPIO_SetPinOutputType>:
 8001e6a:	b580      	push	{r7, lr}
 8001e6c:	b084      	sub	sp, #16
 8001e6e:	af00      	add	r7, sp, #0
 8001e70:	60f8      	str	r0, [r7, #12]
 8001e72:	60b9      	str	r1, [r7, #8]
 8001e74:	607a      	str	r2, [r7, #4]
 8001e76:	68fb      	ldr	r3, [r7, #12]
 8001e78:	685b      	ldr	r3, [r3, #4]
 8001e7a:	68ba      	ldr	r2, [r7, #8]
 8001e7c:	43d2      	mvns	r2, r2
 8001e7e:	401a      	ands	r2, r3
 8001e80:	68bb      	ldr	r3, [r7, #8]
 8001e82:	6879      	ldr	r1, [r7, #4]
 8001e84:	434b      	muls	r3, r1
 8001e86:	431a      	orrs	r2, r3
 8001e88:	68fb      	ldr	r3, [r7, #12]
 8001e8a:	605a      	str	r2, [r3, #4]
 8001e8c:	46c0      	nop			; (mov r8, r8)
 8001e8e:	46bd      	mov	sp, r7
 8001e90:	b004      	add	sp, #16
 8001e92:	bd80      	pop	{r7, pc}

08001e94 <LL_GPIO_SetPinSpeed>:
 8001e94:	b580      	push	{r7, lr}
 8001e96:	b084      	sub	sp, #16
 8001e98:	af00      	add	r7, sp, #0
 8001e9a:	60f8      	str	r0, [r7, #12]
 8001e9c:	60b9      	str	r1, [r7, #8]
 8001e9e:	607a      	str	r2, [r7, #4]
 8001ea0:	68fb      	ldr	r3, [r7, #12]
 8001ea2:	6899      	ldr	r1, [r3, #8]
 8001ea4:	68bb      	ldr	r3, [r7, #8]
 8001ea6:	68ba      	ldr	r2, [r7, #8]
 8001ea8:	435a      	muls	r2, r3
 8001eaa:	0013      	movs	r3, r2
 8001eac:	005b      	lsls	r3, r3, #1
 8001eae:	189b      	adds	r3, r3, r2
 8001eb0:	43db      	mvns	r3, r3
 8001eb2:	400b      	ands	r3, r1
 8001eb4:	001a      	movs	r2, r3
 8001eb6:	68bb      	ldr	r3, [r7, #8]
 8001eb8:	68b9      	ldr	r1, [r7, #8]
 8001eba:	434b      	muls	r3, r1
 8001ebc:	6879      	ldr	r1, [r7, #4]
 8001ebe:	434b      	muls	r3, r1
 8001ec0:	431a      	orrs	r2, r3
 8001ec2:	68fb      	ldr	r3, [r7, #12]
 8001ec4:	609a      	str	r2, [r3, #8]
 8001ec6:	46c0      	nop			; (mov r8, r8)
 8001ec8:	46bd      	mov	sp, r7
 8001eca:	b004      	add	sp, #16
 8001ecc:	bd80      	pop	{r7, pc}

08001ece <LL_GPIO_SetAFPin_0_7>:
 8001ece:	b580      	push	{r7, lr}
 8001ed0:	b084      	sub	sp, #16
 8001ed2:	af00      	add	r7, sp, #0
 8001ed4:	60f8      	str	r0, [r7, #12]
 8001ed6:	60b9      	str	r1, [r7, #8]
 8001ed8:	607a      	str	r2, [r7, #4]
 8001eda:	68fb      	ldr	r3, [r7, #12]
 8001edc:	6a19      	ldr	r1, [r3, #32]
 8001ede:	68bb      	ldr	r3, [r7, #8]
 8001ee0:	68ba      	ldr	r2, [r7, #8]
 8001ee2:	4353      	muls	r3, r2
 8001ee4:	68ba      	ldr	r2, [r7, #8]
 8001ee6:	4353      	muls	r3, r2
 8001ee8:	68ba      	ldr	r2, [r7, #8]
 8001eea:	435a      	muls	r2, r3
 8001eec:	0013      	movs	r3, r2
 8001eee:	011b      	lsls	r3, r3, #4
 8001ef0:	1a9b      	subs	r3, r3, r2
 8001ef2:	43db      	mvns	r3, r3
 8001ef4:	400b      	ands	r3, r1
 8001ef6:	001a      	movs	r2, r3
 8001ef8:	68bb      	ldr	r3, [r7, #8]
 8001efa:	68b9      	ldr	r1, [r7, #8]
 8001efc:	434b      	muls	r3, r1
 8001efe:	68b9      	ldr	r1, [r7, #8]
 8001f00:	434b      	muls	r3, r1
 8001f02:	68b9      	ldr	r1, [r7, #8]
 8001f04:	434b      	muls	r3, r1
 8001f06:	6879      	ldr	r1, [r7, #4]
 8001f08:	434b      	muls	r3, r1
 8001f0a:	431a      	orrs	r2, r3
 8001f0c:	68fb      	ldr	r3, [r7, #12]
 8001f0e:	621a      	str	r2, [r3, #32]
 8001f10:	46c0      	nop			; (mov r8, r8)
 8001f12:	46bd      	mov	sp, r7
 8001f14:	b004      	add	sp, #16
 8001f16:	bd80      	pop	{r7, pc}

08001f18 <LL_RCC_SetI2CClockSource>:
 8001f18:	b580      	push	{r7, lr}
 8001f1a:	b082      	sub	sp, #8
 8001f1c:	af00      	add	r7, sp, #0
 8001f1e:	6078      	str	r0, [r7, #4]
 8001f20:	4b06      	ldr	r3, [pc, #24]	; (8001f3c <LL_RCC_SetI2CClockSource+0x24>)
 8001f22:	6b1b      	ldr	r3, [r3, #48]	; 0x30
 8001f24:	2210      	movs	r2, #16
 8001f26:	4393      	bics	r3, r2
 8001f28:	0019      	movs	r1, r3
 8001f2a:	4b04      	ldr	r3, [pc, #16]	; (8001f3c <LL_RCC_SetI2CClockSource+0x24>)
 8001f2c:	687a      	ldr	r2, [r7, #4]
 8001f2e:	430a      	orrs	r2, r1
 8001f30:	631a      	str	r2, [r3, #48]	; 0x30
 8001f32:	46c0      	nop			; (mov r8, r8)
 8001f34:	46bd      	mov	sp, r7
 8001f36:	b002      	add	sp, #8
 8001f38:	bd80      	pop	{r7, pc}
 8001f3a:	46c0      	nop			; (mov r8, r8)
 8001f3c:	40021000 	.word	0x40021000

08001f40 <LL_I2C_Enable>:
 8001f40:	b580      	push	{r7, lr}
 8001f42:	b082      	sub	sp, #8
 8001f44:	af00      	add	r7, sp, #0
 8001f46:	6078      	str	r0, [r7, #4]
 8001f48:	687b      	ldr	r3, [r7, #4]
 8001f4a:	681b      	ldr	r3, [r3, #0]
 8001f4c:	2201      	movs	r2, #1
 8001f4e:	431a      	orrs	r2, r3
 8001f50:	687b      	ldr	r3, [r7, #4]
 8001f52:	601a      	str	r2, [r3, #0]
 8001f54:	46c0      	nop			; (mov r8, r8)
 8001f56:	46bd      	mov	sp, r7
 8001f58:	b002      	add	sp, #8
 8001f5a:	bd80      	pop	{r7, pc}

08001f5c <LL_I2C_Disable>:
 8001f5c:	b580      	push	{r7, lr}
 8001f5e:	b082      	sub	sp, #8
 8001f60:	af00      	add	r7, sp, #0
 8001f62:	6078      	str	r0, [r7, #4]
 8001f64:	687b      	ldr	r3, [r7, #4]
 8001f66:	681b      	ldr	r3, [r3, #0]
 8001f68:	2201      	movs	r2, #1
 8001f6a:	4393      	bics	r3, r2
 8001f6c:	001a      	movs	r2, r3
 8001f6e:	687b      	ldr	r3, [r7, #4]
 8001f70:	601a      	str	r2, [r3, #0]
 8001f72:	46c0      	nop			; (mov r8, r8)
 8001f74:	46bd      	mov	sp, r7
 8001f76:	b002      	add	sp, #8
 8001f78:	bd80      	pop	{r7, pc}
	...

08001f7c <LL_I2C_SetDigitalFilter>:
 8001f7c:	b580      	push	{r7, lr}
 8001f7e:	b082      	sub	sp, #8
 8001f80:	af00      	add	r7, sp, #0
 8001f82:	6078      	str	r0, [r7, #4]
 8001f84:	6039      	str	r1, [r7, #0]
 8001f86:	687b      	ldr	r3, [r7, #4]
 8001f88:	681b      	ldr	r3, [r3, #0]
 8001f8a:	4a05      	ldr	r2, [pc, #20]	; (8001fa0 <LL_I2C_SetDigitalFilter+0x24>)
 8001f8c:	401a      	ands	r2, r3
 8001f8e:	683b      	ldr	r3, [r7, #0]
 8001f90:	021b      	lsls	r3, r3, #8
 8001f92:	431a      	orrs	r2, r3
 8001f94:	687b      	ldr	r3, [r7, #4]
 8001f96:	601a      	str	r2, [r3, #0]
 8001f98:	46c0      	nop			; (mov r8, r8)
 8001f9a:	46bd      	mov	sp, r7
 8001f9c:	b002      	add	sp, #8
 8001f9e:	bd80      	pop	{r7, pc}
 8001fa0:	fffff0ff 	.word	0xfffff0ff

08001fa4 <LL_I2C_DisableAnalogFilter>:
 8001fa4:	b580      	push	{r7, lr}
 8001fa6:	b082      	sub	sp, #8
 8001fa8:	af00      	add	r7, sp, #0
 8001faa:	6078      	str	r0, [r7, #4]
 8001fac:	687b      	ldr	r3, [r7, #4]
 8001fae:	681b      	ldr	r3, [r3, #0]
 8001fb0:	2280      	movs	r2, #128	; 0x80
 8001fb2:	0152      	lsls	r2, r2, #5
 8001fb4:	431a      	orrs	r2, r3
 8001fb6:	687b      	ldr	r3, [r7, #4]
 8001fb8:	601a      	str	r2, [r3, #0]
 8001fba:	46c0      	nop			; (mov r8, r8)
 8001fbc:	46bd      	mov	sp, r7
 8001fbe:	b002      	add	sp, #8
 8001fc0:	bd80      	pop	{r7, pc}

08001fc2 <LL_I2C_DisableClockStretching>:
 8001fc2:	b580      	push	{r7, lr}
 8001fc4:	b082      	sub	sp, #8
 8001fc6:	af00      	add	r7, sp, #0
 8001fc8:	6078      	str	r0, [r7, #4]
 8001fca:	687b      	ldr	r3, [r7, #4]
 8001fcc:	681b      	ldr	r3, [r3, #0]
 8001fce:	2280      	movs	r2, #128	; 0x80
 8001fd0:	0292      	lsls	r2, r2, #10
 8001fd2:	431a      	orrs	r2, r3
 8001fd4:	687b      	ldr	r3, [r7, #4]
 8001fd6:	601a      	str	r2, [r3, #0]
 8001fd8:	46c0      	nop			; (mov r8, r8)
 8001fda:	46bd      	mov	sp, r7
 8001fdc:	b002      	add	sp, #8
 8001fde:	bd80      	pop	{r7, pc}

08001fe0 <LL_I2C_SetMasterAddressingMode>:
 8001fe0:	b580      	push	{r7, lr}
 8001fe2:	b082      	sub	sp, #8
 8001fe4:	af00      	add	r7, sp, #0
 8001fe6:	6078      	str	r0, [r7, #4]
 8001fe8:	6039      	str	r1, [r7, #0]
 8001fea:	687b      	ldr	r3, [r7, #4]
 8001fec:	685b      	ldr	r3, [r3, #4]
 8001fee:	4a05      	ldr	r2, [pc, #20]	; (8002004 <LL_I2C_SetMasterAddressingMode+0x24>)
 8001ff0:	401a      	ands	r2, r3
 8001ff2:	683b      	ldr	r3, [r7, #0]
 8001ff4:	431a      	orrs	r2, r3
 8001ff6:	687b      	ldr	r3, [r7, #4]
 8001ff8:	605a      	str	r2, [r3, #4]
 8001ffa:	46c0      	nop			; (mov r8, r8)
 8001ffc:	46bd      	mov	sp, r7
 8001ffe:	b002      	add	sp, #8
 8002000:	bd80      	pop	{r7, pc}
 8002002:	46c0      	nop			; (mov r8, r8)
 8002004:	fffff7ff 	.word	0xfffff7ff

08002008 <LL_I2C_SetTiming>:
 8002008:	b580      	push	{r7, lr}
 800200a:	b082      	sub	sp, #8
 800200c:	af00      	add	r7, sp, #0
 800200e:	6078      	str	r0, [r7, #4]
 8002010:	6039      	str	r1, [r7, #0]
 8002012:	687b      	ldr	r3, [r7, #4]
 8002014:	683a      	ldr	r2, [r7, #0]
 8002016:	611a      	str	r2, [r3, #16]
 8002018:	46c0      	nop			; (mov r8, r8)
 800201a:	46bd      	mov	sp, r7
 800201c:	b002      	add	sp, #8
 800201e:	bd80      	pop	{r7, pc}

08002020 <LL_I2C_SetMode>:
 8002020:	b580      	push	{r7, lr}
 8002022:	b082      	sub	sp, #8
 8002024:	af00      	add	r7, sp, #0
 8002026:	6078      	str	r0, [r7, #4]
 8002028:	6039      	str	r1, [r7, #0]
 800202a:	687b      	ldr	r3, [r7, #4]
 800202c:	681b      	ldr	r3, [r3, #0]
 800202e:	4a05      	ldr	r2, [pc, #20]	; (8002044 <LL_I2C_SetMode+0x24>)
 8002030:	401a      	ands	r2, r3
 8002032:	683b      	ldr	r3, [r7, #0]
 8002034:	431a      	orrs	r2, r3
 8002036:	687b      	ldr	r3, [r7, #4]
 8002038:	601a      	str	r2, [r3, #0]
 800203a:	46c0      	nop			; (mov r8, r8)
 800203c:	46bd      	mov	sp, r7
 800203e:	b002      	add	sp, #8
 8002040:	bd80      	pop	{r7, pc}
 8002042:	46c0      	nop			; (mov r8, r8)
 8002044:	ffcfffff 	.word	0xffcfffff

08002048 <LL_I2C_IsActiveFlag_TXIS>:
 8002048:	b580      	push	{r7, lr}
 800204a:	b082      	sub	sp, #8
 800204c:	af00      	add	r7, sp, #0
 800204e:	6078      	str	r0, [r7, #4]
 8002050:	687b      	ldr	r3, [r7, #4]
 8002052:	699b      	ldr	r3, [r3, #24]
 8002054:	2202      	movs	r2, #2
 8002056:	4013      	ands	r3, r2
 8002058:	3b02      	subs	r3, #2
 800205a:	425a      	negs	r2, r3
 800205c:	4153      	adcs	r3, r2
 800205e:	b2db      	uxtb	r3, r3
 8002060:	0018      	movs	r0, r3
 8002062:	46bd      	mov	sp, r7
 8002064:	b002      	add	sp, #8
 8002066:	bd80      	pop	{r7, pc}

08002068 <LL_I2C_IsActiveFlag_TC>:
 8002068:	b580      	push	{r7, lr}
 800206a:	b082      	sub	sp, #8
 800206c:	af00      	add	r7, sp, #0
 800206e:	6078      	str	r0, [r7, #4]
 8002070:	687b      	ldr	r3, [r7, #4]
 8002072:	699b      	ldr	r3, [r3, #24]
 8002074:	2240      	movs	r2, #64	; 0x40
 8002076:	4013      	ands	r3, r2
 8002078:	3b40      	subs	r3, #64	; 0x40
 800207a:	425a      	negs	r2, r3
 800207c:	4153      	adcs	r3, r2
 800207e:	b2db      	uxtb	r3, r3
 8002080:	0018      	movs	r0, r3
 8002082:	46bd      	mov	sp, r7
 8002084:	b002      	add	sp, #8
 8002086:	bd80      	pop	{r7, pc}

08002088 <LL_I2C_HandleTransfer>:
 8002088:	b580      	push	{r7, lr}
 800208a:	b084      	sub	sp, #16
 800208c:	af00      	add	r7, sp, #0
 800208e:	60f8      	str	r0, [r7, #12]
 8002090:	60b9      	str	r1, [r7, #8]
 8002092:	607a      	str	r2, [r7, #4]
 8002094:	603b      	str	r3, [r7, #0]
 8002096:	68fb      	ldr	r3, [r7, #12]
 8002098:	685b      	ldr	r3, [r3, #4]
 800209a:	4a09      	ldr	r2, [pc, #36]	; (80020c0 <LL_I2C_HandleTransfer+0x38>)
 800209c:	401a      	ands	r2, r3
 800209e:	68b9      	ldr	r1, [r7, #8]
 80020a0:	687b      	ldr	r3, [r7, #4]
 80020a2:	4319      	orrs	r1, r3
 80020a4:	683b      	ldr	r3, [r7, #0]
 80020a6:	041b      	lsls	r3, r3, #16
 80020a8:	4319      	orrs	r1, r3
 80020aa:	69bb      	ldr	r3, [r7, #24]
 80020ac:	4319      	orrs	r1, r3
 80020ae:	69fb      	ldr	r3, [r7, #28]
 80020b0:	430b      	orrs	r3, r1
 80020b2:	431a      	orrs	r2, r3
 80020b4:	68fb      	ldr	r3, [r7, #12]
 80020b6:	605a      	str	r2, [r3, #4]
 80020b8:	46c0      	nop			; (mov r8, r8)
 80020ba:	46bd      	mov	sp, r7
 80020bc:	b004      	add	sp, #16
 80020be:	bd80      	pop	{r7, pc}
 80020c0:	fc008000 	.word	0xfc008000

080020c4 <LL_I2C_TransmitData8>:
 80020c4:	b580      	push	{r7, lr}
 80020c6:	b082      	sub	sp, #8
 80020c8:	af00      	add	r7, sp, #0
 80020ca:	6078      	str	r0, [r7, #4]
 80020cc:	000a      	movs	r2, r1
 80020ce:	1cfb      	adds	r3, r7, #3
 80020d0:	701a      	strb	r2, [r3, #0]
 80020d2:	1cfb      	adds	r3, r7, #3
 80020d4:	781a      	ldrb	r2, [r3, #0]
 80020d6:	687b      	ldr	r3, [r7, #4]
 80020d8:	629a      	str	r2, [r3, #40]	; 0x28
 80020da:	46c0      	nop			; (mov r8, r8)
 80020dc:	46bd      	mov	sp, r7
 80020de:	b002      	add	sp, #8
 80020e0:	bd80      	pop	{r7, pc}
	...

080020e4 <oled_hw_config>:
 80020e4:	b580      	push	{r7, lr}
 80020e6:	af00      	add	r7, sp, #0
 80020e8:	2380      	movs	r3, #128	; 0x80
 80020ea:	02db      	lsls	r3, r3, #11
 80020ec:	0018      	movs	r0, r3
 80020ee:	f7ff fe73 	bl	8001dd8 <LL_AHB1_GRP1_EnableClock>
 80020f2:	4b30      	ldr	r3, [pc, #192]	; (80021b4 <oled_hw_config+0xd0>)
 80020f4:	2202      	movs	r2, #2
 80020f6:	2140      	movs	r1, #64	; 0x40
 80020f8:	0018      	movs	r0, r3
 80020fa:	f7ff fe99 	bl	8001e30 <LL_GPIO_SetPinMode>
 80020fe:	4b2d      	ldr	r3, [pc, #180]	; (80021b4 <oled_hw_config+0xd0>)
 8002100:	2201      	movs	r2, #1
 8002102:	2140      	movs	r1, #64	; 0x40
 8002104:	0018      	movs	r0, r3
 8002106:	f7ff feb0 	bl	8001e6a <LL_GPIO_SetPinOutputType>
 800210a:	4b2a      	ldr	r3, [pc, #168]	; (80021b4 <oled_hw_config+0xd0>)
 800210c:	2201      	movs	r2, #1
 800210e:	2140      	movs	r1, #64	; 0x40
 8002110:	0018      	movs	r0, r3
 8002112:	f7ff fedc 	bl	8001ece <LL_GPIO_SetAFPin_0_7>
 8002116:	4b27      	ldr	r3, [pc, #156]	; (80021b4 <oled_hw_config+0xd0>)
 8002118:	2203      	movs	r2, #3
 800211a:	2140      	movs	r1, #64	; 0x40
 800211c:	0018      	movs	r0, r3
 800211e:	f7ff feb9 	bl	8001e94 <LL_GPIO_SetPinSpeed>
 8002122:	4b24      	ldr	r3, [pc, #144]	; (80021b4 <oled_hw_config+0xd0>)
 8002124:	2202      	movs	r2, #2
 8002126:	2180      	movs	r1, #128	; 0x80
 8002128:	0018      	movs	r0, r3
 800212a:	f7ff fe81 	bl	8001e30 <LL_GPIO_SetPinMode>
 800212e:	4b21      	ldr	r3, [pc, #132]	; (80021b4 <oled_hw_config+0xd0>)
 8002130:	2201      	movs	r2, #1
 8002132:	2180      	movs	r1, #128	; 0x80
 8002134:	0018      	movs	r0, r3
 8002136:	f7ff fe98 	bl	8001e6a <LL_GPIO_SetPinOutputType>
 800213a:	4b1e      	ldr	r3, [pc, #120]	; (80021b4 <oled_hw_config+0xd0>)
 800213c:	2201      	movs	r2, #1
 800213e:	2180      	movs	r1, #128	; 0x80
 8002140:	0018      	movs	r0, r3
 8002142:	f7ff fec4 	bl	8001ece <LL_GPIO_SetAFPin_0_7>
 8002146:	4b1b      	ldr	r3, [pc, #108]	; (80021b4 <oled_hw_config+0xd0>)
 8002148:	2203      	movs	r2, #3
 800214a:	2180      	movs	r1, #128	; 0x80
 800214c:	0018      	movs	r0, r3
 800214e:	f7ff fea1 	bl	8001e94 <LL_GPIO_SetPinSpeed>
 8002152:	2010      	movs	r0, #16
 8002154:	f7ff fee0 	bl	8001f18 <LL_RCC_SetI2CClockSource>
 8002158:	4b17      	ldr	r3, [pc, #92]	; (80021b8 <oled_hw_config+0xd4>)
 800215a:	0018      	movs	r0, r3
 800215c:	f7ff fefe 	bl	8001f5c <LL_I2C_Disable>
 8002160:	2380      	movs	r3, #128	; 0x80
 8002162:	039b      	lsls	r3, r3, #14
 8002164:	0018      	movs	r0, r3
 8002166:	f7ff fe4d 	bl	8001e04 <LL_APB1_GRP1_EnableClock>
 800216a:	4b13      	ldr	r3, [pc, #76]	; (80021b8 <oled_hw_config+0xd4>)
 800216c:	0018      	movs	r0, r3
 800216e:	f7ff ff19 	bl	8001fa4 <LL_I2C_DisableAnalogFilter>
 8002172:	4b11      	ldr	r3, [pc, #68]	; (80021b8 <oled_hw_config+0xd4>)
 8002174:	2101      	movs	r1, #1
 8002176:	0018      	movs	r0, r3
 8002178:	f7ff ff00 	bl	8001f7c <LL_I2C_SetDigitalFilter>
 800217c:	4a0f      	ldr	r2, [pc, #60]	; (80021bc <oled_hw_config+0xd8>)
 800217e:	4b0e      	ldr	r3, [pc, #56]	; (80021b8 <oled_hw_config+0xd4>)
 8002180:	0011      	movs	r1, r2
 8002182:	0018      	movs	r0, r3
 8002184:	f7ff ff40 	bl	8002008 <LL_I2C_SetTiming>
 8002188:	4b0b      	ldr	r3, [pc, #44]	; (80021b8 <oled_hw_config+0xd4>)
 800218a:	0018      	movs	r0, r3
 800218c:	f7ff ff19 	bl	8001fc2 <LL_I2C_DisableClockStretching>
 8002190:	4b09      	ldr	r3, [pc, #36]	; (80021b8 <oled_hw_config+0xd4>)
 8002192:	2100      	movs	r1, #0
 8002194:	0018      	movs	r0, r3
 8002196:	f7ff ff23 	bl	8001fe0 <LL_I2C_SetMasterAddressingMode>
 800219a:	4b07      	ldr	r3, [pc, #28]	; (80021b8 <oled_hw_config+0xd4>)
 800219c:	2100      	movs	r1, #0
 800219e:	0018      	movs	r0, r3
 80021a0:	f7ff ff3e 	bl	8002020 <LL_I2C_SetMode>
 80021a4:	4b04      	ldr	r3, [pc, #16]	; (80021b8 <oled_hw_config+0xd4>)
 80021a6:	0018      	movs	r0, r3
 80021a8:	f7ff feca 	bl	8001f40 <LL_I2C_Enable>
 80021ac:	46c0      	nop			; (mov r8, r8)
 80021ae:	46bd      	mov	sp, r7
 80021b0:	bd80      	pop	{r7, pc}
 80021b2:	46c0      	nop			; (mov r8, r8)
 80021b4:	48000400 	.word	0x48000400
 80021b8:	40005400 	.word	0x40005400
 80021bc:	50330309 	.word	0x50330309

080021c0 <oled_cmd_send>:
 80021c0:	b580      	push	{r7, lr}
 80021c2:	b084      	sub	sp, #16
 80021c4:	af02      	add	r7, sp, #8
 80021c6:	0002      	movs	r2, r0
 80021c8:	1dfb      	adds	r3, r7, #7
 80021ca:	701a      	strb	r2, [r3, #0]
 80021cc:	4818      	ldr	r0, [pc, #96]	; (8002230 <oled_cmd_send+0x70>)
 80021ce:	2380      	movs	r3, #128	; 0x80
 80021d0:	019b      	lsls	r3, r3, #6
 80021d2:	9301      	str	r3, [sp, #4]
 80021d4:	2380      	movs	r3, #128	; 0x80
 80021d6:	049b      	lsls	r3, r3, #18
 80021d8:	9300      	str	r3, [sp, #0]
 80021da:	2302      	movs	r3, #2
 80021dc:	2200      	movs	r2, #0
 80021de:	2178      	movs	r1, #120	; 0x78
 80021e0:	f7ff ff52 	bl	8002088 <LL_I2C_HandleTransfer>
 80021e4:	46c0      	nop			; (mov r8, r8)
 80021e6:	4b12      	ldr	r3, [pc, #72]	; (8002230 <oled_cmd_send+0x70>)
 80021e8:	0018      	movs	r0, r3
 80021ea:	f7ff ff2d 	bl	8002048 <LL_I2C_IsActiveFlag_TXIS>
 80021ee:	1e03      	subs	r3, r0, #0
 80021f0:	d0f9      	beq.n	80021e6 <oled_cmd_send+0x26>
 80021f2:	4b0f      	ldr	r3, [pc, #60]	; (8002230 <oled_cmd_send+0x70>)
 80021f4:	2100      	movs	r1, #0
 80021f6:	0018      	movs	r0, r3
 80021f8:	f7ff ff64 	bl	80020c4 <LL_I2C_TransmitData8>
 80021fc:	46c0      	nop			; (mov r8, r8)
 80021fe:	4b0c      	ldr	r3, [pc, #48]	; (8002230 <oled_cmd_send+0x70>)
 8002200:	0018      	movs	r0, r3
 8002202:	f7ff ff21 	bl	8002048 <LL_I2C_IsActiveFlag_TXIS>
 8002206:	1e03      	subs	r3, r0, #0
 8002208:	d0f9      	beq.n	80021fe <oled_cmd_send+0x3e>
 800220a:	1dfb      	adds	r3, r7, #7
 800220c:	781b      	ldrb	r3, [r3, #0]
 800220e:	4a08      	ldr	r2, [pc, #32]	; (8002230 <oled_cmd_send+0x70>)
 8002210:	0019      	movs	r1, r3
 8002212:	0010      	movs	r0, r2
 8002214:	f7ff ff56 	bl	80020c4 <LL_I2C_TransmitData8>
 8002218:	46c0      	nop			; (mov r8, r8)
 800221a:	4b05      	ldr	r3, [pc, #20]	; (8002230 <oled_cmd_send+0x70>)
 800221c:	0018      	movs	r0, r3
 800221e:	f7ff ff23 	bl	8002068 <LL_I2C_IsActiveFlag_TC>
 8002222:	1e03      	subs	r3, r0, #0
 8002224:	d1f9      	bne.n	800221a <oled_cmd_send+0x5a>
 8002226:	2300      	movs	r3, #0
 8002228:	0018      	movs	r0, r3
 800222a:	46bd      	mov	sp, r7
 800222c:	b002      	add	sp, #8
 800222e:	bd80      	pop	{r7, pc}
 8002230:	40005400 	.word	0x40005400

08002234 <oled_data_send>:
 8002234:	b590      	push	{r4, r7, lr}
 8002236:	b087      	sub	sp, #28
 8002238:	af02      	add	r7, sp, #8
 800223a:	6078      	str	r0, [r7, #4]
 800223c:	000a      	movs	r2, r1
 800223e:	1cfb      	adds	r3, r7, #3
 8002240:	701a      	strb	r2, [r3, #0]
 8002242:	1cfb      	adds	r3, r7, #3
 8002244:	781b      	ldrb	r3, [r3, #0]
 8002246:	3301      	adds	r3, #1
 8002248:	001a      	movs	r2, r3
 800224a:	4823      	ldr	r0, [pc, #140]	; (80022d8 <oled_data_send+0xa4>)
 800224c:	2380      	movs	r3, #128	; 0x80
 800224e:	019b      	lsls	r3, r3, #6
 8002250:	9301      	str	r3, [sp, #4]
 8002252:	2380      	movs	r3, #128	; 0x80
 8002254:	049b      	lsls	r3, r3, #18
 8002256:	9300      	str	r3, [sp, #0]
 8002258:	0013      	movs	r3, r2
 800225a:	2200      	movs	r2, #0
 800225c:	2178      	movs	r1, #120	; 0x78
 800225e:	f7ff ff13 	bl	8002088 <LL_I2C_HandleTransfer>
 8002262:	46c0      	nop			; (mov r8, r8)
 8002264:	4b1c      	ldr	r3, [pc, #112]	; (80022d8 <oled_data_send+0xa4>)
 8002266:	0018      	movs	r0, r3
 8002268:	f7ff feee 	bl	8002048 <LL_I2C_IsActiveFlag_TXIS>
 800226c:	1e03      	subs	r3, r0, #0
 800226e:	d0f9      	beq.n	8002264 <oled_data_send+0x30>
 8002270:	4b19      	ldr	r3, [pc, #100]	; (80022d8 <oled_data_send+0xa4>)
 8002272:	2140      	movs	r1, #64	; 0x40
 8002274:	0018      	movs	r0, r3
 8002276:	f7ff ff25 	bl	80020c4 <LL_I2C_TransmitData8>
 800227a:	230f      	movs	r3, #15
 800227c:	18fb      	adds	r3, r7, r3
 800227e:	2200      	movs	r2, #0
 8002280:	701a      	strb	r2, [r3, #0]
 8002282:	e016      	b.n	80022b2 <oled_data_send+0x7e>
 8002284:	46c0      	nop			; (mov r8, r8)
 8002286:	4b14      	ldr	r3, [pc, #80]	; (80022d8 <oled_data_send+0xa4>)
 8002288:	0018      	movs	r0, r3
 800228a:	f7ff fedd 	bl	8002048 <LL_I2C_IsActiveFlag_TXIS>
 800228e:	1e03      	subs	r3, r0, #0
 8002290:	d0f9      	beq.n	8002286 <oled_data_send+0x52>
 8002292:	240f      	movs	r4, #15
 8002294:	193b      	adds	r3, r7, r4
 8002296:	781b      	ldrb	r3, [r3, #0]
 8002298:	687a      	ldr	r2, [r7, #4]
 800229a:	18d3      	adds	r3, r2, r3
 800229c:	781b      	ldrb	r3, [r3, #0]
 800229e:	4a0e      	ldr	r2, [pc, #56]	; (80022d8 <oled_data_send+0xa4>)
 80022a0:	0019      	movs	r1, r3
 80022a2:	0010      	movs	r0, r2
 80022a4:	f7ff ff0e 	bl	80020c4 <LL_I2C_TransmitData8>
 80022a8:	193b      	adds	r3, r7, r4
 80022aa:	781a      	ldrb	r2, [r3, #0]
 80022ac:	193b      	adds	r3, r7, r4
 80022ae:	3201      	adds	r2, #1
 80022b0:	701a      	strb	r2, [r3, #0]
 80022b2:	230f      	movs	r3, #15
 80022b4:	18fa      	adds	r2, r7, r3
 80022b6:	1cfb      	adds	r3, r7, #3
 80022b8:	7812      	ldrb	r2, [r2, #0]
 80022ba:	781b      	ldrb	r3, [r3, #0]
 80022bc:	429a      	cmp	r2, r3
 80022be:	d3e1      	bcc.n	8002284 <oled_data_send+0x50>
 80022c0:	46c0      	nop			; (mov r8, r8)
 80022c2:	4b05      	ldr	r3, [pc, #20]	; (80022d8 <oled_data_send+0xa4>)
 80022c4:	0018      	movs	r0, r3
 80022c6:	f7ff fecf 	bl	8002068 <LL_I2C_IsActiveFlag_TC>
 80022ca:	1e03      	subs	r3, r0, #0
 80022cc:	d1f9      	bne.n	80022c2 <oled_data_send+0x8e>
 80022ce:	2300      	movs	r3, #0
 80022d0:	0018      	movs	r0, r3
 80022d2:	46bd      	mov	sp, r7
 80022d4:	b005      	add	sp, #20
 80022d6:	bd90      	pop	{r4, r7, pc}
 80022d8:	40005400 	.word	0x40005400

080022dc <oled_clr>:
 80022dc:	b580      	push	{r7, lr}
 80022de:	b082      	sub	sp, #8
 80022e0:	af00      	add	r7, sp, #0
 80022e2:	0002      	movs	r2, r0
 80022e4:	1dfb      	adds	r3, r7, #7
 80022e6:	701a      	strb	r2, [r3, #0]
 80022e8:	1dfb      	adds	r3, r7, #7
 80022ea:	7819      	ldrb	r1, [r3, #0]
 80022ec:	2380      	movs	r3, #128	; 0x80
 80022ee:	011a      	lsls	r2, r3, #4
 80022f0:	4b03      	ldr	r3, [pc, #12]	; (8002300 <oled_clr+0x24>)
 80022f2:	0018      	movs	r0, r3
 80022f4:	f000 fa2c 	bl	8002750 <memset>
 80022f8:	46c0      	nop			; (mov r8, r8)
 80022fa:	46bd      	mov	sp, r7
 80022fc:	b002      	add	sp, #8
 80022fe:	bd80      	pop	{r7, pc}
 8002300:	200005a0 	.word	0x200005a0

08002304 <oled_update>:
 8002304:	b580      	push	{r7, lr}
 8002306:	b082      	sub	sp, #8
 8002308:	af00      	add	r7, sp, #0
 800230a:	1dfb      	adds	r3, r7, #7
 800230c:	2200      	movs	r2, #0
 800230e:	701a      	strb	r2, [r3, #0]
 8002310:	e01a      	b.n	8002348 <oled_update+0x44>
 8002312:	1dfb      	adds	r3, r7, #7
 8002314:	781b      	ldrb	r3, [r3, #0]
 8002316:	3b50      	subs	r3, #80	; 0x50
 8002318:	b2db      	uxtb	r3, r3
 800231a:	0018      	movs	r0, r3
 800231c:	f7ff ff50 	bl	80021c0 <oled_cmd_send>
 8002320:	2000      	movs	r0, #0
 8002322:	f7ff ff4d 	bl	80021c0 <oled_cmd_send>
 8002326:	2010      	movs	r0, #16
 8002328:	f7ff ff4a 	bl	80021c0 <oled_cmd_send>
 800232c:	1dfb      	adds	r3, r7, #7
 800232e:	781b      	ldrb	r3, [r3, #0]
 8002330:	01da      	lsls	r2, r3, #7
 8002332:	4b09      	ldr	r3, [pc, #36]	; (8002358 <oled_update+0x54>)
 8002334:	18d3      	adds	r3, r2, r3
 8002336:	2180      	movs	r1, #128	; 0x80
 8002338:	0018      	movs	r0, r3
 800233a:	f7ff ff7b 	bl	8002234 <oled_data_send>
 800233e:	1dfb      	adds	r3, r7, #7
 8002340:	781a      	ldrb	r2, [r3, #0]
 8002342:	1dfb      	adds	r3, r7, #7
 8002344:	3201      	adds	r2, #1
 8002346:	701a      	strb	r2, [r3, #0]
 8002348:	1dfb      	adds	r3, r7, #7
 800234a:	781b      	ldrb	r3, [r3, #0]
 800234c:	2b07      	cmp	r3, #7
 800234e:	d9e0      	bls.n	8002312 <oled_update+0xe>
 8002350:	46c0      	nop			; (mov r8, r8)
 8002352:	46bd      	mov	sp, r7
 8002354:	b002      	add	sp, #8
 8002356:	bd80      	pop	{r7, pc}
 8002358:	200005a0 	.word	0x200005a0

0800235c <oled_config>:
 800235c:	b580      	push	{r7, lr}
 800235e:	b082      	sub	sp, #8
 8002360:	af00      	add	r7, sp, #0
 8002362:	4b29      	ldr	r3, [pc, #164]	; (8002408 <oled_config+0xac>)
 8002364:	607b      	str	r3, [r7, #4]
 8002366:	f7ff febd 	bl	80020e4 <oled_hw_config>
 800236a:	46c0      	nop			; (mov r8, r8)
 800236c:	687b      	ldr	r3, [r7, #4]
 800236e:	1e5a      	subs	r2, r3, #1
 8002370:	607a      	str	r2, [r7, #4]
 8002372:	2b00      	cmp	r3, #0
 8002374:	d1fa      	bne.n	800236c <oled_config+0x10>
 8002376:	20ae      	movs	r0, #174	; 0xae
 8002378:	f7ff ff22 	bl	80021c0 <oled_cmd_send>
 800237c:	2020      	movs	r0, #32
 800237e:	f7ff ff1f 	bl	80021c0 <oled_cmd_send>
 8002382:	2010      	movs	r0, #16
 8002384:	f7ff ff1c 	bl	80021c0 <oled_cmd_send>
 8002388:	20c8      	movs	r0, #200	; 0xc8
 800238a:	f7ff ff19 	bl	80021c0 <oled_cmd_send>
 800238e:	2040      	movs	r0, #64	; 0x40
 8002390:	f7ff ff16 	bl	80021c0 <oled_cmd_send>
 8002394:	2081      	movs	r0, #129	; 0x81
 8002396:	f7ff ff13 	bl	80021c0 <oled_cmd_send>
 800239a:	20ff      	movs	r0, #255	; 0xff
 800239c:	f7ff ff10 	bl	80021c0 <oled_cmd_send>
 80023a0:	20a1      	movs	r0, #161	; 0xa1
 80023a2:	f7ff ff0d 	bl	80021c0 <oled_cmd_send>
 80023a6:	20a6      	movs	r0, #166	; 0xa6
 80023a8:	f7ff ff0a 	bl	80021c0 <oled_cmd_send>
 80023ac:	20a8      	movs	r0, #168	; 0xa8
 80023ae:	f7ff ff07 	bl	80021c0 <oled_cmd_send>
 80023b2:	203f      	movs	r0, #63	; 0x3f
 80023b4:	f7ff ff04 	bl	80021c0 <oled_cmd_send>
 80023b8:	20a4      	movs	r0, #164	; 0xa4
 80023ba:	f7ff ff01 	bl	80021c0 <oled_cmd_send>
 80023be:	20d3      	movs	r0, #211	; 0xd3
 80023c0:	f7ff fefe 	bl	80021c0 <oled_cmd_send>
 80023c4:	2000      	movs	r0, #0
 80023c6:	f7ff fefb 	bl	80021c0 <oled_cmd_send>
 80023ca:	20d5      	movs	r0, #213	; 0xd5
 80023cc:	f7ff fef8 	bl	80021c0 <oled_cmd_send>
 80023d0:	20f0      	movs	r0, #240	; 0xf0
 80023d2:	f7ff fef5 	bl	80021c0 <oled_cmd_send>
 80023d6:	20da      	movs	r0, #218	; 0xda
 80023d8:	f7ff fef2 	bl	80021c0 <oled_cmd_send>
 80023dc:	2012      	movs	r0, #18
 80023de:	f7ff feef 	bl	80021c0 <oled_cmd_send>
 80023e2:	208d      	movs	r0, #141	; 0x8d
 80023e4:	f7ff feec 	bl	80021c0 <oled_cmd_send>
 80023e8:	2014      	movs	r0, #20
 80023ea:	f7ff fee9 	bl	80021c0 <oled_cmd_send>
 80023ee:	20af      	movs	r0, #175	; 0xaf
 80023f0:	f7ff fee6 	bl	80021c0 <oled_cmd_send>
 80023f4:	2000      	movs	r0, #0
 80023f6:	f7ff ff71 	bl	80022dc <oled_clr>
 80023fa:	f7ff ff83 	bl	8002304 <oled_update>
 80023fe:	46c0      	nop			; (mov r8, r8)
 8002400:	46bd      	mov	sp, r7
 8002402:	b002      	add	sp, #8
 8002404:	bd80      	pop	{r7, pc}
 8002406:	46c0      	nop			; (mov r8, r8)
 8002408:	001e8480 	.word	0x001e8480

0800240c <oled_set_pix>:
 800240c:	b590      	push	{r4, r7, lr}
 800240e:	b083      	sub	sp, #12
 8002410:	af00      	add	r7, sp, #0
 8002412:	0004      	movs	r4, r0
 8002414:	0008      	movs	r0, r1
 8002416:	0011      	movs	r1, r2
 8002418:	1dfb      	adds	r3, r7, #7
 800241a:	1c22      	adds	r2, r4, #0
 800241c:	701a      	strb	r2, [r3, #0]
 800241e:	1dbb      	adds	r3, r7, #6
 8002420:	1c02      	adds	r2, r0, #0
 8002422:	701a      	strb	r2, [r3, #0]
 8002424:	1d7b      	adds	r3, r7, #5
 8002426:	1c0a      	adds	r2, r1, #0
 8002428:	701a      	strb	r2, [r3, #0]
 800242a:	1dfb      	adds	r3, r7, #7
 800242c:	781b      	ldrb	r3, [r3, #0]
 800242e:	b25b      	sxtb	r3, r3
 8002430:	2b00      	cmp	r3, #0
 8002432:	db48      	blt.n	80024c6 <oled_set_pix+0xba>
 8002434:	1dbb      	adds	r3, r7, #6
 8002436:	781b      	ldrb	r3, [r3, #0]
 8002438:	2b3f      	cmp	r3, #63	; 0x3f
 800243a:	d844      	bhi.n	80024c6 <oled_set_pix+0xba>
 800243c:	1d7b      	adds	r3, r7, #5
 800243e:	781b      	ldrb	r3, [r3, #0]
 8002440:	2b00      	cmp	r3, #0
 8002442:	d01e      	beq.n	8002482 <oled_set_pix+0x76>
 8002444:	1dbb      	adds	r3, r7, #6
 8002446:	781b      	ldrb	r3, [r3, #0]
 8002448:	08db      	lsrs	r3, r3, #3
 800244a:	b2d8      	uxtb	r0, r3
 800244c:	0003      	movs	r3, r0
 800244e:	01da      	lsls	r2, r3, #7
 8002450:	1dfb      	adds	r3, r7, #7
 8002452:	781b      	ldrb	r3, [r3, #0]
 8002454:	18d3      	adds	r3, r2, r3
 8002456:	4a1e      	ldr	r2, [pc, #120]	; (80024d0 <oled_set_pix+0xc4>)
 8002458:	5cd3      	ldrb	r3, [r2, r3]
 800245a:	b25a      	sxtb	r2, r3
 800245c:	1dbb      	adds	r3, r7, #6
 800245e:	781b      	ldrb	r3, [r3, #0]
 8002460:	2107      	movs	r1, #7
 8002462:	400b      	ands	r3, r1
 8002464:	2101      	movs	r1, #1
 8002466:	4099      	lsls	r1, r3
 8002468:	000b      	movs	r3, r1
 800246a:	b25b      	sxtb	r3, r3
 800246c:	4313      	orrs	r3, r2
 800246e:	b259      	sxtb	r1, r3
 8002470:	0003      	movs	r3, r0
 8002472:	01da      	lsls	r2, r3, #7
 8002474:	1dfb      	adds	r3, r7, #7
 8002476:	781b      	ldrb	r3, [r3, #0]
 8002478:	18d3      	adds	r3, r2, r3
 800247a:	b2c9      	uxtb	r1, r1
 800247c:	4a14      	ldr	r2, [pc, #80]	; (80024d0 <oled_set_pix+0xc4>)
 800247e:	54d1      	strb	r1, [r2, r3]
 8002480:	e022      	b.n	80024c8 <oled_set_pix+0xbc>
 8002482:	1dbb      	adds	r3, r7, #6
 8002484:	781b      	ldrb	r3, [r3, #0]
 8002486:	08db      	lsrs	r3, r3, #3
 8002488:	b2d8      	uxtb	r0, r3
 800248a:	0003      	movs	r3, r0
 800248c:	01da      	lsls	r2, r3, #7
 800248e:	1dfb      	adds	r3, r7, #7
 8002490:	781b      	ldrb	r3, [r3, #0]
 8002492:	18d3      	adds	r3, r2, r3
 8002494:	4a0e      	ldr	r2, [pc, #56]	; (80024d0 <oled_set_pix+0xc4>)
 8002496:	5cd3      	ldrb	r3, [r2, r3]
 8002498:	b25b      	sxtb	r3, r3
 800249a:	1dba      	adds	r2, r7, #6
 800249c:	7812      	ldrb	r2, [r2, #0]
 800249e:	2107      	movs	r1, #7
 80024a0:	400a      	ands	r2, r1
 80024a2:	2101      	movs	r1, #1
 80024a4:	4091      	lsls	r1, r2
 80024a6:	000a      	movs	r2, r1
 80024a8:	b252      	sxtb	r2, r2
 80024aa:	43d2      	mvns	r2, r2
 80024ac:	b252      	sxtb	r2, r2
 80024ae:	4013      	ands	r3, r2
 80024b0:	b259      	sxtb	r1, r3
 80024b2:	0003      	movs	r3, r0
 80024b4:	01da      	lsls	r2, r3, #7
 80024b6:	1dfb      	adds	r3, r7, #7
 80024b8:	781b      	ldrb	r3, [r3, #0]
 80024ba:	18d3      	adds	r3, r2, r3
 80024bc:	b2c9      	uxtb	r1, r1
 80024be:	4a04      	ldr	r2, [pc, #16]	; (80024d0 <oled_set_pix+0xc4>)
 80024c0:	54d1      	strb	r1, [r2, r3]
 80024c2:	46c0      	nop			; (mov r8, r8)
 80024c4:	e000      	b.n	80024c8 <oled_set_pix+0xbc>
 80024c6:	46c0      	nop			; (mov r8, r8)
 80024c8:	46bd      	mov	sp, r7
 80024ca:	b003      	add	sp, #12
 80024cc:	bd90      	pop	{r4, r7, pc}
 80024ce:	46c0      	nop			; (mov r8, r8)
 80024d0:	200005a0 	.word	0x200005a0

080024d4 <oled_set_cursor>:
 80024d4:	b580      	push	{r7, lr}
 80024d6:	b082      	sub	sp, #8
 80024d8:	af00      	add	r7, sp, #0
 80024da:	0002      	movs	r2, r0
 80024dc:	1dfb      	adds	r3, r7, #7
 80024de:	701a      	strb	r2, [r3, #0]
 80024e0:	1dbb      	adds	r3, r7, #6
 80024e2:	1c0a      	adds	r2, r1, #0
 80024e4:	701a      	strb	r2, [r3, #0]
 80024e6:	4b06      	ldr	r3, [pc, #24]	; (8002500 <oled_set_cursor+0x2c>)
 80024e8:	1dfa      	adds	r2, r7, #7
 80024ea:	7812      	ldrb	r2, [r2, #0]
 80024ec:	701a      	strb	r2, [r3, #0]
 80024ee:	4b05      	ldr	r3, [pc, #20]	; (8002504 <oled_set_cursor+0x30>)
 80024f0:	1dba      	adds	r2, r7, #6
 80024f2:	7812      	ldrb	r2, [r2, #0]
 80024f4:	701a      	strb	r2, [r3, #0]
 80024f6:	46c0      	nop			; (mov r8, r8)
 80024f8:	46bd      	mov	sp, r7
 80024fa:	b002      	add	sp, #8
 80024fc:	bd80      	pop	{r7, pc}
 80024fe:	46c0      	nop			; (mov r8, r8)
 8002500:	20000da0 	.word	0x20000da0
 8002504:	20000da1 	.word	0x20000da1

08002508 <oled_putc>:
 8002508:	b5f0      	push	{r4, r5, r6, r7, lr}
 800250a:	b085      	sub	sp, #20
 800250c:	af00      	add	r7, sp, #0
 800250e:	0002      	movs	r2, r0
 8002510:	1dfb      	adds	r3, r7, #7
 8002512:	701a      	strb	r2, [r3, #0]
 8002514:	1dfb      	adds	r3, r7, #7
 8002516:	781b      	ldrb	r3, [r3, #0]
 8002518:	2b0a      	cmp	r3, #10
 800251a:	d106      	bne.n	800252a <oled_putc+0x22>
 800251c:	4b35      	ldr	r3, [pc, #212]	; (80025f4 <oled_putc+0xec>)
 800251e:	781b      	ldrb	r3, [r3, #0]
 8002520:	3301      	adds	r3, #1
 8002522:	b2da      	uxtb	r2, r3
 8002524:	4b33      	ldr	r3, [pc, #204]	; (80025f4 <oled_putc+0xec>)
 8002526:	701a      	strb	r2, [r3, #0]
 8002528:	e061      	b.n	80025ee <oled_putc+0xe6>
 800252a:	1dfb      	adds	r3, r7, #7
 800252c:	781b      	ldrb	r3, [r3, #0]
 800252e:	2b0d      	cmp	r3, #13
 8002530:	d103      	bne.n	800253a <oled_putc+0x32>
 8002532:	4b31      	ldr	r3, [pc, #196]	; (80025f8 <oled_putc+0xf0>)
 8002534:	2200      	movs	r2, #0
 8002536:	701a      	strb	r2, [r3, #0]
 8002538:	e059      	b.n	80025ee <oled_putc+0xe6>
 800253a:	230e      	movs	r3, #14
 800253c:	18fb      	adds	r3, r7, r3
 800253e:	2200      	movs	r2, #0
 8002540:	701a      	strb	r2, [r3, #0]
 8002542:	e046      	b.n	80025d2 <oled_putc+0xca>
 8002544:	230f      	movs	r3, #15
 8002546:	18fb      	adds	r3, r7, r3
 8002548:	2200      	movs	r2, #0
 800254a:	701a      	strb	r2, [r3, #0]
 800254c:	e034      	b.n	80025b8 <oled_putc+0xb0>
 800254e:	4b2b      	ldr	r3, [pc, #172]	; (80025fc <oled_putc+0xf4>)
 8002550:	689b      	ldr	r3, [r3, #8]
 8002552:	220d      	movs	r2, #13
 8002554:	18bc      	adds	r4, r7, r2
 8002556:	210e      	movs	r1, #14
 8002558:	187a      	adds	r2, r7, r1
 800255a:	7815      	ldrb	r5, [r2, #0]
 800255c:	260f      	movs	r6, #15
 800255e:	19ba      	adds	r2, r7, r6
 8002560:	7811      	ldrb	r1, [r2, #0]
 8002562:	1dfa      	adds	r2, r7, #7
 8002564:	7810      	ldrb	r0, [r2, #0]
 8002566:	002a      	movs	r2, r5
 8002568:	4798      	blx	r3
 800256a:	0003      	movs	r3, r0
 800256c:	7023      	strb	r3, [r4, #0]
 800256e:	4b23      	ldr	r3, [pc, #140]	; (80025fc <oled_putc+0xf4>)
 8002570:	791b      	ldrb	r3, [r3, #4]
 8002572:	3301      	adds	r3, #1
 8002574:	b2db      	uxtb	r3, r3
 8002576:	4a20      	ldr	r2, [pc, #128]	; (80025f8 <oled_putc+0xf0>)
 8002578:	7812      	ldrb	r2, [r2, #0]
 800257a:	4353      	muls	r3, r2
 800257c:	b2da      	uxtb	r2, r3
 800257e:	0034      	movs	r4, r6
 8002580:	193b      	adds	r3, r7, r4
 8002582:	781b      	ldrb	r3, [r3, #0]
 8002584:	18d3      	adds	r3, r2, r3
 8002586:	b2d8      	uxtb	r0, r3
 8002588:	4b1c      	ldr	r3, [pc, #112]	; (80025fc <oled_putc+0xf4>)
 800258a:	795b      	ldrb	r3, [r3, #5]
 800258c:	3302      	adds	r3, #2
 800258e:	b2db      	uxtb	r3, r3
 8002590:	4a18      	ldr	r2, [pc, #96]	; (80025f4 <oled_putc+0xec>)
 8002592:	7812      	ldrb	r2, [r2, #0]
 8002594:	4353      	muls	r3, r2
 8002596:	b2da      	uxtb	r2, r3
 8002598:	210e      	movs	r1, #14
 800259a:	187b      	adds	r3, r7, r1
 800259c:	781b      	ldrb	r3, [r3, #0]
 800259e:	18d3      	adds	r3, r2, r3
 80025a0:	b2d9      	uxtb	r1, r3
 80025a2:	220d      	movs	r2, #13
 80025a4:	18bb      	adds	r3, r7, r2
 80025a6:	781b      	ldrb	r3, [r3, #0]
 80025a8:	001a      	movs	r2, r3
 80025aa:	f7ff ff2f 	bl	800240c <oled_set_pix>
 80025ae:	193b      	adds	r3, r7, r4
 80025b0:	781a      	ldrb	r2, [r3, #0]
 80025b2:	193b      	adds	r3, r7, r4
 80025b4:	3201      	adds	r2, #1
 80025b6:	701a      	strb	r2, [r3, #0]
 80025b8:	4b10      	ldr	r3, [pc, #64]	; (80025fc <oled_putc+0xf4>)
 80025ba:	791b      	ldrb	r3, [r3, #4]
 80025bc:	220f      	movs	r2, #15
 80025be:	18ba      	adds	r2, r7, r2
 80025c0:	7812      	ldrb	r2, [r2, #0]
 80025c2:	429a      	cmp	r2, r3
 80025c4:	d3c3      	bcc.n	800254e <oled_putc+0x46>
 80025c6:	210e      	movs	r1, #14
 80025c8:	187b      	adds	r3, r7, r1
 80025ca:	781a      	ldrb	r2, [r3, #0]
 80025cc:	187b      	adds	r3, r7, r1
 80025ce:	3201      	adds	r2, #1
 80025d0:	701a      	strb	r2, [r3, #0]
 80025d2:	4b0a      	ldr	r3, [pc, #40]	; (80025fc <oled_putc+0xf4>)
 80025d4:	795b      	ldrb	r3, [r3, #5]
 80025d6:	220e      	movs	r2, #14
 80025d8:	18ba      	adds	r2, r7, r2
 80025da:	7812      	ldrb	r2, [r2, #0]
 80025dc:	429a      	cmp	r2, r3
 80025de:	d3b1      	bcc.n	8002544 <oled_putc+0x3c>
 80025e0:	4b05      	ldr	r3, [pc, #20]	; (80025f8 <oled_putc+0xf0>)
 80025e2:	781b      	ldrb	r3, [r3, #0]
 80025e4:	3301      	adds	r3, #1
 80025e6:	b2da      	uxtb	r2, r3
 80025e8:	4b03      	ldr	r3, [pc, #12]	; (80025f8 <oled_putc+0xf0>)
 80025ea:	701a      	strb	r2, [r3, #0]
 80025ec:	46c0      	nop			; (mov r8, r8)
 80025ee:	46bd      	mov	sp, r7
 80025f0:	b005      	add	sp, #20
 80025f2:	bdf0      	pop	{r4, r5, r6, r7, pc}
 80025f4:	20000da1 	.word	0x20000da1
 80025f8:	20000da0 	.word	0x20000da0
 80025fc:	200000c8 	.word	0x200000c8

08002600 <oled_pic>:
 8002600:	b590      	push	{r4, r7, lr}
 8002602:	b085      	sub	sp, #20
 8002604:	af00      	add	r7, sp, #0
 8002606:	6078      	str	r0, [r7, #4]
 8002608:	000a      	movs	r2, r1
 800260a:	1cfb      	adds	r3, r7, #3
 800260c:	701a      	strb	r2, [r3, #0]
 800260e:	230e      	movs	r3, #14
 8002610:	18fb      	adds	r3, r7, r3
 8002612:	2200      	movs	r2, #0
 8002614:	701a      	strb	r2, [r3, #0]
 8002616:	e031      	b.n	800267c <oled_pic+0x7c>
 8002618:	230f      	movs	r3, #15
 800261a:	18fb      	adds	r3, r7, r3
 800261c:	2200      	movs	r2, #0
 800261e:	701a      	strb	r2, [r3, #0]
 8002620:	e020      	b.n	8002664 <oled_pic+0x64>
 8002622:	210e      	movs	r1, #14
 8002624:	187b      	adds	r3, r7, r1
 8002626:	781b      	ldrb	r3, [r3, #0]
 8002628:	01da      	lsls	r2, r3, #7
 800262a:	200f      	movs	r0, #15
 800262c:	183b      	adds	r3, r7, r0
 800262e:	781b      	ldrb	r3, [r3, #0]
 8002630:	18d3      	adds	r3, r2, r3
 8002632:	001a      	movs	r2, r3
 8002634:	687b      	ldr	r3, [r7, #4]
 8002636:	189b      	adds	r3, r3, r2
 8002638:	781b      	ldrb	r3, [r3, #0]
 800263a:	1cfa      	adds	r2, r7, #3
 800263c:	7812      	ldrb	r2, [r2, #0]
 800263e:	429a      	cmp	r2, r3
 8002640:	419b      	sbcs	r3, r3
 8002642:	425b      	negs	r3, r3
 8002644:	b2db      	uxtb	r3, r3
 8002646:	001a      	movs	r2, r3
 8002648:	187b      	adds	r3, r7, r1
 800264a:	7819      	ldrb	r1, [r3, #0]
 800264c:	0004      	movs	r4, r0
 800264e:	183b      	adds	r3, r7, r0
 8002650:	781b      	ldrb	r3, [r3, #0]
 8002652:	0018      	movs	r0, r3
 8002654:	f7ff feda 	bl	800240c <oled_set_pix>
 8002658:	0020      	movs	r0, r4
 800265a:	183b      	adds	r3, r7, r0
 800265c:	781a      	ldrb	r2, [r3, #0]
 800265e:	183b      	adds	r3, r7, r0
 8002660:	3201      	adds	r2, #1
 8002662:	701a      	strb	r2, [r3, #0]
 8002664:	230f      	movs	r3, #15
 8002666:	18fb      	adds	r3, r7, r3
 8002668:	781b      	ldrb	r3, [r3, #0]
 800266a:	b25b      	sxtb	r3, r3
 800266c:	2b00      	cmp	r3, #0
 800266e:	dad8      	bge.n	8002622 <oled_pic+0x22>
 8002670:	210e      	movs	r1, #14
 8002672:	187b      	adds	r3, r7, r1
 8002674:	781a      	ldrb	r2, [r3, #0]
 8002676:	187b      	adds	r3, r7, r1
 8002678:	3201      	adds	r2, #1
 800267a:	701a      	strb	r2, [r3, #0]
 800267c:	230e      	movs	r3, #14
 800267e:	18fb      	adds	r3, r7, r3
 8002680:	781b      	ldrb	r3, [r3, #0]
 8002682:	2b3f      	cmp	r3, #63	; 0x3f
 8002684:	d9c8      	bls.n	8002618 <oled_pic+0x18>
 8002686:	46c0      	nop			; (mov r8, r8)
 8002688:	46bd      	mov	sp, r7
 800268a:	b005      	add	sp, #20
 800268c:	bd90      	pop	{r4, r7, pc}
	...

08002690 <get_pix>:
 8002690:	b590      	push	{r4, r7, lr}
 8002692:	b083      	sub	sp, #12
 8002694:	af00      	add	r7, sp, #0
 8002696:	0004      	movs	r4, r0
 8002698:	0008      	movs	r0, r1
 800269a:	0011      	movs	r1, r2
 800269c:	1dfb      	adds	r3, r7, #7
 800269e:	1c22      	adds	r2, r4, #0
 80026a0:	701a      	strb	r2, [r3, #0]
 80026a2:	1dbb      	adds	r3, r7, #6
 80026a4:	1c02      	adds	r2, r0, #0
 80026a6:	701a      	strb	r2, [r3, #0]
 80026a8:	1d7b      	adds	r3, r7, #5
 80026aa:	1c0a      	adds	r2, r1, #0
 80026ac:	701a      	strb	r2, [r3, #0]
 80026ae:	1dfb      	adds	r3, r7, #7
 80026b0:	781a      	ldrb	r2, [r3, #0]
 80026b2:	0013      	movs	r3, r2
 80026b4:	009b      	lsls	r3, r3, #2
 80026b6:	189a      	adds	r2, r3, r2
 80026b8:	1dbb      	adds	r3, r7, #6
 80026ba:	781b      	ldrb	r3, [r3, #0]
 80026bc:	18d3      	adds	r3, r2, r3
 80026be:	4a08      	ldr	r2, [pc, #32]	; (80026e0 <get_pix+0x50>)
 80026c0:	5cd3      	ldrb	r3, [r2, r3]
 80026c2:	001a      	movs	r2, r3
 80026c4:	1d7b      	adds	r3, r7, #5
 80026c6:	781b      	ldrb	r3, [r3, #0]
 80026c8:	411a      	asrs	r2, r3
 80026ca:	0013      	movs	r3, r2
 80026cc:	2201      	movs	r2, #1
 80026ce:	4013      	ands	r3, r2
 80026d0:	1e5a      	subs	r2, r3, #1
 80026d2:	4193      	sbcs	r3, r2
 80026d4:	b2db      	uxtb	r3, r3
 80026d6:	0018      	movs	r0, r3
 80026d8:	46bd      	mov	sp, r7
 80026da:	b003      	add	sp, #12
 80026dc:	bd90      	pop	{r4, r7, pc}
 80026de:	46c0      	nop			; (mov r8, r8)
 80026e0:	08004ad4 	.word	0x08004ad4

080026e4 <NMI_Handler>:
 80026e4:	b580      	push	{r7, lr}
 80026e6:	af00      	add	r7, sp, #0
 80026e8:	46c0      	nop			; (mov r8, r8)
 80026ea:	46bd      	mov	sp, r7
 80026ec:	bd80      	pop	{r7, pc}

080026ee <HardFault_Handler>:
 80026ee:	b580      	push	{r7, lr}
 80026f0:	af00      	add	r7, sp, #0
 80026f2:	e7fe      	b.n	80026f2 <HardFault_Handler+0x4>

080026f4 <SVC_Handler>:
 80026f4:	b580      	push	{r7, lr}
 80026f6:	af00      	add	r7, sp, #0
 80026f8:	46c0      	nop			; (mov r8, r8)
 80026fa:	46bd      	mov	sp, r7
 80026fc:	bd80      	pop	{r7, pc}

080026fe <PendSV_Handler>:
 80026fe:	b580      	push	{r7, lr}
 8002700:	af00      	add	r7, sp, #0
 8002702:	46c0      	nop			; (mov r8, r8)
 8002704:	46bd      	mov	sp, r7
 8002706:	bd80      	pop	{r7, pc}

08002708 <__libc_init_array>:
 8002708:	b570      	push	{r4, r5, r6, lr}
 800270a:	4e0d      	ldr	r6, [pc, #52]	; (8002740 <__libc_init_array+0x38>)
 800270c:	4d0d      	ldr	r5, [pc, #52]	; (8002744 <__libc_init_array+0x3c>)
 800270e:	1bad      	subs	r5, r5, r6
 8002710:	10ad      	asrs	r5, r5, #2
 8002712:	d006      	beq.n	8002722 <__libc_init_array+0x1a>
 8002714:	2400      	movs	r4, #0
 8002716:	00a3      	lsls	r3, r4, #2
 8002718:	58f3      	ldr	r3, [r6, r3]
 800271a:	3401      	adds	r4, #1
 800271c:	4798      	blx	r3
 800271e:	42a5      	cmp	r5, r4
 8002720:	d1f9      	bne.n	8002716 <__libc_init_array+0xe>
 8002722:	f000 f90f 	bl	8002944 <_init>
 8002726:	4e08      	ldr	r6, [pc, #32]	; (8002748 <__libc_init_array+0x40>)
 8002728:	4d08      	ldr	r5, [pc, #32]	; (800274c <__libc_init_array+0x44>)
 800272a:	1bad      	subs	r5, r5, r6
 800272c:	10ad      	asrs	r5, r5, #2
 800272e:	d006      	beq.n	800273e <__libc_init_array+0x36>
 8002730:	2400      	movs	r4, #0
 8002732:	00a3      	lsls	r3, r4, #2
 8002734:	58f3      	ldr	r3, [r6, r3]
 8002736:	3401      	adds	r4, #1
 8002738:	4798      	blx	r3
 800273a:	42a5      	cmp	r5, r4
 800273c:	d1f9      	bne.n	8002732 <__libc_init_array+0x2a>
 800273e:	bd70      	pop	{r4, r5, r6, pc}
 8002740:	08004fd4 	.word	0x08004fd4
 8002744:	08004fd4 	.word	0x08004fd4
 8002748:	08004fd4 	.word	0x08004fd4
 800274c:	08004fdc 	.word	0x08004fdc

08002750 <memset>:
 8002750:	b5f0      	push	{r4, r5, r6, r7, lr}
 8002752:	0783      	lsls	r3, r0, #30
 8002754:	d046      	beq.n	80027e4 <memset+0x94>
 8002756:	1e54      	subs	r4, r2, #1
 8002758:	2a00      	cmp	r2, #0
 800275a:	d042      	beq.n	80027e2 <memset+0x92>
 800275c:	b2ce      	uxtb	r6, r1
 800275e:	0002      	movs	r2, r0
 8002760:	2503      	movs	r5, #3
 8002762:	e002      	b.n	800276a <memset+0x1a>
 8002764:	001a      	movs	r2, r3
 8002766:	3c01      	subs	r4, #1
 8002768:	d33b      	bcc.n	80027e2 <memset+0x92>
 800276a:	1c53      	adds	r3, r2, #1
 800276c:	7016      	strb	r6, [r2, #0]
 800276e:	422b      	tst	r3, r5
 8002770:	d1f8      	bne.n	8002764 <memset+0x14>
 8002772:	2c03      	cmp	r4, #3
 8002774:	d92d      	bls.n	80027d2 <memset+0x82>
 8002776:	22ff      	movs	r2, #255	; 0xff
 8002778:	400a      	ands	r2, r1
 800277a:	0215      	lsls	r5, r2, #8
 800277c:	4315      	orrs	r5, r2
 800277e:	042a      	lsls	r2, r5, #16
 8002780:	4315      	orrs	r5, r2
 8002782:	2c0f      	cmp	r4, #15
 8002784:	d916      	bls.n	80027b4 <memset+0x64>
 8002786:	0027      	movs	r7, r4
 8002788:	3f10      	subs	r7, #16
 800278a:	093f      	lsrs	r7, r7, #4
 800278c:	013e      	lsls	r6, r7, #4
 800278e:	46b4      	mov	ip, r6
 8002790:	001e      	movs	r6, r3
 8002792:	001a      	movs	r2, r3
 8002794:	3610      	adds	r6, #16
 8002796:	4466      	add	r6, ip
 8002798:	6015      	str	r5, [r2, #0]
 800279a:	6055      	str	r5, [r2, #4]
 800279c:	6095      	str	r5, [r2, #8]
 800279e:	60d5      	str	r5, [r2, #12]
 80027a0:	3210      	adds	r2, #16
 80027a2:	42b2      	cmp	r2, r6
 80027a4:	d1f8      	bne.n	8002798 <memset+0x48>
 80027a6:	220f      	movs	r2, #15
 80027a8:	3701      	adds	r7, #1
 80027aa:	013f      	lsls	r7, r7, #4
 80027ac:	19db      	adds	r3, r3, r7
 80027ae:	4014      	ands	r4, r2
 80027b0:	2c03      	cmp	r4, #3
 80027b2:	d90e      	bls.n	80027d2 <memset+0x82>
 80027b4:	1f26      	subs	r6, r4, #4
 80027b6:	08b6      	lsrs	r6, r6, #2
 80027b8:	00b7      	lsls	r7, r6, #2
 80027ba:	46bc      	mov	ip, r7
 80027bc:	001a      	movs	r2, r3
 80027be:	1d1f      	adds	r7, r3, #4
 80027c0:	4467      	add	r7, ip
 80027c2:	c220      	stmia	r2!, {r5}
 80027c4:	42ba      	cmp	r2, r7
 80027c6:	d1fc      	bne.n	80027c2 <memset+0x72>
 80027c8:	2203      	movs	r2, #3
 80027ca:	3601      	adds	r6, #1
 80027cc:	00b6      	lsls	r6, r6, #2
 80027ce:	199b      	adds	r3, r3, r6
 80027d0:	4014      	ands	r4, r2
 80027d2:	2c00      	cmp	r4, #0
 80027d4:	d005      	beq.n	80027e2 <memset+0x92>
 80027d6:	b2c9      	uxtb	r1, r1
 80027d8:	191c      	adds	r4, r3, r4
 80027da:	7019      	strb	r1, [r3, #0]
 80027dc:	3301      	adds	r3, #1
 80027de:	429c      	cmp	r4, r3
 80027e0:	d1fb      	bne.n	80027da <memset+0x8a>
 80027e2:	bdf0      	pop	{r4, r5, r6, r7, pc}
 80027e4:	0014      	movs	r4, r2
 80027e6:	0003      	movs	r3, r0
 80027e8:	e7c3      	b.n	8002772 <memset+0x22>
 80027ea:	46c0      	nop			; (mov r8, r8)

080027ec <register_fini>:
 80027ec:	4b03      	ldr	r3, [pc, #12]	; (80027fc <register_fini+0x10>)
 80027ee:	b510      	push	{r4, lr}
 80027f0:	2b00      	cmp	r3, #0
 80027f2:	d002      	beq.n	80027fa <register_fini+0xe>
 80027f4:	4802      	ldr	r0, [pc, #8]	; (8002800 <register_fini+0x14>)
 80027f6:	f000 f805 	bl	8002804 <atexit>
 80027fa:	bd10      	pop	{r4, pc}
 80027fc:	00000000 	.word	0x00000000
 8002800:	08002815 	.word	0x08002815

08002804 <atexit>:
 8002804:	b510      	push	{r4, lr}
 8002806:	0001      	movs	r1, r0
 8002808:	2300      	movs	r3, #0
 800280a:	2200      	movs	r2, #0
 800280c:	2000      	movs	r0, #0
 800280e:	f000 f81f 	bl	8002850 <__register_exitproc>
 8002812:	bd10      	pop	{r4, pc}

08002814 <__libc_fini_array>:
 8002814:	b570      	push	{r4, r5, r6, lr}
 8002816:	4b09      	ldr	r3, [pc, #36]	; (800283c <__libc_fini_array+0x28>)
 8002818:	4c09      	ldr	r4, [pc, #36]	; (8002840 <__libc_fini_array+0x2c>)
 800281a:	1ae4      	subs	r4, r4, r3
 800281c:	10a4      	asrs	r4, r4, #2
 800281e:	d009      	beq.n	8002834 <__libc_fini_array+0x20>
 8002820:	4a08      	ldr	r2, [pc, #32]	; (8002844 <__libc_fini_array+0x30>)
 8002822:	18a5      	adds	r5, r4, r2
 8002824:	00ad      	lsls	r5, r5, #2
 8002826:	18ed      	adds	r5, r5, r3
 8002828:	682b      	ldr	r3, [r5, #0]
 800282a:	3c01      	subs	r4, #1
 800282c:	4798      	blx	r3
 800282e:	3d04      	subs	r5, #4
 8002830:	2c00      	cmp	r4, #0
 8002832:	d1f9      	bne.n	8002828 <__libc_fini_array+0x14>
 8002834:	f000 f88c 	bl	8002950 <_fini>
 8002838:	bd70      	pop	{r4, r5, r6, pc}
 800283a:	46c0      	nop			; (mov r8, r8)
 800283c:	08004fdc 	.word	0x08004fdc
 8002840:	08004fe0 	.word	0x08004fe0
 8002844:	3fffffff 	.word	0x3fffffff

08002848 <__retarget_lock_acquire_recursive>:
 8002848:	4770      	bx	lr
 800284a:	46c0      	nop			; (mov r8, r8)

0800284c <__retarget_lock_release_recursive>:
 800284c:	4770      	bx	lr
 800284e:	46c0      	nop			; (mov r8, r8)

08002850 <__register_exitproc>:
 8002850:	b5f0      	push	{r4, r5, r6, r7, lr}
 8002852:	464e      	mov	r6, r9
 8002854:	4645      	mov	r5, r8
 8002856:	46de      	mov	lr, fp
 8002858:	4657      	mov	r7, sl
 800285a:	b5e0      	push	{r5, r6, r7, lr}
 800285c:	4d36      	ldr	r5, [pc, #216]	; (8002938 <__register_exitproc+0xe8>)
 800285e:	b083      	sub	sp, #12
 8002860:	0006      	movs	r6, r0
 8002862:	6828      	ldr	r0, [r5, #0]
 8002864:	4698      	mov	r8, r3
 8002866:	000f      	movs	r7, r1
 8002868:	4691      	mov	r9, r2
 800286a:	f7ff ffed 	bl	8002848 <__retarget_lock_acquire_recursive>
 800286e:	4b33      	ldr	r3, [pc, #204]	; (800293c <__register_exitproc+0xec>)
 8002870:	681c      	ldr	r4, [r3, #0]
 8002872:	23a4      	movs	r3, #164	; 0xa4
 8002874:	005b      	lsls	r3, r3, #1
 8002876:	58e0      	ldr	r0, [r4, r3]
 8002878:	2800      	cmp	r0, #0
 800287a:	d052      	beq.n	8002922 <__register_exitproc+0xd2>
 800287c:	6843      	ldr	r3, [r0, #4]
 800287e:	2b1f      	cmp	r3, #31
 8002880:	dc13      	bgt.n	80028aa <__register_exitproc+0x5a>
 8002882:	1c5a      	adds	r2, r3, #1
 8002884:	9201      	str	r2, [sp, #4]
 8002886:	2e00      	cmp	r6, #0
 8002888:	d128      	bne.n	80028dc <__register_exitproc+0x8c>
 800288a:	9a01      	ldr	r2, [sp, #4]
 800288c:	3302      	adds	r3, #2
 800288e:	009b      	lsls	r3, r3, #2
 8002890:	6042      	str	r2, [r0, #4]
 8002892:	501f      	str	r7, [r3, r0]
 8002894:	6828      	ldr	r0, [r5, #0]
 8002896:	f7ff ffd9 	bl	800284c <__retarget_lock_release_recursive>
 800289a:	2000      	movs	r0, #0
 800289c:	b003      	add	sp, #12
 800289e:	bc3c      	pop	{r2, r3, r4, r5}
 80028a0:	4690      	mov	r8, r2
 80028a2:	4699      	mov	r9, r3
 80028a4:	46a2      	mov	sl, r4
 80028a6:	46ab      	mov	fp, r5
 80028a8:	bdf0      	pop	{r4, r5, r6, r7, pc}
 80028aa:	4b25      	ldr	r3, [pc, #148]	; (8002940 <__register_exitproc+0xf0>)
 80028ac:	2b00      	cmp	r3, #0
 80028ae:	d03d      	beq.n	800292c <__register_exitproc+0xdc>
 80028b0:	20c8      	movs	r0, #200	; 0xc8
 80028b2:	0040      	lsls	r0, r0, #1
 80028b4:	e000      	b.n	80028b8 <__register_exitproc+0x68>
 80028b6:	bf00      	nop
 80028b8:	2800      	cmp	r0, #0
 80028ba:	d037      	beq.n	800292c <__register_exitproc+0xdc>
 80028bc:	22a4      	movs	r2, #164	; 0xa4
 80028be:	2300      	movs	r3, #0
 80028c0:	0052      	lsls	r2, r2, #1
 80028c2:	58a1      	ldr	r1, [r4, r2]
 80028c4:	6043      	str	r3, [r0, #4]
 80028c6:	6001      	str	r1, [r0, #0]
 80028c8:	50a0      	str	r0, [r4, r2]
 80028ca:	3240      	adds	r2, #64	; 0x40
 80028cc:	5083      	str	r3, [r0, r2]
 80028ce:	3204      	adds	r2, #4
 80028d0:	5083      	str	r3, [r0, r2]
 80028d2:	3301      	adds	r3, #1
 80028d4:	9301      	str	r3, [sp, #4]
 80028d6:	2300      	movs	r3, #0
 80028d8:	2e00      	cmp	r6, #0
 80028da:	d0d6      	beq.n	800288a <__register_exitproc+0x3a>
 80028dc:	009a      	lsls	r2, r3, #2
 80028de:	4692      	mov	sl, r2
 80028e0:	4482      	add	sl, r0
 80028e2:	464a      	mov	r2, r9
 80028e4:	2188      	movs	r1, #136	; 0x88
 80028e6:	4654      	mov	r4, sl
 80028e8:	5062      	str	r2, [r4, r1]
 80028ea:	22c4      	movs	r2, #196	; 0xc4
 80028ec:	0052      	lsls	r2, r2, #1
 80028ee:	4691      	mov	r9, r2
 80028f0:	4481      	add	r9, r0
 80028f2:	464a      	mov	r2, r9
 80028f4:	3987      	subs	r1, #135	; 0x87
 80028f6:	4099      	lsls	r1, r3
 80028f8:	6812      	ldr	r2, [r2, #0]
 80028fa:	468b      	mov	fp, r1
 80028fc:	430a      	orrs	r2, r1
 80028fe:	4694      	mov	ip, r2
 8002900:	464a      	mov	r2, r9
 8002902:	4661      	mov	r1, ip
 8002904:	6011      	str	r1, [r2, #0]
 8002906:	2284      	movs	r2, #132	; 0x84
 8002908:	4641      	mov	r1, r8
 800290a:	0052      	lsls	r2, r2, #1
 800290c:	50a1      	str	r1, [r4, r2]
 800290e:	2e02      	cmp	r6, #2
 8002910:	d1bb      	bne.n	800288a <__register_exitproc+0x3a>
 8002912:	0002      	movs	r2, r0
 8002914:	465c      	mov	r4, fp
 8002916:	328d      	adds	r2, #141	; 0x8d
 8002918:	32ff      	adds	r2, #255	; 0xff
 800291a:	6811      	ldr	r1, [r2, #0]
 800291c:	430c      	orrs	r4, r1
 800291e:	6014      	str	r4, [r2, #0]
 8002920:	e7b3      	b.n	800288a <__register_exitproc+0x3a>
 8002922:	0020      	movs	r0, r4
 8002924:	304d      	adds	r0, #77	; 0x4d
 8002926:	30ff      	adds	r0, #255	; 0xff
 8002928:	50e0      	str	r0, [r4, r3]
 800292a:	e7a7      	b.n	800287c <__register_exitproc+0x2c>
 800292c:	6828      	ldr	r0, [r5, #0]
 800292e:	f7ff ff8d 	bl	800284c <__retarget_lock_release_recursive>
 8002932:	2001      	movs	r0, #1
 8002934:	4240      	negs	r0, r0
 8002936:	e7b1      	b.n	800289c <__register_exitproc+0x4c>
 8002938:	20000500 	.word	0x20000500
 800293c:	08004fd0 	.word	0x08004fd0
 8002940:	00000000 	.word	0x00000000

08002944 <_init>:
 8002944:	b5f8      	push	{r3, r4, r5, r6, r7, lr}
 8002946:	46c0      	nop			; (mov r8, r8)
 8002948:	bcf8      	pop	{r3, r4, r5, r6, r7}
 800294a:	bc08      	pop	{r3}
 800294c:	469e      	mov	lr, r3
 800294e:	4770      	bx	lr

08002950 <_fini>:
 8002950:	b5f8      	push	{r3, r4, r5, r6, r7, lr}
 8002952:	46c0      	nop			; (mov r8, r8)
 8002954:	bcf8      	pop	{r3, r4, r5, r6, r7}
 8002956:	bc08      	pop	{r3}
 8002958:	469e      	mov	lr, r3
 800295a:	4770      	bx	lr
