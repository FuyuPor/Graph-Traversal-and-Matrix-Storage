	.file	"sparse_matrix.cpp"
	.option nopic
	.attribute arch, "rv32i2p1_m2p0_a2p1_c2p0_zmmul1p0_zaamo1p0_zalrsc1p0_zca1p0"
	.attribute unaligned_access, 0
	.attribute stack_align, 16
	.text
	.align	1
	.globl	_Z24create_sparse_coordinatePKdjjjP17Sparse_Coordinate
	.type	_Z24create_sparse_coordinatePKdjjjP17Sparse_Coordinate, @function
_Z24create_sparse_coordinatePKdjjjP17Sparse_Coordinate:
.LFB10:
	.cfi_startproc
	addi	sp,sp,-64
	.cfi_def_cfa_offset 64
	sw	ra,60(sp)
	sw	s0,56(sp)
	.cfi_offset 1, -4
	.cfi_offset 8, -8
	addi	s0,sp,64
	.cfi_def_cfa 8, 0
	sw	a0,-36(s0)
	sw	a1,-40(s0)
	sw	a2,-44(s0)
	sw	a3,-48(s0)
	sw	a4,-52(s0)
	lw	a5,-52(s0)
	lw	a4,-40(s0)
	sw	a4,0(a5)
	lw	a5,-52(s0)
	lw	a4,-44(s0)
	sw	a4,4(a5)
	lw	a5,-52(s0)
	lw	a4,-48(s0)
	sw	a4,8(a5)
	li	a1,4
	lw	a0,-48(s0)
	call	calloc
	mv	a5,a0
	mv	a4,a5
	lw	a5,-52(s0)
	sw	a4,12(a5)
	li	a1,4
	lw	a0,-48(s0)
	call	calloc
	mv	a5,a0
	mv	a4,a5
	lw	a5,-52(s0)
	sw	a4,16(a5)
	li	a1,8
	lw	a0,-48(s0)
	call	calloc
	mv	a5,a0
	mv	a4,a5
	lw	a5,-52(s0)
	sw	a4,20(a5)
	sw	zero,-20(s0)
	sw	zero,-24(s0)
	j	.L2
.L7:
	sw	zero,-28(s0)
	j	.L3
.L6:
	lw	a4,-24(s0)
	lw	a5,-44(s0)
	mul	a4,a4,a5
	lw	a5,-28(s0)
	add	a5,a4,a5
	slli	a5,a5,3
	lw	a4,-36(s0)
	add	a5,a4,a5
	lw	a4,0(a5)
	lw	a5,4(a5)
	li	a2,0
	li	a3,0
	mv	a0,a4
	mv	a1,a5
	call	__nedf2
	mv	a5,a0
	beq	a5,zero,.L4
	lw	a5,-52(s0)
	lw	a4,12(a5)
	lw	a5,-20(s0)
	slli	a5,a5,2
	add	a5,a4,a5
	lw	a4,-24(s0)
	sw	a4,0(a5)
	lw	a5,-52(s0)
	lw	a4,16(a5)
	lw	a5,-20(s0)
	slli	a5,a5,2
	add	a5,a4,a5
	lw	a4,-28(s0)
	sw	a4,0(a5)
	lw	a4,-24(s0)
	lw	a5,-44(s0)
	mul	a4,a4,a5
	lw	a5,-28(s0)
	add	a5,a4,a5
	slli	a5,a5,3
	lw	a4,-36(s0)
	add	a5,a4,a5
	lw	a4,-52(s0)
	lw	a3,20(a4)
	lw	a4,-20(s0)
	slli	a4,a4,3
	add	a3,a3,a4
	lw	a4,0(a5)
	lw	a5,4(a5)
	sw	a4,0(a3)
	sw	a5,4(a3)
	lw	a5,-20(s0)
	addi	a5,a5,1
	sw	a5,-20(s0)
.L4:
	lw	a5,-28(s0)
	addi	a5,a5,1
	sw	a5,-28(s0)
.L3:
	lw	a4,-28(s0)
	lw	a5,-44(s0)
	bltu	a4,a5,.L6
	lw	a5,-24(s0)
	addi	a5,a5,1
	sw	a5,-24(s0)
.L2:
	lw	a4,-24(s0)
	lw	a5,-40(s0)
	bltu	a4,a5,.L7
	li	a5,0
	mv	a0,a5
	lw	ra,60(sp)
	.cfi_restore 1
	lw	s0,56(sp)
	.cfi_restore 8
	.cfi_def_cfa 2, 64
	addi	sp,sp,64
	.cfi_def_cfa_offset 0
	jr	ra
	.cfi_endproc
.LFE10:
	.size	_Z24create_sparse_coordinatePKdjjjP17Sparse_Coordinate, .-_Z24create_sparse_coordinatePKdjjjP17Sparse_Coordinate
	.section	.rodata
	.align	2
.LC2:
	.string	"Sparse Matrix in COO format:"
	.align	2
.LC3:
	.string	"-------------------"
	.align	2
.LC4:
	.string	"row\tcol\tval"
	.align	2
.LC5:
	.string	"%zu\t%zu\t%2.2f\n"
	.text
	.align	1
	.globl	_Z23print_sparse_coordinatePK17Sparse_Coordinate
	.type	_Z23print_sparse_coordinatePK17Sparse_Coordinate, @function
_Z23print_sparse_coordinatePK17Sparse_Coordinate:
.LFB11:
	.cfi_startproc
	addi	sp,sp,-64
	.cfi_def_cfa_offset 64
	sw	ra,60(sp)
	sw	s0,56(sp)
	.cfi_offset 1, -4
	.cfi_offset 8, -8
	addi	s0,sp,64
	.cfi_def_cfa 8, 0
	sw	a0,-52(s0)
	li	a0,10
	call	putchar
	lui	a5,%hi(.LC2)
	addi	a0,a5,%lo(.LC2)
	call	puts
	lui	a5,%hi(.LC3)
	addi	a0,a5,%lo(.LC3)
	call	puts
	lui	a5,%hi(.LC4)
	addi	a0,a5,%lo(.LC4)
	call	puts
	lui	a5,%hi(.LC3)
	addi	a0,a5,%lo(.LC3)
	call	puts
	sw	zero,-20(s0)
	j	.L11
.L12:
	lw	a5,-52(s0)
	lw	a4,12(a5)
	lw	a5,-20(s0)
	slli	a5,a5,2
	add	a5,a4,a5
	lw	a5,0(a5)
	sw	a5,-24(s0)
	lw	a5,-52(s0)
	lw	a4,16(a5)
	lw	a5,-20(s0)
	slli	a5,a5,2
	add	a5,a4,a5
	lw	a5,0(a5)
	sw	a5,-28(s0)
	lw	a5,-52(s0)
	lw	a4,20(a5)
	lw	a5,-20(s0)
	slli	a5,a5,3
	add	a5,a4,a5
	lw	a4,0(a5)
	lw	a5,4(a5)
	sw	a4,-40(s0)
	sw	a5,-36(s0)
	lw	a4,-40(s0)
	lw	a5,-36(s0)
	lw	a2,-28(s0)
	lw	a1,-24(s0)
	lui	a3,%hi(.LC5)
	addi	a0,a3,%lo(.LC5)
	call	printf
	lw	a5,-20(s0)
	addi	a5,a5,1
	sw	a5,-20(s0)
.L11:
	lw	a5,-52(s0)
	lw	a5,8(a5)
	lw	a4,-20(s0)
	bltu	a4,a5,.L12
	li	a5,0
	mv	a0,a5
	lw	ra,60(sp)
	.cfi_restore 1
	lw	s0,56(sp)
	.cfi_restore 8
	.cfi_def_cfa 2, 64
	addi	sp,sp,64
	.cfi_def_cfa_offset 0
	jr	ra
	.cfi_endproc
.LFE11:
	.size	_Z23print_sparse_coordinatePK17Sparse_Coordinate, .-_Z23print_sparse_coordinatePK17Sparse_Coordinate
	.align	1
	.globl	_Z31matrix_vector_sparse_coordinatePK17Sparse_CoordinatePKdPd
	.type	_Z31matrix_vector_sparse_coordinatePK17Sparse_CoordinatePKdPd, @function
_Z31matrix_vector_sparse_coordinatePK17Sparse_CoordinatePKdPd:
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
	sw	a2,-28(s0)
	li	a5,0
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
.LFE12:
	.size	_Z31matrix_vector_sparse_coordinatePK17Sparse_CoordinatePKdPd, .-_Z31matrix_vector_sparse_coordinatePK17Sparse_CoordinatePKdPd
	.align	1
	.globl	_Z22free_sparse_coordinateP17Sparse_Coordinate
	.type	_Z22free_sparse_coordinateP17Sparse_Coordinate, @function
_Z22free_sparse_coordinateP17Sparse_Coordinate:
.LFB13:
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
	lw	a5,12(a5)
	mv	a0,a5
	call	free
	lw	a5,-20(s0)
	lw	a5,16(a5)
	mv	a0,a5
	call	free
	lw	a5,-20(s0)
	lw	a5,20(a5)
	mv	a0,a5
	call	free
	li	a5,0
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
.LFE13:
	.size	_Z22free_sparse_coordinateP17Sparse_Coordinate, .-_Z22free_sparse_coordinateP17Sparse_Coordinate
	.align	1
	.globl	_Z17create_sparse_csrPKdjjjP10Sparse_CSR
	.type	_Z17create_sparse_csrPKdjjjP10Sparse_CSR, @function
_Z17create_sparse_csrPKdjjjP10Sparse_CSR:
.LFB14:
	.cfi_startproc
	addi	sp,sp,-64
	.cfi_def_cfa_offset 64
	sw	ra,60(sp)
	sw	s0,56(sp)
	.cfi_offset 1, -4
	.cfi_offset 8, -8
	addi	s0,sp,64
	.cfi_def_cfa 8, 0
	sw	a0,-36(s0)
	sw	a1,-40(s0)
	sw	a2,-44(s0)
	sw	a3,-48(s0)
	sw	a4,-52(s0)
	lw	a5,-52(s0)
	lw	a4,-40(s0)
	sw	a4,0(a5)
	lw	a5,-52(s0)
	lw	a4,-44(s0)
	sw	a4,4(a5)
	lw	a5,-52(s0)
	lw	a4,-48(s0)
	sw	a4,8(a5)
	lw	a5,-40(s0)
	addi	a5,a5,1
	li	a1,4
	mv	a0,a5
	call	calloc
	mv	a5,a0
	mv	a4,a5
	lw	a5,-52(s0)
	sw	a4,12(a5)
	li	a1,4
	lw	a0,-48(s0)
	call	calloc
	mv	a5,a0
	mv	a4,a5
	lw	a5,-52(s0)
	sw	a4,16(a5)
	li	a1,8
	lw	a0,-48(s0)
	call	calloc
	mv	a5,a0
	mv	a4,a5
	lw	a5,-52(s0)
	sw	a4,20(a5)
	sw	zero,-20(s0)
	sw	zero,-24(s0)
	j	.L19
.L24:
	lw	a5,-52(s0)
	lw	a4,12(a5)
	lw	a5,-24(s0)
	slli	a5,a5,2
	add	a5,a4,a5
	lw	a4,-20(s0)
	sw	a4,0(a5)
	sw	zero,-28(s0)
	j	.L20
.L23:
	lw	a4,-24(s0)
	lw	a5,-44(s0)
	mul	a4,a4,a5
	lw	a5,-28(s0)
	add	a5,a4,a5
	slli	a5,a5,3
	lw	a4,-36(s0)
	add	a5,a4,a5
	lw	a4,0(a5)
	lw	a5,4(a5)
	li	a2,0
	li	a3,0
	mv	a0,a4
	mv	a1,a5
	call	__nedf2
	mv	a5,a0
	beq	a5,zero,.L21
	lw	a5,-52(s0)
	lw	a4,16(a5)
	lw	a5,-20(s0)
	slli	a5,a5,2
	add	a5,a4,a5
	lw	a4,-28(s0)
	sw	a4,0(a5)
	lw	a4,-24(s0)
	lw	a5,-44(s0)
	mul	a4,a4,a5
	lw	a5,-28(s0)
	add	a5,a4,a5
	slli	a5,a5,3
	lw	a4,-36(s0)
	add	a5,a4,a5
	lw	a4,-52(s0)
	lw	a3,20(a4)
	lw	a4,-20(s0)
	slli	a4,a4,3
	add	a3,a3,a4
	lw	a4,0(a5)
	lw	a5,4(a5)
	sw	a4,0(a3)
	sw	a5,4(a3)
	lw	a5,-20(s0)
	addi	a5,a5,1
	sw	a5,-20(s0)
.L21:
	lw	a5,-28(s0)
	addi	a5,a5,1
	sw	a5,-28(s0)
.L20:
	lw	a4,-28(s0)
	lw	a5,-44(s0)
	bltu	a4,a5,.L23
	lw	a5,-24(s0)
	addi	a5,a5,1
	sw	a5,-24(s0)
.L19:
	lw	a4,-24(s0)
	lw	a5,-40(s0)
	bltu	a4,a5,.L24
	lw	a5,-52(s0)
	lw	a4,12(a5)
	lw	a5,-40(s0)
	slli	a5,a5,2
	add	a5,a4,a5
	lw	a4,-20(s0)
	sw	a4,0(a5)
	li	a5,0
	mv	a0,a5
	lw	ra,60(sp)
	.cfi_restore 1
	lw	s0,56(sp)
	.cfi_restore 8
	.cfi_def_cfa 2, 64
	addi	sp,sp,64
	.cfi_def_cfa_offset 0
	jr	ra
	.cfi_endproc
.LFE14:
	.size	_Z17create_sparse_csrPKdjjjP10Sparse_CSR, .-_Z17create_sparse_csrPKdjjjP10Sparse_CSR
	.section	.rodata
	.align	2
.LC6:
	.string	"Sparse Matrix in CSR format:"
	.text
	.align	1
	.globl	_Z16print_sparse_csrPK10Sparse_CSR
	.type	_Z16print_sparse_csrPK10Sparse_CSR, @function
_Z16print_sparse_csrPK10Sparse_CSR:
.LFB15:
	.cfi_startproc
	addi	sp,sp,-64
	.cfi_def_cfa_offset 64
	sw	ra,60(sp)
	sw	s0,56(sp)
	.cfi_offset 1, -4
	.cfi_offset 8, -8
	addi	s0,sp,64
	.cfi_def_cfa 8, 0
	sw	a0,-52(s0)
	li	a0,10
	call	putchar
	lui	a5,%hi(.LC6)
	addi	a0,a5,%lo(.LC6)
	call	puts
	lui	a5,%hi(.LC3)
	addi	a0,a5,%lo(.LC3)
	call	puts
	lui	a5,%hi(.LC4)
	addi	a0,a5,%lo(.LC4)
	call	puts
	lui	a5,%hi(.LC3)
	addi	a0,a5,%lo(.LC3)
	call	puts
	sw	zero,-20(s0)
	j	.L28
.L31:
	lw	a5,-52(s0)
	lw	a4,12(a5)
	lw	a5,-20(s0)
	slli	a5,a5,2
	add	a5,a4,a5
	lw	a5,0(a5)
	sw	a5,-28(s0)
	lw	a5,-52(s0)
	lw	a4,12(a5)
	lw	a5,-20(s0)
	addi	a5,a5,1
	slli	a5,a5,2
	add	a5,a4,a5
	lw	a5,0(a5)
	sw	a5,-32(s0)
	lw	a5,-28(s0)
	sw	a5,-24(s0)
	j	.L29
.L30:
	lw	a5,-52(s0)
	lw	a4,16(a5)
	lw	a5,-24(s0)
	slli	a5,a5,2
	add	a5,a4,a5
	lw	a5,0(a5)
	sw	a5,-36(s0)
	lw	a5,-52(s0)
	lw	a4,20(a5)
	lw	a5,-24(s0)
	slli	a5,a5,3
	add	a5,a4,a5
	lw	a4,0(a5)
	lw	a5,4(a5)
	sw	a4,-48(s0)
	sw	a5,-44(s0)
	lw	a4,-48(s0)
	lw	a5,-44(s0)
	lw	a2,-36(s0)
	lw	a1,-20(s0)
	lui	a3,%hi(.LC5)
	addi	a0,a3,%lo(.LC5)
	call	printf
	lw	a5,-24(s0)
	addi	a5,a5,1
	sw	a5,-24(s0)
.L29:
	lw	a4,-24(s0)
	lw	a5,-32(s0)
	bltu	a4,a5,.L30
	lw	a5,-20(s0)
	addi	a5,a5,1
	sw	a5,-20(s0)
.L28:
	lw	a5,-52(s0)
	lw	a5,0(a5)
	lw	a4,-20(s0)
	bltu	a4,a5,.L31
	li	a5,0
	mv	a0,a5
	lw	ra,60(sp)
	.cfi_restore 1
	lw	s0,56(sp)
	.cfi_restore 8
	.cfi_def_cfa 2, 64
	addi	sp,sp,64
	.cfi_def_cfa_offset 0
	jr	ra
	.cfi_endproc
.LFE15:
	.size	_Z16print_sparse_csrPK10Sparse_CSR, .-_Z16print_sparse_csrPK10Sparse_CSR
	.align	1
	.globl	_Z15free_sparse_csrP10Sparse_CSR
	.type	_Z15free_sparse_csrP10Sparse_CSR, @function
_Z15free_sparse_csrP10Sparse_CSR:
.LFB16:
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
	lw	a5,12(a5)
	mv	a0,a5
	call	free
	lw	a5,-20(s0)
	lw	a5,16(a5)
	mv	a0,a5
	call	free
	lw	a5,-20(s0)
	lw	a5,20(a5)
	mv	a0,a5
	call	free
	li	a5,0
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
.LFE16:
	.size	_Z15free_sparse_csrP10Sparse_CSR, .-_Z15free_sparse_csrP10Sparse_CSR
	.section	.rodata
	.align	3
.LC0:
	.word	0
	.word	1072693248
	.word	0
	.word	0
	.word	0
	.word	0
	.word	0
	.word	1073741824
	.word	0
	.word	0
	.word	0
	.word	1074266112
	.word	0
	.word	1074790400
	.word	0
	.word	1073741824
	.word	0
	.word	1075052544
	.word	0
	.word	0
	.word	0
	.word	1075052544
	.word	0
	.word	0
	.word	0
	.word	0
	.word	0
	.word	1075838976
	.word	0
	.word	1076953088
	.word	0
	.word	0
	.word	0
	.word	0
	.word	0
	.word	1076101120
	.word	0
	.word	1076887552
	.word	0
	.word	0
	.word	0
	.word	0
	.word	0
	.word	0
	.word	0
	.word	0
	.word	0
	.word	0
	.word	0
	.word	1076625408
	.align	3
.LC1:
	.word	0
	.word	1072693248
	.word	0
	.word	1073741824
	.word	0
	.word	1074266112
	.word	0
	.word	1074790400
	.word	0
	.word	1075052544
	.text
	.align	1
	.globl	main
	.type	main, @function
main:
.LFB17:
	.cfi_startproc
	addi	sp,sp,-384
	.cfi_def_cfa_offset 384
	sw	ra,380(sp)
	sw	s0,376(sp)
	.cfi_offset 1, -4
	.cfi_offset 8, -8
	addi	s0,sp,384
	.cfi_def_cfa 8, 0
	sw	a0,-372(s0)
	sw	a1,-376(s0)
	li	a5,5
	sw	a5,-20(s0)
	li	a5,5
	sw	a5,-24(s0)
	li	a5,12
	sw	a5,-28(s0)
	lui	a5,%hi(.LC0)
	addi	a4,a5,%lo(.LC0)
	addi	a5,s0,-232
	mv	a3,a4
	li	a4,200
	mv	a2,a4
	mv	a1,a3
	mv	a0,a5
	call	memcpy
	lui	a5,%hi(.LC1)
	addi	a5,a5,%lo(.LC1)
	lw	t3,0(a5)
	lw	t1,4(a5)
	lw	a7,8(a5)
	lw	a6,12(a5)
	lw	a0,16(a5)
	lw	a1,20(a5)
	lw	a2,24(a5)
	lw	a3,28(a5)
	lw	a4,32(a5)
	sw	t3,-272(s0)
	sw	t1,-268(s0)
	sw	a7,-264(s0)
	sw	a6,-260(s0)
	sw	a0,-256(s0)
	sw	a1,-252(s0)
	sw	a2,-248(s0)
	sw	a3,-244(s0)
	sw	a4,-240(s0)
	lw	a5,36(a5)
	sw	a5,-236(s0)
	addi	a4,s0,-336
	addi	a5,s0,-232
	lw	a3,-28(s0)
	lw	a2,-24(s0)
	lw	a1,-20(s0)
	mv	a0,a5
	call	_Z24create_sparse_coordinatePKdjjjP17Sparse_Coordinate
	addi	a5,s0,-336
	mv	a0,a5
	call	_Z23print_sparse_coordinatePK17Sparse_Coordinate
	addi	a5,s0,-336
	mv	a0,a5
	call	_Z22free_sparse_coordinateP17Sparse_Coordinate
	addi	a4,s0,-360
	addi	a5,s0,-232
	lw	a3,-28(s0)
	lw	a2,-24(s0)
	lw	a1,-20(s0)
	mv	a0,a5
	call	_Z17create_sparse_csrPKdjjjP10Sparse_CSR
	addi	a5,s0,-360
	mv	a0,a5
	call	_Z16print_sparse_csrPK10Sparse_CSR
	addi	a5,s0,-360
	mv	a0,a5
	call	_Z15free_sparse_csrP10Sparse_CSR
	li	a5,0
	mv	a0,a5
	lw	ra,380(sp)
	.cfi_restore 1
	lw	s0,376(sp)
	.cfi_restore 8
	.cfi_def_cfa 2, 384
	addi	sp,sp,384
	.cfi_def_cfa_offset 0
	jr	ra
	.cfi_endproc
.LFE17:
	.size	main, .-main
	.globl	__nedf2
	.ident	"GCC: (g6afcc4f6da) 16.1.0"
	.section	.note.GNU-stack,"",@progbits
