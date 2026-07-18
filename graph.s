	.file	"graph.cpp"
	.option nopic
	.attribute arch, "rv32i2p1_m2p0_a2p1_c2p0_zmmul1p0_zaamo1p0_zalrsc1p0_zca1p0"
	.attribute unaligned_access, 0
	.attribute stack_align, 16
	.text
	.section	.text._ZSt3absf,"axG",@progbits,_ZSt3absf,comdat
	.align	1
	.weak	_ZSt3absf
	.type	_ZSt3absf, @function
_ZSt3absf:
.LFB6:
	.cfi_startproc
	addi	sp,sp,-32
	.cfi_def_cfa_offset 32
	sw	ra,28(sp)
	sw	s0,24(sp)
	.cfi_offset 1, -4
	.cfi_offset 8, -8
	addi	s0,sp,32
	.cfi_def_cfa 8, 0
	sw	a0,-20(s0)
	lw	a5,-20(s0)
	slli	a5,a5,1
	srli	a5,a5,1
	mv	a0,a5
	lw	ra,28(sp)
	.cfi_restore 1
	lw	s0,24(sp)
	.cfi_restore 8
	.cfi_def_cfa 2, 32
	addi	sp,sp,32
	.cfi_def_cfa_offset 0
	jr	ra
	.cfi_endproc
.LFE6:
	.size	_ZSt3absf, .-_ZSt3absf
	.text
	.align	1
	.globl	_Z9initGraphP5Graph
	.type	_Z9initGraphP5Graph, @function
_Z9initGraphP5Graph:
.LFB10:
	.cfi_startproc
	addi	sp,sp,-48
	.cfi_def_cfa_offset 48
	sw	ra,44(sp)
	sw	s0,40(sp)
	.cfi_offset 1, -4
	.cfi_offset 8, -8
	addi	s0,sp,48
	.cfi_def_cfa 8, 0
	sw	a0,-36(s0)
	sw	zero,-20(s0)
	j	.L4
.L7:
	sw	zero,-24(s0)
	j	.L5
.L6:
	lw	a3,-36(s0)
	lw	a4,-20(s0)
	mv	a5,a4
	slli	a5,a5,1
	add	a5,a5,a4
	lw	a4,-24(s0)
	add	a5,a5,a4
	slli	a5,a5,2
	add	a5,a3,a5
	sw	zero,0(a5)
	lw	a5,-24(s0)
	addi	a5,a5,1
	sw	a5,-24(s0)
.L5:
	lw	a4,-24(s0)
	li	a5,2
	ble	a4,a5,.L6
	lw	a4,-36(s0)
	lw	a5,-20(s0)
	add	a5,a4,a5
	sb	zero,36(a5)
	lw	a5,-20(s0)
	addi	a5,a5,1
	sw	a5,-20(s0)
.L4:
	lw	a4,-20(s0)
	li	a5,2
	ble	a4,a5,.L7
	nop
	nop
	lw	ra,44(sp)
	.cfi_restore 1
	lw	s0,40(sp)
	.cfi_restore 8
	.cfi_def_cfa 2, 48
	addi	sp,sp,48
	.cfi_def_cfa_offset 0
	jr	ra
	.cfi_endproc
.LFE10:
	.size	_Z9initGraphP5Graph, .-_Z9initGraphP5Graph
	.align	1
	.globl	_Z7addEdgeP5Graphii
	.type	_Z7addEdgeP5Graphii, @function
_Z7addEdgeP5Graphii:
.LFB11:
	.cfi_startproc
	addi	sp,sp,-32
	.cfi_def_cfa_offset 32
	sw	ra,28(sp)
	sw	s0,24(sp)
	.cfi_offset 1, -4
	.cfi_offset 8, -8
	addi	s0,sp,32
	.cfi_def_cfa 8, 0
	sw	a0,-20(s0)
	sw	a1,-24(s0)
	sw	a2,-28(s0)
	lw	a5,-24(s0)
	blt	a5,zero,.L10
	lw	a4,-24(s0)
	li	a5,2
	bgt	a4,a5,.L10
	lw	a5,-28(s0)
	blt	a5,zero,.L10
	lw	a4,-28(s0)
	li	a5,2
	bgt	a4,a5,.L10
	lw	a3,-20(s0)
	lw	a4,-28(s0)
	mv	a5,a4
	slli	a5,a5,1
	add	a5,a5,a4
	lw	a4,-24(s0)
	add	a5,a5,a4
	slli	a5,a5,2
	add	a5,a3,a5
	li	a4,1
	sw	a4,0(a5)
.L10:
	nop
	lw	ra,28(sp)
	.cfi_restore 1
	lw	s0,24(sp)
	.cfi_restore 8
	.cfi_def_cfa 2, 32
	addi	sp,sp,32
	.cfi_def_cfa_offset 0
	jr	ra
	.cfi_endproc
.LFE11:
	.size	_Z7addEdgeP5Graphii, .-_Z7addEdgeP5Graphii
	.align	1
	.globl	_Z13addVertexDataP5Graphic
	.type	_Z13addVertexDataP5Graphic, @function
_Z13addVertexDataP5Graphic:
.LFB12:
	.cfi_startproc
	addi	sp,sp,-32
	.cfi_def_cfa_offset 32
	sw	ra,28(sp)
	sw	s0,24(sp)
	.cfi_offset 1, -4
	.cfi_offset 8, -8
	addi	s0,sp,32
	.cfi_def_cfa 8, 0
	sw	a0,-20(s0)
	sw	a1,-24(s0)
	mv	a5,a2
	sb	a5,-25(s0)
	lw	a5,-24(s0)
	blt	a5,zero,.L13
	lw	a4,-24(s0)
	li	a5,2
	bgt	a4,a5,.L13
	lw	a4,-20(s0)
	lw	a5,-24(s0)
	add	a5,a4,a5
	lbu	a4,-25(s0)
	sb	a4,36(a5)
.L13:
	nop
	lw	ra,28(sp)
	.cfi_restore 1
	lw	s0,24(sp)
	.cfi_restore 8
	.cfi_def_cfa 2, 32
	addi	sp,sp,32
	.cfi_def_cfa_offset 0
	jr	ra
	.cfi_endproc
.LFE12:
	.size	_Z13addVertexDataP5Graphic, .-_Z13addVertexDataP5Graphic
	.section	.rodata
	.align	2
.LC0:
	.string	"Adjacency Matrix:"
	.align	2
.LC1:
	.string	"%d "
	.align	2
.LC2:
	.string	"\nVertex Data:"
	.align	2
.LC3:
	.string	"Vertex %d: %c\n"
	.text
	.align	1
	.globl	_Z10printGraphP5Graph
	.type	_Z10printGraphP5Graph, @function
_Z10printGraphP5Graph:
.LFB13:
	.cfi_startproc
	addi	sp,sp,-48
	.cfi_def_cfa_offset 48
	sw	ra,44(sp)
	sw	s0,40(sp)
	.cfi_offset 1, -4
	.cfi_offset 8, -8
	addi	s0,sp,48
	.cfi_def_cfa 8, 0
	sw	a0,-36(s0)
	lui	a5,%hi(.LC0)
	addi	a0,a5,%lo(.LC0)
	call	puts
	sw	zero,-20(s0)
	j	.L15
.L18:
	sw	zero,-24(s0)
	j	.L16
.L17:
	lw	a3,-36(s0)
	lw	a4,-20(s0)
	mv	a5,a4
	slli	a5,a5,1
	add	a5,a5,a4
	lw	a4,-24(s0)
	add	a5,a5,a4
	slli	a5,a5,2
	add	a5,a3,a5
	lw	a5,0(a5)
	mv	a1,a5
	lui	a5,%hi(.LC1)
	addi	a0,a5,%lo(.LC1)
	call	printf
	lw	a5,-24(s0)
	addi	a5,a5,1
	sw	a5,-24(s0)
.L16:
	lw	a4,-24(s0)
	li	a5,2
	ble	a4,a5,.L17
	li	a0,10
	call	putchar
	lw	a5,-20(s0)
	addi	a5,a5,1
	sw	a5,-20(s0)
.L15:
	lw	a4,-20(s0)
	li	a5,2
	ble	a4,a5,.L18
	lui	a5,%hi(.LC2)
	addi	a0,a5,%lo(.LC2)
	call	puts
	sw	zero,-28(s0)
	j	.L19
.L20:
	lw	a4,-36(s0)
	lw	a5,-28(s0)
	add	a5,a4,a5
	lbu	a5,36(a5)
	mv	a2,a5
	lw	a1,-28(s0)
	lui	a5,%hi(.LC3)
	addi	a0,a5,%lo(.LC3)
	call	printf
	lw	a5,-28(s0)
	addi	a5,a5,1
	sw	a5,-28(s0)
.L19:
	lw	a4,-28(s0)
	li	a5,2
	ble	a4,a5,.L20
	nop
	nop
	lw	ra,44(sp)
	.cfi_restore 1
	lw	s0,40(sp)
	.cfi_restore 8
	.cfi_def_cfa 2, 48
	addi	sp,sp,48
	.cfi_def_cfa_offset 0
	jr	ra
	.cfi_endproc
.LFE13:
	.size	_Z10printGraphP5Graph, .-_Z10printGraphP5Graph
	.section	.rodata
	.align	2
.LC4:
	.string	"%f "
	.text
	.align	1
	.globl	_Z11printMatrixPA3_f
	.type	_Z11printMatrixPA3_f, @function
_Z11printMatrixPA3_f:
.LFB14:
	.cfi_startproc
	addi	sp,sp,-48
	.cfi_def_cfa_offset 48
	sw	ra,44(sp)
	sw	s0,40(sp)
	.cfi_offset 1, -4
	.cfi_offset 8, -8
	addi	s0,sp,48
	.cfi_def_cfa 8, 0
	sw	a0,-36(s0)
	sw	zero,-20(s0)
	j	.L22
.L25:
	sw	zero,-24(s0)
	j	.L23
.L24:
	lw	a4,-20(s0)
	mv	a5,a4
	slli	a5,a5,1
	add	a5,a5,a4
	slli	a5,a5,2
	mv	a4,a5
	lw	a5,-36(s0)
	add	a4,a5,a4
	lw	a5,-24(s0)
	slli	a5,a5,2
	add	a5,a4,a5
	lw	a5,0(a5)
	mv	a0,a5
	call	__extendsfdf2
	mv	a4,a0
	mv	a5,a1
	mv	a2,a4
	mv	a3,a5
	lui	a5,%hi(.LC4)
	addi	a0,a5,%lo(.LC4)
	call	printf
	lw	a5,-24(s0)
	addi	a5,a5,1
	sw	a5,-24(s0)
.L23:
	lw	a4,-24(s0)
	li	a5,2
	ble	a4,a5,.L24
	li	a0,10
	call	putchar
	lw	a5,-20(s0)
	addi	a5,a5,1
	sw	a5,-20(s0)
.L22:
	lw	a4,-20(s0)
	li	a5,2
	ble	a4,a5,.L25
	nop
	nop
	lw	ra,44(sp)
	.cfi_restore 1
	lw	s0,40(sp)
	.cfi_restore 8
	.cfi_def_cfa 2, 48
	addi	sp,sp,48
	.cfi_def_cfa_offset 0
	jr	ra
	.cfi_endproc
.LFE14:
	.size	_Z11printMatrixPA3_f, .-_Z11printMatrixPA3_f
	.align	1
	.globl	_Z10printArrayPf
	.type	_Z10printArrayPf, @function
_Z10printArrayPf:
.LFB15:
	.cfi_startproc
	addi	sp,sp,-48
	.cfi_def_cfa_offset 48
	sw	ra,44(sp)
	sw	s0,40(sp)
	.cfi_offset 1, -4
	.cfi_offset 8, -8
	addi	s0,sp,48
	.cfi_def_cfa 8, 0
	sw	a0,-36(s0)
	sw	zero,-20(s0)
	j	.L27
.L28:
	lw	a5,-20(s0)
	slli	a5,a5,2
	lw	a4,-36(s0)
	add	a5,a4,a5
	lw	a5,0(a5)
	mv	a0,a5
	call	__extendsfdf2
	mv	a4,a0
	mv	a5,a1
	mv	a2,a4
	mv	a3,a5
	lui	a5,%hi(.LC4)
	addi	a0,a5,%lo(.LC4)
	call	printf
	lw	a5,-20(s0)
	addi	a5,a5,1
	sw	a5,-20(s0)
.L27:
	lw	a4,-20(s0)
	li	a5,2
	ble	a4,a5,.L28
	li	a0,10
	call	putchar
	nop
	lw	ra,44(sp)
	.cfi_restore 1
	lw	s0,40(sp)
	.cfi_restore 8
	.cfi_def_cfa 2, 48
	addi	sp,sp,48
	.cfi_def_cfa_offset 0
	jr	ra
	.cfi_endproc
.LFE15:
	.size	_Z10printArrayPf, .-_Z10printArrayPf
	.align	1
	.globl	_Z12bfsConnectedPA3_iiPiS1_S1_
	.type	_Z12bfsConnectedPA3_iiPiS1_S1_, @function
_Z12bfsConnectedPA3_iiPiS1_S1_:
.LFB16:
	.cfi_startproc
	addi	sp,sp,-464
	.cfi_def_cfa_offset 464
	sw	ra,460(sp)
	sw	s0,456(sp)
	.cfi_offset 1, -4
	.cfi_offset 8, -8
	addi	s0,sp,464
	.cfi_def_cfa 8, 0
	sw	a0,-436(s0)
	sw	a1,-440(s0)
	sw	a2,-444(s0)
	sw	a3,-448(s0)
	sw	a4,-452(s0)
	sw	zero,-20(s0)
	sw	zero,-24(s0)
	lw	a5,-440(s0)
	slli	a5,a5,2
	lw	a4,-444(s0)
	add	a5,a4,a5
	li	a4,1
	sw	a4,0(a5)
	lw	a4,-440(s0)
	lw	a5,-24(s0)
	addi	a3,a5,1
	sw	a3,-24(s0)
	addi	a3,s0,-432
	slli	a5,a5,2
	add	a5,a5,a3
	sw	a4,0(a5)
	j	.L30
.L34:
	lw	a5,-20(s0)
	addi	a4,a5,1
	sw	a4,-20(s0)
	addi	a4,s0,-432
	slli	a5,a5,2
	add	a5,a5,a4
	lw	a5,0(a5)
	sw	a5,-32(s0)
	lw	a4,-32(s0)
	lw	a3,-448(s0)
	lw	a5,-452(s0)
	lw	a5,0(a5)
	addi	a1,a5,1
	lw	a2,-452(s0)
	sw	a1,0(a2)
	slli	a5,a5,2
	add	a5,a3,a5
	sw	a4,0(a5)
	sw	zero,-28(s0)
	j	.L31
.L33:
	lw	a4,-32(s0)
	mv	a5,a4
	slli	a5,a5,1
	add	a5,a5,a4
	slli	a5,a5,2
	mv	a4,a5
	lw	a5,-436(s0)
	add	a4,a5,a4
	lw	a5,-28(s0)
	slli	a5,a5,2
	add	a5,a4,a5
	lw	a5,0(a5)
	beq	a5,zero,.L32
	lw	a5,-28(s0)
	slli	a5,a5,2
	lw	a4,-444(s0)
	add	a5,a4,a5
	lw	a5,0(a5)
	bne	a5,zero,.L32
	lw	a5,-28(s0)
	slli	a5,a5,2
	lw	a4,-444(s0)
	add	a5,a4,a5
	li	a4,1
	sw	a4,0(a5)
	lw	a4,-28(s0)
	lw	a5,-24(s0)
	addi	a3,a5,1
	sw	a3,-24(s0)
	addi	a3,s0,-432
	slli	a5,a5,2
	add	a5,a5,a3
	sw	a4,0(a5)
.L32:
	lw	a5,-28(s0)
	addi	a5,a5,1
	sw	a5,-28(s0)
.L31:
	lw	a4,-28(s0)
	li	a5,2
	ble	a4,a5,.L33
.L30:
	lw	a4,-20(s0)
	lw	a5,-24(s0)
	blt	a4,a5,.L34
	nop
	nop
	lw	ra,460(sp)
	.cfi_restore 1
	lw	s0,456(sp)
	.cfi_restore 8
	.cfi_def_cfa 2, 464
	addi	sp,sp,464
	.cfi_def_cfa_offset 0
	jr	ra
	.cfi_endproc
.LFE16:
	.size	_Z12bfsConnectedPA3_iiPiS1_S1_, .-_Z12bfsConnectedPA3_iiPiS1_S1_
	.align	1
	.globl	_Z3bfsPA3_iPiS1_
	.type	_Z3bfsPA3_iPiS1_, @function
_Z3bfsPA3_iPiS1_:
.LFB17:
	.cfi_startproc
	addi	sp,sp,-48
	.cfi_def_cfa_offset 48
	sw	ra,44(sp)
	sw	s0,40(sp)
	.cfi_offset 1, -4
	.cfi_offset 8, -8
	addi	s0,sp,48
	.cfi_def_cfa 8, 0
	sw	a0,-36(s0)
	sw	a1,-40(s0)
	sw	a2,-44(s0)
	sw	zero,-32(s0)
	sw	zero,-28(s0)
	sw	zero,-24(s0)
	sw	zero,-20(s0)
	j	.L36
.L38:
	lw	a4,-20(s0)
	addi	a5,s0,-32
	slli	a4,a4,2
	add	a5,a4,a5
	lw	a5,0(a5)
	bne	a5,zero,.L37
	addi	a5,s0,-32
	lw	a4,-44(s0)
	lw	a3,-40(s0)
	mv	a2,a5
	lw	a1,-20(s0)
	lw	a0,-36(s0)
	call	_Z12bfsConnectedPA3_iiPiS1_S1_
.L37:
	lw	a5,-20(s0)
	addi	a5,a5,1
	sw	a5,-20(s0)
.L36:
	lw	a4,-20(s0)
	li	a5,2
	ble	a4,a5,.L38
	nop
	nop
	lw	ra,44(sp)
	.cfi_restore 1
	lw	s0,40(sp)
	.cfi_restore 8
	.cfi_def_cfa 2, 48
	addi	sp,sp,48
	.cfi_def_cfa_offset 0
	jr	ra
	.cfi_endproc
.LFE17:
	.size	_Z3bfsPA3_iPiS1_, .-_Z3bfsPA3_iPiS1_
	.section	.rodata
	.align	2
.LC7:
	.string	"Sum of each column:"
	.align	2
.LC9:
	.string	"Initial rank vector r:"
	.align	2
.LC11:
	.string	"\n\n-------------------\n"
	.align	2
.LC12:
	.string	"Teleportation probability C:"
	.align	2
.LC13:
	.string	"\niteration %d: "
	.align	2
.LC14:
	.string	"\nThe new rank vector r:"
	.align	2
.LC15:
	.string	"\nConverged after %d iterations\n"
	.align	2
.LC16:
	.string	"Final rank vector r:"
	.text
	.align	1
	.globl	_Z8pageRankPA3_i
	.type	_Z8pageRankPA3_i, @function
_Z8pageRankPA3_i:
.LFB18:
	.cfi_startproc
	addi	sp,sp,-208
	.cfi_def_cfa_offset 208
	sw	ra,204(sp)
	sw	s0,200(sp)
	sw	s1,196(sp)
	sw	s2,192(sp)
	sw	s3,188(sp)
	.cfi_offset 1, -4
	.cfi_offset 8, -8
	.cfi_offset 9, -12
	.cfi_offset 18, -16
	.cfi_offset 19, -20
	addi	s0,sp,208
	.cfi_def_cfa 8, 0
	sw	a0,-196(s0)
	lui	a5,%hi(.LC5)
	lw	a5,%lo(.LC5)(a5)
	sw	a5,-80(s0)
	lui	a5,%hi(.LC6)
	lw	a5,%lo(.LC6)(a5)
	sw	a5,-84(s0)
	sw	zero,-100(s0)
	sw	zero,-96(s0)
	sw	zero,-92(s0)
	sw	zero,-36(s0)
	j	.L40
.L43:
	sw	zero,-40(s0)
	j	.L41
.L42:
	lw	a4,-36(s0)
	addi	a5,s0,-100
	slli	a4,a4,2
	add	a5,a4,a5
	lw	s1,0(a5)
	lw	a4,-40(s0)
	mv	a5,a4
	slli	a5,a5,1
	add	a5,a5,a4
	slli	a5,a5,2
	mv	a4,a5
	lw	a5,-196(s0)
	add	a4,a5,a4
	lw	a5,-36(s0)
	slli	a5,a5,2
	add	a5,a4,a5
	lw	a5,0(a5)
	mv	a0,a5
	call	__floatsisf
	mv	a5,a0
	mv	a1,a5
	mv	a0,s1
	call	__addsf3
	mv	a5,a0
	mv	a3,a5
	lw	a4,-36(s0)
	addi	a5,s0,-100
	slli	a4,a4,2
	add	a5,a4,a5
	sw	a3,0(a5)
	lw	a5,-40(s0)
	addi	a5,a5,1
	sw	a5,-40(s0)
.L41:
	lw	a4,-40(s0)
	li	a5,2
	ble	a4,a5,.L42
	lw	a5,-36(s0)
	addi	a5,a5,1
	sw	a5,-36(s0)
.L40:
	lw	a4,-36(s0)
	li	a5,2
	ble	a4,a5,.L43
	lui	a5,%hi(.LC7)
	addi	a0,a5,%lo(.LC7)
	call	puts
	addi	a5,s0,-100
	mv	a0,a5
	call	_Z10printArrayPf
	sw	zero,-136(s0)
	sw	zero,-132(s0)
	sw	zero,-128(s0)
	sw	zero,-124(s0)
	sw	zero,-120(s0)
	sw	zero,-116(s0)
	sw	zero,-112(s0)
	sw	zero,-108(s0)
	sw	zero,-104(s0)
	sw	zero,-44(s0)
	j	.L44
.L47:
	sw	zero,-48(s0)
	j	.L45
.L46:
	lw	a4,-44(s0)
	mv	a5,a4
	slli	a5,a5,1
	add	a5,a5,a4
	lw	a4,-48(s0)
	add	a4,a5,a4
	addi	a5,s0,-136
	slli	a4,a4,2
	add	a5,a4,a5
	lw	s1,0(a5)
	lw	a4,-44(s0)
	mv	a5,a4
	slli	a5,a5,1
	add	a5,a5,a4
	slli	a5,a5,2
	mv	a4,a5
	lw	a5,-196(s0)
	add	a4,a5,a4
	lw	a5,-48(s0)
	slli	a5,a5,2
	add	a5,a4,a5
	lw	a5,0(a5)
	mv	a0,a5
	call	__floatsisf
	mv	a3,a0
	lw	a4,-48(s0)
	addi	a5,s0,-100
	slli	a4,a4,2
	add	a5,a4,a5
	lw	a5,0(a5)
	mv	a1,a5
	mv	a0,a3
	call	__divsf3
	mv	a5,a0
	mv	a1,a5
	mv	a0,s1
	call	__addsf3
	mv	a5,a0
	mv	a3,a5
	lw	a4,-44(s0)
	mv	a5,a4
	slli	a5,a5,1
	add	a5,a5,a4
	lw	a4,-48(s0)
	add	a4,a5,a4
	addi	a5,s0,-136
	slli	a4,a4,2
	add	a5,a4,a5
	sw	a3,0(a5)
	lw	a5,-48(s0)
	addi	a5,a5,1
	sw	a5,-48(s0)
.L45:
	lw	a4,-48(s0)
	li	a5,2
	ble	a4,a5,.L46
	li	a0,10
	call	putchar
	lw	a5,-44(s0)
	addi	a5,a5,1
	sw	a5,-44(s0)
.L44:
	lw	a4,-44(s0)
	li	a5,2
	ble	a4,a5,.L47
	sw	zero,-52(s0)
	j	.L48
.L49:
	lw	a4,-52(s0)
	addi	a5,s0,-148
	slli	a4,a4,2
	add	a5,a4,a5
	lui	a4,%hi(.LC8)
	lw	a4,%lo(.LC8)(a4)
	sw	a4,0(a5)
	lw	a5,-52(s0)
	addi	a5,a5,1
	sw	a5,-52(s0)
.L48:
	lw	a4,-52(s0)
	li	a5,2
	ble	a4,a5,.L49
	lui	a5,%hi(.LC9)
	addi	a0,a5,%lo(.LC9)
	call	puts
	addi	a5,s0,-148
	mv	a0,a5
	call	_Z10printArrayPf
	sw	zero,-56(s0)
	j	.L50
.L51:
	lw	a0,-84(s0)
	call	__extendsfdf2
	mv	a4,a0
	mv	a5,a1
	lui	a1,%hi(.LC10)
	mv	a2,a4
	mv	a3,a5
	lw	a0,%lo(.LC10)(a1)
	lw	a1,%lo(.LC10+4)(a1)
	call	__subdf3
	mv	a4,a0
	mv	a5,a1
	mv	s2,a4
	mv	s3,a5
	lw	a4,-56(s0)
	addi	a5,s0,-148
	slli	a4,a4,2
	add	a5,a4,a5
	lw	a5,0(a5)
	mv	a0,a5
	call	__extendsfdf2
	mv	a4,a0
	mv	a5,a1
	mv	a2,a4
	mv	a3,a5
	mv	a0,s2
	mv	a1,s3
	call	__muldf3
	mv	a4,a0
	mv	a5,a1
	mv	a0,a4
	mv	a1,a5
	call	__truncdfsf2
	mv	a3,a0
	lw	a4,-56(s0)
	addi	a5,s0,-160
	slli	a4,a4,2
	add	a5,a4,a5
	sw	a3,0(a5)
	lw	a5,-56(s0)
	addi	a5,a5,1
	sw	a5,-56(s0)
.L50:
	lw	a4,-56(s0)
	li	a5,2
	ble	a4,a5,.L51
	lui	a5,%hi(.LC11)
	addi	a0,a5,%lo(.LC11)
	call	puts
	lui	a5,%hi(.LC12)
	addi	a0,a5,%lo(.LC12)
	call	puts
	addi	a5,s0,-160
	mv	a0,a5
	call	_Z10printArrayPf
	sw	zero,-60(s0)
	j	.L52
.L53:
	lw	a4,-60(s0)
	addi	a5,s0,-148
	slli	a4,a4,2
	add	a5,a4,a5
	lw	a4,0(a5)
	lw	a3,-60(s0)
	addi	a5,s0,-172
	slli	a3,a3,2
	add	a5,a3,a5
	sw	a4,0(a5)
	lw	a5,-60(s0)
	addi	a5,a5,1
	sw	a5,-60(s0)
.L52:
	lw	a4,-60(s0)
	li	a5,2
	ble	a4,a5,.L53
	sw	zero,-64(s0)
	j	.L54
.L65:
	sw	zero,-184(s0)
	sw	zero,-180(s0)
	sw	zero,-176(s0)
	lw	a1,-64(s0)
	lui	a5,%hi(.LC13)
	addi	a0,a5,%lo(.LC13)
	call	printf
	sw	zero,-68(s0)
	j	.L55
.L58:
	sw	zero,-72(s0)
	j	.L56
.L57:
	lw	a4,-68(s0)
	addi	a5,s0,-184
	slli	a4,a4,2
	add	a5,a4,a5
	lw	s1,0(a5)
	lw	a4,-68(s0)
	mv	a5,a4
	slli	a5,a5,1
	add	a5,a5,a4
	lw	a4,-72(s0)
	add	a4,a5,a4
	addi	a5,s0,-136
	slli	a4,a4,2
	add	a5,a4,a5
	lw	a3,0(a5)
	lw	a4,-72(s0)
	addi	a5,s0,-172
	slli	a4,a4,2
	add	a5,a4,a5
	lw	a5,0(a5)
	mv	a1,a5
	mv	a0,a3
	call	__mulsf3
	mv	a5,a0
	mv	a1,a5
	mv	a0,s1
	call	__addsf3
	mv	a5,a0
	mv	a3,a5
	lw	a4,-68(s0)
	addi	a5,s0,-184
	slli	a4,a4,2
	add	a5,a4,a5
	sw	a3,0(a5)
	lw	a5,-72(s0)
	addi	a5,a5,1
	sw	a5,-72(s0)
.L56:
	lw	a4,-72(s0)
	li	a5,2
	ble	a4,a5,.L57
	lw	a4,-68(s0)
	addi	a5,s0,-184
	slli	a4,a4,2
	add	a5,a4,a5
	lw	a5,0(a5)
	lw	a1,-84(s0)
	mv	a0,a5
	call	__mulsf3
	mv	a5,a0
	mv	a3,a5
	lw	a4,-68(s0)
	addi	a5,s0,-160
	slli	a4,a4,2
	add	a5,a4,a5
	lw	a5,0(a5)
	mv	a1,a5
	mv	a0,a3
	call	__addsf3
	mv	a5,a0
	mv	a3,a5
	lw	a4,-68(s0)
	addi	a5,s0,-148
	slli	a4,a4,2
	add	a5,a4,a5
	sw	a3,0(a5)
	lw	a5,-68(s0)
	addi	a5,a5,1
	sw	a5,-68(s0)
.L55:
	lw	a4,-68(s0)
	li	a5,2
	ble	a4,a5,.L58
	lui	a5,%hi(.LC14)
	addi	a0,a5,%lo(.LC14)
	call	puts
	addi	a5,s0,-148
	mv	a0,a5
	call	_Z10printArrayPf
	lw	a5,-148(s0)
	lw	a4,-172(s0)
	mv	a1,a4
	mv	a0,a5
	call	__subsf3
	mv	a5,a0
	mv	a0,a5
	call	_ZSt3absf
	sw	a0,-88(s0)
	lw	a1,-80(s0)
	lw	a0,-88(s0)
	call	__ltsf2
	mv	a5,a0
	bge	a5,zero,.L67
	lw	a1,-64(s0)
	lui	a5,%hi(.LC15)
	addi	a0,a5,%lo(.LC15)
	call	printf
	lui	a5,%hi(.LC16)
	addi	a0,a5,%lo(.LC16)
	call	puts
	addi	a5,s0,-148
	mv	a0,a5
	call	_Z10printArrayPf
	j	.L68
.L67:
	sw	zero,-76(s0)
	j	.L62
.L63:
	lw	a4,-76(s0)
	addi	a5,s0,-148
	slli	a4,a4,2
	add	a5,a4,a5
	lw	a4,0(a5)
	lw	a3,-76(s0)
	addi	a5,s0,-172
	slli	a3,a3,2
	add	a5,a3,a5
	sw	a4,0(a5)
	lw	a5,-76(s0)
	addi	a5,a5,1
	sw	a5,-76(s0)
.L62:
	lw	a4,-76(s0)
	li	a5,2
	ble	a4,a5,.L63
	lw	a5,-64(s0)
	addi	a5,a5,1
	sw	a5,-64(s0)
.L54:
	lw	a4,-64(s0)
	li	a5,1000
	ble	a4,a5,.L65
.L68:
	nop
	lw	ra,204(sp)
	.cfi_restore 1
	lw	s0,200(sp)
	.cfi_restore 8
	.cfi_def_cfa 2, 208
	lw	s1,196(sp)
	.cfi_restore 9
	lw	s2,192(sp)
	.cfi_restore 18
	lw	s3,188(sp)
	.cfi_restore 19
	addi	sp,sp,208
	.cfi_def_cfa_offset 0
	jr	ra
	.cfi_endproc
.LFE18:
	.size	_Z8pageRankPA3_i, .-_Z8pageRankPA3_i
	.section	.rodata
	.align	2
.LC17:
	.string	"%c "
	.align	2
.LC18:
	.string	"PageRank:"
	.text
	.align	1
	.globl	main
	.type	main, @function
main:
.LFB19:
	.cfi_startproc
	addi	sp,sp,-80
	.cfi_def_cfa_offset 80
	sw	ra,76(sp)
	sw	s0,72(sp)
	.cfi_offset 1, -4
	.cfi_offset 8, -8
	addi	s0,sp,80
	.cfi_def_cfa 8, 0
	addi	a5,s0,-60
	mv	a0,a5
	call	_Z9initGraphP5Graph
	addi	a5,s0,-60
	li	a2,65
	li	a1,0
	mv	a0,a5
	call	_Z13addVertexDataP5Graphic
	addi	a5,s0,-60
	li	a2,66
	li	a1,1
	mv	a0,a5
	call	_Z13addVertexDataP5Graphic
	addi	a5,s0,-60
	li	a2,67
	li	a1,2
	mv	a0,a5
	call	_Z13addVertexDataP5Graphic
	addi	a5,s0,-60
	li	a2,2
	li	a1,0
	mv	a0,a5
	call	_Z7addEdgeP5Graphii
	addi	a5,s0,-60
	li	a2,0
	li	a1,1
	mv	a0,a5
	call	_Z7addEdgeP5Graphii
	addi	a5,s0,-60
	li	a2,2
	li	a1,1
	mv	a0,a5
	call	_Z7addEdgeP5Graphii
	addi	a5,s0,-60
	li	a2,0
	li	a1,2
	mv	a0,a5
	call	_Z7addEdgeP5Graphii
	addi	a5,s0,-60
	li	a2,1
	li	a1,2
	mv	a0,a5
	call	_Z7addEdgeP5Graphii
	addi	a5,s0,-60
	li	a2,2
	li	a1,2
	mv	a0,a5
	call	_Z7addEdgeP5Graphii
	sw	zero,-76(s0)
	addi	a3,s0,-76
	addi	a4,s0,-72
	addi	a5,s0,-60
	mv	a2,a3
	mv	a1,a4
	mv	a0,a5
	call	_Z3bfsPA3_iPiS1_
	sw	zero,-20(s0)
	j	.L70
.L71:
	lw	a4,-20(s0)
	addi	a5,s0,-72
	slli	a4,a4,2
	add	a5,a4,a5
	lw	a5,0(a5)
	addi	a4,s0,-16
	add	a5,a4,a5
	lbu	a5,-8(a5)
	mv	a1,a5
	lui	a5,%hi(.LC17)
	addi	a0,a5,%lo(.LC17)
	call	printf
	lw	a5,-20(s0)
	addi	a5,a5,1
	sw	a5,-20(s0)
.L70:
	lw	a5,-76(s0)
	lw	a4,-20(s0)
	blt	a4,a5,.L71
	li	a0,10
	call	putchar
	li	a0,10
	call	putchar
	lui	a5,%hi(.LC18)
	addi	a0,a5,%lo(.LC18)
	call	puts
	addi	a5,s0,-60
	mv	a0,a5
	call	_Z8pageRankPA3_i
	li	a0,10
	call	putchar
	li	a0,10
	call	putchar
	addi	a5,s0,-60
	mv	a0,a5
	call	_Z10printGraphP5Graph
	li	a5,0
	mv	a0,a5
	lw	ra,76(sp)
	.cfi_restore 1
	lw	s0,72(sp)
	.cfi_restore 8
	.cfi_def_cfa 2, 80
	addi	sp,sp,80
	.cfi_def_cfa_offset 0
	jr	ra
	.cfi_endproc
.LFE19:
	.size	main, .-main
	.section	.rodata
	.align	2
.LC5:
	.word	925353388
	.align	2
.LC6:
	.word	1061997773
	.align	2
.LC8:
	.word	1051372203
	.align	3
.LC10:
	.word	0
	.word	1072693248
	.globl	__ltsf2
	.globl	__subsf3
	.globl	__mulsf3
	.globl	__truncdfsf2
	.globl	__muldf3
	.globl	__subdf3
	.globl	__divsf3
	.globl	__addsf3
	.globl	__floatsisf
	.globl	__extendsfdf2
	.ident	"GCC: (g6afcc4f6da) 16.1.0"
	.section	.note.GNU-stack,"",@progbits
