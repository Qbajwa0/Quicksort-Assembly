	.section	__TEXT,__text,regular,pure_instructions
	.build_version macos, 15, 0	sdk_version 15, 1
	.globl	__Z4swapRiS_                    ## -- Begin function _Z4swapRiS_
	.p2align	4, 0x90
__Z4swapRiS_:                           ## @_Z4swapRiS_
.cfi_startproc
## %bb.0:
pushq    %rbp
.cfi_def_cfa_offset 16
.cfi_offset %rbp, -16
movq    %rsp, %rbp
.cfi_def_cfa_register %rbp
movq    %rdi, -8(%rbp)
movq    %rsi, -16(%rbp)
movq    -8(%rbp), %rax
movl    (%rax), %eax
movl    %eax, -20(%rbp)
movq    -16(%rbp), %rax
movl    (%rax), %ecx
movq    -8(%rbp), %rax
movl    %ecx, (%rax)
movl    -20(%rbp), %ecx
movq    -16(%rbp), %rax
movl    %ecx, (%rax)
popq    %rbp
retq
.cfi_endproc
                                        ## -- End function
	.globl	__Z9partitionPiii               ## -- Begin function _Z9partitionPiii
	.p2align	4, 0x90
__Z9partitionPiii:                      ## @_Z9partitionPiii
	.cfi_startproc
## %bb.0:
	pushq	%rbp
	.cfi_def_cfa_offset 16
	.cfi_offset %rbp, -16
	movq	%rsp, %rbp
	.cfi_def_cfa_register %rbp
                                        ## kill: def $esi killed $esi def $rsi
	movslq	%edx, %rcx
	movl	(%rdi,%rcx,4), %r8d
	leal	-1(%rsi), %eax
	cmpl	%ecx, %esi
	jge	LBB1_7
## %bb.1:
	movslq	%esi, %r9
	subl	%esi, %edx
	movq	%r9, %r10
	notq	%r10
	testb	$1, %dl
	je	LBB1_5
## %bb.2:
	movl	(%rdi,%r9,4), %edx
	cmpl	%r8d, %edx
	jg	LBB1_4
## %bb.3:
	movl	(%rdi,%r9,4), %eax
	movl	%edx, (%rdi,%r9,4)
	movl	%eax, (%rdi,%r9,4)
	movl	%esi, %eax
LBB1_4:
	incq	%r9
LBB1_5:
	addq	%rcx, %r10
	jne	LBB1_8
LBB1_6:
	movl	(%rdi,%rcx,4), %r8d
LBB1_7:
	movslq	%eax, %rdx
	incl	%eax
	movl	4(%rdi,%rdx,4), %esi
	movl	%r8d, 4(%rdi,%rdx,4)
	movl	%esi, (%rdi,%rcx,4)
	popq	%rbp
	retq
	.p2align	4, 0x90
LBB1_12:                                ##   in Loop: Header=BB1_8 Depth=1
	addq	$2, %r9
	cmpq	%r9, %rcx
	je	LBB1_6
LBB1_8:                                 ## =>This Inner Loop Header: Depth=1
	movl	(%rdi,%r9,4), %edx
	cmpl	%r8d, %edx
	jg	LBB1_10
## %bb.9:                               ##   in Loop: Header=BB1_8 Depth=1
	movslq	%eax, %rsi
	incl	%eax
	movl	4(%rdi,%rsi,4), %r10d
	movl	%edx, 4(%rdi,%rsi,4)
	movl	%r10d, (%rdi,%r9,4)
LBB1_10:                                ##   in Loop: Header=BB1_8 Depth=1
	movl	4(%rdi,%r9,4), %edx
	cmpl	%r8d, %edx
	jg	LBB1_12
## %bb.11:                              ##   in Loop: Header=BB1_8 Depth=1
	movslq	%eax, %rsi
	incl	%eax
	movl	4(%rdi,%rsi,4), %r10d
	movl	%edx, 4(%rdi,%rsi,4)
	movl	%r10d, 4(%rdi,%r9,4)
	jmp	LBB1_12
	.cfi_endproc
                                        ## -- End function
	.globl	__Z9quicksortPiii               ## -- Begin function _Z9quicksortPiii
	.p2align	4, 0x90
__Z9quicksortPiii:                      ## @_Z9quicksortPiii
	.cfi_startproc
## %bb.0:
                                        ## kill: def $esi killed $esi def $rsi
	cmpl	%edx, %esi
	jge	LBB2_15
## %bb.1:
	pushq	%rbp
	.cfi_def_cfa_offset 16
	.cfi_offset %rbp, -16
	movq	%rsp, %rbp
	.cfi_def_cfa_register %rbp
	pushq	%r15
	pushq	%r14
	pushq	%r13
	pushq	%r12
	pushq	%rbx
	pushq	%rax
	.cfi_offset %rbx, -56
	.cfi_offset %r12, -48
	.cfi_offset %r13, -40
	.cfi_offset %r14, -32
	.cfi_offset %r15, -24
	movl	%edx, %ebx
	movq	%rdi, %r14
	movslq	%edx, %r12
	movq	%r12, %r13
	negq	%r13
	jmp	LBB2_2
	.p2align	4, 0x90
LBB2_13:                                ##   in Loop: Header=BB2_2 Depth=1
	movl	(%r14,%r12,4), %eax
	movslq	%ecx, %r15
	movl	4(%r14,%r15,4), %ecx
	movl	%eax, 4(%r14,%r15,4)
	movl	%ecx, (%r14,%r12,4)
	movq	%r14, %rdi
                                        ## kill: def $esi killed $esi killed $rsi
	movl	%r15d, %edx
	callq	__Z9quicksortPiii
	addl	$2, %r15d
	movl	%r15d, %esi
	cmpl	%ebx, %r15d
	jge	LBB2_14
LBB2_2:                                 ## =>This Loop Header: Depth=1
                                        ##     Child Loop BB2_8 Depth 2
	movl	(%r14,%r12,4), %eax
	leal	-1(%rsi), %ecx
	movslq	%esi, %rdi
	movl	%ebx, %edx
	subl	%edi, %edx
	testb	$1, %dl
	jne	LBB2_4
## %bb.3:                               ##   in Loop: Header=BB2_2 Depth=1
	movq	%rdi, %rdx
	jmp	LBB2_7
	.p2align	4, 0x90
LBB2_4:                                 ##   in Loop: Header=BB2_2 Depth=1
	movl	(%r14,%rdi,4), %edx
	cmpl	%eax, %edx
	jg	LBB2_6
## %bb.5:                               ##   in Loop: Header=BB2_2 Depth=1
	movl	(%r14,%rdi,4), %ecx
	movl	%edx, (%r14,%rdi,4)
	movl	%ecx, (%r14,%rdi,4)
	movl	%esi, %ecx
LBB2_6:                                 ##   in Loop: Header=BB2_2 Depth=1
	leaq	1(%rdi), %rdx
LBB2_7:                                 ##   in Loop: Header=BB2_2 Depth=1
	notq	%rdi
	cmpq	%r13, %rdi
	jne	LBB2_8
	jmp	LBB2_13
	.p2align	4, 0x90
LBB2_12:                                ##   in Loop: Header=BB2_8 Depth=2
	addq	$2, %rdx
	cmpq	%rdx, %r12
	je	LBB2_13
LBB2_8:                                 ##   Parent Loop BB2_2 Depth=1
                                        ## =>  This Inner Loop Header: Depth=2
	movl	(%r14,%rdx,4), %edi
	cmpl	%eax, %edi
	jg	LBB2_10
## %bb.9:                               ##   in Loop: Header=BB2_8 Depth=2
	movslq	%ecx, %r8
	incl	%ecx
	movl	4(%r14,%r8,4), %r9d
	movl	%edi, 4(%r14,%r8,4)
	movl	%r9d, (%r14,%rdx,4)
LBB2_10:                                ##   in Loop: Header=BB2_8 Depth=2
	movl	4(%r14,%rdx,4), %edi
	cmpl	%eax, %edi
	jg	LBB2_12
## %bb.11:                              ##   in Loop: Header=BB2_8 Depth=2
	movslq	%ecx, %r8
	incl	%ecx
	movl	4(%r14,%r8,4), %r9d
	movl	%edi, 4(%r14,%r8,4)
	movl	%r9d, 4(%r14,%rdx,4)
	jmp	LBB2_12
LBB2_14:
	addq	$8, %rsp
	popq	%rbx
	popq	%r12
	popq	%r13
	popq	%r14
	popq	%r15
	popq	%rbp
LBB2_15:
	retq
	.cfi_endproc
                                        ## -- End function
	.globl	__Z10printArrayPii              ## -- Begin function _Z10printArrayPii
	.p2align	4, 0x90
__Z10printArrayPii:                     ## @_Z10printArrayPii
Lfunc_begin0:
	.cfi_startproc
	.cfi_personality 155, ___gxx_personality_v0
	.cfi_lsda 16, Lexception0
## %bb.0:
	pushq	%rbp
	.cfi_def_cfa_offset 16
	.cfi_offset %rbp, -16
	movq	%rsp, %rbp
	.cfi_def_cfa_register %rbp
	pushq	%r15
	pushq	%r14
	pushq	%r13
	pushq	%r12
	pushq	%rbx
	pushq	%rax
	.cfi_offset %rbx, -56
	.cfi_offset %r12, -48
	.cfi_offset %r13, -40
	.cfi_offset %r14, -32
	.cfi_offset %r15, -24
	testl	%esi, %esi
	jle	LBB3_3
## %bb.1:
	movq	%rdi, %rbx
	movl	%esi, %r12d
	xorl	%r13d, %r13d
	movq	__ZNSt3__14coutE@GOTPCREL(%rip), %r14
	leaq	L_.str(%rip), %r15
	.p2align	4, 0x90
LBB3_2:                                 ## =>This Inner Loop Header: Depth=1
	movl	(%rbx,%r13,4), %esi
	movq	%r14, %rdi
	callq	__ZNSt3__113basic_ostreamIcNS_11char_traitsIcEEElsEi
	movl	$1, %edx
	movq	%rax, %rdi
	movq	%r15, %rsi
	callq	__ZNSt3__124__put_character_sequenceB8ne180100IcNS_11char_traitsIcEEEERNS_13basic_ostreamIT_T0_EES7_PKS4_m
	incq	%r13
	cmpq	%r13, %r12
	jne	LBB3_2
LBB3_3:
	movq	__ZNSt3__14coutE@GOTPCREL(%rip), %rsi
	movq	(%rsi), %rax
	addq	-24(%rax), %rsi
	leaq	-48(%rbp), %rbx
	movq	%rbx, %rdi
	callq	__ZNKSt3__18ios_base6getlocEv
Ltmp0:
	movq	__ZNSt3__15ctypeIcE2idE@GOTPCREL(%rip), %rsi
	movq	%rbx, %rdi
	callq	__ZNKSt3__16locale9use_facetERNS0_2idE
Ltmp1:
## %bb.4:
	movq	(%rax), %rcx
Ltmp2:
	movq	%rax, %rdi
	movl	$10, %esi
	callq	*56(%rcx)
Ltmp3:
## %bb.5:
	movl	%eax, %ebx
	leaq	-48(%rbp), %rdi
	callq	__ZNSt3__16localeD1Ev
	movsbl	%bl, %esi
	movq	__ZNSt3__14coutE@GOTPCREL(%rip), %rbx
	movq	%rbx, %rdi
	callq	__ZNSt3__113basic_ostreamIcNS_11char_traitsIcEEE3putEc
	movq	%rbx, %rdi
	callq	__ZNSt3__113basic_ostreamIcNS_11char_traitsIcEEE5flushEv
	addq	$8, %rsp
	popq	%rbx
	popq	%r12
	popq	%r13
	popq	%r14
	popq	%r15
	popq	%rbp
	retq
LBB3_6:
Ltmp4:
	movq	%rax, %rbx
Ltmp5:
	leaq	-48(%rbp), %rdi
	callq	__ZNSt3__16localeD1Ev
Ltmp6:
## %bb.7:
	movq	%rbx, %rdi
	callq	__Unwind_Resume
LBB3_8:
Ltmp7:
	movq	%rax, %rdi
	callq	___clang_call_terminate
Lfunc_end0:
	.cfi_endproc
	.section	__TEXT,__gcc_except_tab
	.p2align	2, 0x0
GCC_except_table3:
Lexception0:
	.byte	255                             ## @LPStart Encoding = omit
	.byte	155                             ## @TType Encoding = indirect pcrel sdata4
	.uleb128 Lttbase0-Lttbaseref0
Lttbaseref0:
	.byte	1                               ## Call site Encoding = uleb128
	.uleb128 Lcst_end0-Lcst_begin0
Lcst_begin0:
	.uleb128 Lfunc_begin0-Lfunc_begin0      ## >> Call Site 1 <<
	.uleb128 Ltmp0-Lfunc_begin0             ##   Call between Lfunc_begin0 and Ltmp0
	.byte	0                               ##     has no landing pad
	.byte	0                               ##   On action: cleanup
	.uleb128 Ltmp0-Lfunc_begin0             ## >> Call Site 2 <<
	.uleb128 Ltmp3-Ltmp0                    ##   Call between Ltmp0 and Ltmp3
	.uleb128 Ltmp4-Lfunc_begin0             ##     jumps to Ltmp4
	.byte	0                               ##   On action: cleanup
	.uleb128 Ltmp3-Lfunc_begin0             ## >> Call Site 3 <<
	.uleb128 Ltmp5-Ltmp3                    ##   Call between Ltmp3 and Ltmp5
	.byte	0                               ##     has no landing pad
	.byte	0                               ##   On action: cleanup
	.uleb128 Ltmp5-Lfunc_begin0             ## >> Call Site 4 <<
	.uleb128 Ltmp6-Ltmp5                    ##   Call between Ltmp5 and Ltmp6
	.uleb128 Ltmp7-Lfunc_begin0             ##     jumps to Ltmp7
	.byte	1                               ##   On action: 1
	.uleb128 Ltmp6-Lfunc_begin0             ## >> Call Site 5 <<
	.uleb128 Lfunc_end0-Ltmp6               ##   Call between Ltmp6 and Lfunc_end0
	.byte	0                               ##     has no landing pad
	.byte	0                               ##   On action: cleanup
Lcst_end0:
	.byte	1                               ## >> Action Record 1 <<
                                        ##   Catch TypeInfo 1
	.byte	0                               ##   No further actions
	.p2align	2, 0x0
                                        ## >> Catch TypeInfos <<
	.long	0                               ## TypeInfo 1
Lttbase0:
	.p2align	2, 0x0
                                        ## -- End function
	.section	__TEXT,__text,regular,pure_instructions
	.globl	_main                           ## -- Begin function main
	.p2align	4, 0x90
_main:                                  ## @main
Lfunc_begin1:
	.cfi_startproc
	.cfi_personality 155, ___gxx_personality_v0
	.cfi_lsda 16, Lexception1
## %bb.0:
	pushq	%rbp
	.cfi_def_cfa_offset 16
	.cfi_offset %rbp, -16
	movq	%rsp, %rbp
	.cfi_def_cfa_register %rbp
	pushq	%r15
	pushq	%r14
	pushq	%r13
	pushq	%r12
	pushq	%rbx
	pushq	%rax
	.cfi_offset %rbx, -56
	.cfi_offset %r12, -48
	.cfi_offset %r13, -40
	.cfi_offset %r14, -32
	.cfi_offset %r15, -24
	xorl	%edi, %edi
	callq	_time
	movl	%eax, %edi
	callq	_srand
	movl	$10000, %r14d                   ## imm = 0x2710
	leaq	-48(%rbp), %r12
	.p2align	4, 0x90
LBB4_1:                                 ## =>This Loop Header: Depth=1
                                        ##     Child Loop BB4_2 Depth 2
	leaq	(,%r14,4), %rdi
	callq	__Znam
	movq	%rax, %r15
	xorl	%ebx, %ebx
	.p2align	4, 0x90
LBB4_2:                                 ##   Parent Loop BB4_1 Depth=1
                                        ## =>  This Inner Loop Header: Depth=2
	callq	_rand
	cltq
	imulq	$351843721, %rax, %rcx          ## imm = 0x14F8B589
	movq	%rcx, %rdx
	shrq	$63, %rdx
	sarq	$45, %rcx
	addl	%edx, %ecx
	imull	$100000, %ecx, %ecx             ## imm = 0x186A0
	subl	%ecx, %eax
	movl	%eax, (%r15,%rbx,4)
	incq	%rbx
	cmpq	%rbx, %r14
	jne	LBB4_2
## %bb.3:                               ##   in Loop: Header=BB4_1 Depth=1
	movl	$12, %edx
	movq	__ZNSt3__14coutE@GOTPCREL(%rip), %rdi
	leaq	L_.str.1(%rip), %rsi
	callq	__ZNSt3__124__put_character_sequenceB8ne180100IcNS_11char_traitsIcEEEERNS_13basic_ostreamIT_T0_EES7_PKS4_m
	movq	%rax, %rdi
	movl	%r14d, %esi
	callq	__ZNSt3__113basic_ostreamIcNS_11char_traitsIcEEElsEi
	movq	%rax, %rbx
	movq	(%rax), %rax
	movq	-24(%rax), %rsi
	addq	%rbx, %rsi
	movq	%r12, %rdi
	callq	__ZNKSt3__18ios_base6getlocEv
Ltmp8:
	movq	%r12, %rdi
	movq	__ZNSt3__15ctypeIcE2idE@GOTPCREL(%rip), %rsi
	callq	__ZNKSt3__16locale9use_facetERNS0_2idE
Ltmp9:
## %bb.4:                               ##   in Loop: Header=BB4_1 Depth=1
	movq	(%rax), %rcx
Ltmp10:
	movq	%rax, %rdi
	movl	$10, %esi
	callq	*56(%rcx)
Ltmp11:
## %bb.5:                               ##   in Loop: Header=BB4_1 Depth=1
	movl	%eax, %r13d
	movq	%r12, %rdi
	callq	__ZNSt3__16localeD1Ev
	movsbl	%r13b, %esi
	movq	%rbx, %rdi
	callq	__ZNSt3__113basic_ostreamIcNS_11char_traitsIcEEE3putEc
	movq	%rbx, %rdi
	callq	__ZNSt3__113basic_ostreamIcNS_11char_traitsIcEEE5flushEv
	callq	__ZNSt3__16chrono12steady_clock3nowEv
	movq	%rax, %rbx
	leal	-1(%r14), %edx
	movq	%r15, %rdi
	xorl	%esi, %esi
	callq	__Z9quicksortPiii
	callq	__ZNSt3__16chrono12steady_clock3nowEv
	subq	%rbx, %rax
	movabsq	$2361183241434822607, %rcx      ## imm = 0x20C49BA5E353F7CF
	imulq	%rcx
	movq	%rdx, %rbx
	shrq	$63, %rbx
	sarq	$7, %rdx
	addq	%rdx, %rbx
	movl	$25, %edx
	movq	__ZNSt3__14coutE@GOTPCREL(%rip), %rdi
	leaq	L_.str.2(%rip), %rsi
	callq	__ZNSt3__124__put_character_sequenceB8ne180100IcNS_11char_traitsIcEEEERNS_13basic_ostreamIT_T0_EES7_PKS4_m
	movq	%rax, %rdi
	movq	%rbx, %rsi
	callq	__ZNSt3__113basic_ostreamIcNS_11char_traitsIcEEElsEx
	movl	$13, %edx
	movq	%rax, %rdi
	leaq	L_.str.3(%rip), %rsi
	callq	__ZNSt3__124__put_character_sequenceB8ne180100IcNS_11char_traitsIcEEEERNS_13basic_ostreamIT_T0_EES7_PKS4_m
	movq	%rax, %rbx
	movq	(%rax), %rax
	movq	-24(%rax), %rsi
	addq	%rbx, %rsi
	movq	%r12, %rdi
	callq	__ZNKSt3__18ios_base6getlocEv
Ltmp16:
	movq	%r12, %rdi
	movq	__ZNSt3__15ctypeIcE2idE@GOTPCREL(%rip), %rsi
	callq	__ZNKSt3__16locale9use_facetERNS0_2idE
Ltmp17:
## %bb.6:                               ##   in Loop: Header=BB4_1 Depth=1
	movq	(%rax), %rcx
Ltmp18:
	movq	%rax, %rdi
	movl	$10, %esi
	callq	*56(%rcx)
Ltmp19:
## %bb.7:                               ##   in Loop: Header=BB4_1 Depth=1
	movl	%eax, %r13d
	movq	%r12, %rdi
	callq	__ZNSt3__16localeD1Ev
	movsbl	%r13b, %esi
	movq	%rbx, %rdi
	callq	__ZNSt3__113basic_ostreamIcNS_11char_traitsIcEEE3putEc
	movq	%rbx, %rdi
	callq	__ZNSt3__113basic_ostreamIcNS_11char_traitsIcEEE5flushEv
	movl	$33, %edx
	movq	__ZNSt3__14coutE@GOTPCREL(%rip), %rdi
	leaq	L_.str.4(%rip), %rsi
	callq	__ZNSt3__124__put_character_sequenceB8ne180100IcNS_11char_traitsIcEEEERNS_13basic_ostreamIT_T0_EES7_PKS4_m
	movq	%rax, %rbx
	movq	(%rax), %rax
	movq	-24(%rax), %rsi
	addq	%rbx, %rsi
	movq	%r12, %rdi
	callq	__ZNKSt3__18ios_base6getlocEv
Ltmp24:
	movq	%r12, %rdi
	movq	__ZNSt3__15ctypeIcE2idE@GOTPCREL(%rip), %rsi
	callq	__ZNKSt3__16locale9use_facetERNS0_2idE
Ltmp25:
## %bb.8:                               ##   in Loop: Header=BB4_1 Depth=1
	movq	(%rax), %rcx
Ltmp26:
	movq	%rax, %rdi
	movl	$10, %esi
	callq	*56(%rcx)
Ltmp27:
## %bb.9:                               ##   in Loop: Header=BB4_1 Depth=1
	movl	%eax, %r13d
	movq	%r12, %rdi
	callq	__ZNSt3__16localeD1Ev
	movsbl	%r13b, %esi
	movq	%rbx, %rdi
	callq	__ZNSt3__113basic_ostreamIcNS_11char_traitsIcEEE3putEc
	movq	%rbx, %rdi
	callq	__ZNSt3__113basic_ostreamIcNS_11char_traitsIcEEE5flushEv
	movq	%r15, %rdi
	callq	__ZdaPv
	leaq	10000(%r14), %rax
	cmpq	$90001, %r14                    ## imm = 0x15F91
	movq	%rax, %r14
	jb	LBB4_1
## %bb.10:
	xorl	%eax, %eax
	addq	$8, %rsp
	popq	%rbx
	popq	%r12
	popq	%r13
	popq	%r14
	popq	%r15
	popq	%rbp
	retq
LBB4_16:
Ltmp28:
	movq	%rax, %rbx
Ltmp29:
	leaq	-48(%rbp), %rdi
	callq	__ZNSt3__16localeD1Ev
Ltmp30:
	jmp	LBB4_12
LBB4_17:
Ltmp31:
	movq	%rax, %rdi
	callq	___clang_call_terminate
LBB4_14:
Ltmp20:
	movq	%rax, %rbx
Ltmp21:
	leaq	-48(%rbp), %rdi
	callq	__ZNSt3__16localeD1Ev
Ltmp22:
	jmp	LBB4_12
LBB4_15:
Ltmp23:
	movq	%rax, %rdi
	callq	___clang_call_terminate
LBB4_11:
Ltmp12:
	movq	%rax, %rbx
Ltmp13:
	leaq	-48(%rbp), %rdi
	callq	__ZNSt3__16localeD1Ev
Ltmp14:
LBB4_12:
	movq	%rbx, %rdi
	callq	__Unwind_Resume
LBB4_13:
Ltmp15:
	movq	%rax, %rdi
	callq	___clang_call_terminate
Lfunc_end1:
	.cfi_endproc
	.section	__TEXT,__gcc_except_tab
	.p2align	2, 0x0
GCC_except_table4:
Lexception1:
	.byte	255                             ## @LPStart Encoding = omit
	.byte	155                             ## @TType Encoding = indirect pcrel sdata4
	.uleb128 Lttbase1-Lttbaseref1
Lttbaseref1:
	.byte	1                               ## Call site Encoding = uleb128
	.uleb128 Lcst_end1-Lcst_begin1
Lcst_begin1:
	.uleb128 Lfunc_begin1-Lfunc_begin1      ## >> Call Site 1 <<
	.uleb128 Ltmp8-Lfunc_begin1             ##   Call between Lfunc_begin1 and Ltmp8
	.byte	0                               ##     has no landing pad
	.byte	0                               ##   On action: cleanup
	.uleb128 Ltmp8-Lfunc_begin1             ## >> Call Site 2 <<
	.uleb128 Ltmp11-Ltmp8                   ##   Call between Ltmp8 and Ltmp11
	.uleb128 Ltmp12-Lfunc_begin1            ##     jumps to Ltmp12
	.byte	0                               ##   On action: cleanup
	.uleb128 Ltmp11-Lfunc_begin1            ## >> Call Site 3 <<
	.uleb128 Ltmp16-Ltmp11                  ##   Call between Ltmp11 and Ltmp16
	.byte	0                               ##     has no landing pad
	.byte	0                               ##   On action: cleanup
	.uleb128 Ltmp16-Lfunc_begin1            ## >> Call Site 4 <<
	.uleb128 Ltmp19-Ltmp16                  ##   Call between Ltmp16 and Ltmp19
	.uleb128 Ltmp20-Lfunc_begin1            ##     jumps to Ltmp20
	.byte	0                               ##   On action: cleanup
	.uleb128 Ltmp19-Lfunc_begin1            ## >> Call Site 5 <<
	.uleb128 Ltmp24-Ltmp19                  ##   Call between Ltmp19 and Ltmp24
	.byte	0                               ##     has no landing pad
	.byte	0                               ##   On action: cleanup
	.uleb128 Ltmp24-Lfunc_begin1            ## >> Call Site 6 <<
	.uleb128 Ltmp27-Ltmp24                  ##   Call between Ltmp24 and Ltmp27
	.uleb128 Ltmp28-Lfunc_begin1            ##     jumps to Ltmp28
	.byte	0                               ##   On action: cleanup
	.uleb128 Ltmp27-Lfunc_begin1            ## >> Call Site 7 <<
	.uleb128 Ltmp29-Ltmp27                  ##   Call between Ltmp27 and Ltmp29
	.byte	0                               ##     has no landing pad
	.byte	0                               ##   On action: cleanup
	.uleb128 Ltmp29-Lfunc_begin1            ## >> Call Site 8 <<
	.uleb128 Ltmp30-Ltmp29                  ##   Call between Ltmp29 and Ltmp30
	.uleb128 Ltmp31-Lfunc_begin1            ##     jumps to Ltmp31
	.byte	1                               ##   On action: 1
	.uleb128 Ltmp21-Lfunc_begin1            ## >> Call Site 9 <<
	.uleb128 Ltmp22-Ltmp21                  ##   Call between Ltmp21 and Ltmp22
	.uleb128 Ltmp23-Lfunc_begin1            ##     jumps to Ltmp23
	.byte	1                               ##   On action: 1
	.uleb128 Ltmp13-Lfunc_begin1            ## >> Call Site 10 <<
	.uleb128 Ltmp14-Ltmp13                  ##   Call between Ltmp13 and Ltmp14
	.uleb128 Ltmp15-Lfunc_begin1            ##     jumps to Ltmp15
	.byte	1                               ##   On action: 1
	.uleb128 Ltmp14-Lfunc_begin1            ## >> Call Site 11 <<
	.uleb128 Lfunc_end1-Ltmp14              ##   Call between Ltmp14 and Lfunc_end1
	.byte	0                               ##     has no landing pad
	.byte	0                               ##   On action: cleanup
Lcst_end1:
	.byte	1                               ## >> Action Record 1 <<
                                        ##   Catch TypeInfo 1
	.byte	0                               ##   No further actions
	.p2align	2, 0x0
                                        ## >> Catch TypeInfos <<
	.long	0                               ## TypeInfo 1
Lttbase1:
	.p2align	2, 0x0
                                        ## -- End function
	.section	__TEXT,__text,regular,pure_instructions
	.private_extern	__ZNSt3__124__put_character_sequenceB8ne180100IcNS_11char_traitsIcEEEERNS_13basic_ostreamIT_T0_EES7_PKS4_m ## -- Begin function _ZNSt3__124__put_character_sequenceB8ne180100IcNS_11char_traitsIcEEEERNS_13basic_ostreamIT_T0_EES7_PKS4_m
	.globl	__ZNSt3__124__put_character_sequenceB8ne180100IcNS_11char_traitsIcEEEERNS_13basic_ostreamIT_T0_EES7_PKS4_m
	.weak_def_can_be_hidden	__ZNSt3__124__put_character_sequenceB8ne180100IcNS_11char_traitsIcEEEERNS_13basic_ostreamIT_T0_EES7_PKS4_m
	.p2align	4, 0x90
__ZNSt3__124__put_character_sequenceB8ne180100IcNS_11char_traitsIcEEEERNS_13basic_ostreamIT_T0_EES7_PKS4_m: ## @_ZNSt3__124__put_character_sequenceB8ne180100IcNS_11char_traitsIcEEEERNS_13basic_ostreamIT_T0_EES7_PKS4_m
Lfunc_begin2:
	.cfi_startproc
	.cfi_personality 155, ___gxx_personality_v0
	.cfi_lsda 16, Lexception2
## %bb.0:
	pushq	%rbp
	.cfi_def_cfa_offset 16
	.cfi_offset %rbp, -16
	movq	%rsp, %rbp
	.cfi_def_cfa_register %rbp
	pushq	%r15
	pushq	%r14
	pushq	%r13
	pushq	%r12
	pushq	%rbx
	subq	$40, %rsp
	.cfi_offset %rbx, -56
	.cfi_offset %r12, -48
	.cfi_offset %r13, -40
	.cfi_offset %r14, -32
	.cfi_offset %r15, -24
	movq	%rdx, %r14
	movq	%rsi, %r15
	movq	%rdi, %rbx
Ltmp32:
	leaq	-80(%rbp), %rdi
	movq	%rbx, %rsi
	callq	__ZNSt3__113basic_ostreamIcNS_11char_traitsIcEEE6sentryC1ERS3_
Ltmp33:
## %bb.1:
	cmpb	$0, -80(%rbp)
	je	LBB5_11
## %bb.2:
	movq	(%rbx), %rax
	movq	-24(%rax), %rax
	leaq	(%rbx,%rax), %r12
	movq	40(%rbx,%rax), %rdi
	movl	8(%rbx,%rax), %r13d
	movl	144(%rbx,%rax), %eax
	cmpl	$-1, %eax
	jne	LBB5_8
## %bb.3:
Ltmp34:
	movq	%rdi, -64(%rbp)                 ## 8-byte Spill
	leaq	-56(%rbp), %rdi
	movq	%r12, %rsi
	callq	__ZNKSt3__18ios_base6getlocEv
Ltmp35:
## %bb.4:
Ltmp36:
	movq	__ZNSt3__15ctypeIcE2idE@GOTPCREL(%rip), %rsi
	leaq	-56(%rbp), %rdi
	callq	__ZNKSt3__16locale9use_facetERNS0_2idE
Ltmp37:
## %bb.5:
	movq	(%rax), %rcx
Ltmp38:
	movq	%rax, %rdi
	movl	$32, %esi
	callq	*56(%rcx)
	movb	%al, -41(%rbp)                  ## 1-byte Spill
Ltmp39:
## %bb.6:
Ltmp44:
	leaq	-56(%rbp), %rdi
	callq	__ZNSt3__16localeD1Ev
Ltmp45:
## %bb.7:
	movsbl	-41(%rbp), %eax                 ## 1-byte Folded Reload
	movl	%eax, 144(%r12)
	movq	-64(%rbp), %rdi                 ## 8-byte Reload
LBB5_8:
	andl	$176, %r13d
	addq	%r15, %r14
	cmpl	$32, %r13d
	movq	%r15, %rdx
	cmoveq	%r14, %rdx
Ltmp46:
	movsbl	%al, %r9d
	movq	%r15, %rsi
	movq	%r14, %rcx
	movq	%r12, %r8
	callq	__ZNSt3__116__pad_and_outputB8ne180100IcNS_11char_traitsIcEEEENS_19ostreambuf_iteratorIT_T0_EES6_PKS4_S8_S8_RNS_8ios_baseES4_
Ltmp47:
## %bb.9:
	testq	%rax, %rax
	jne	LBB5_11
## %bb.10:
	movq	(%rbx), %rax
	movq	-24(%rax), %rax
	leaq	(%rbx,%rax), %rdi
	movl	32(%rbx,%rax), %esi
	orl	$5, %esi
Ltmp49:
	callq	__ZNSt3__18ios_base5clearEj
Ltmp50:
LBB5_11:
Ltmp54:
	leaq	-80(%rbp), %rdi
	callq	__ZNSt3__113basic_ostreamIcNS_11char_traitsIcEEE6sentryD1Ev
Ltmp55:
LBB5_21:
	movq	%rbx, %rax
	addq	$40, %rsp
	popq	%rbx
	popq	%r12
	popq	%r13
	popq	%r14
	popq	%r15
	popq	%rbp
	retq
LBB5_16:
Ltmp51:
	jmp	LBB5_17
LBB5_12:
Ltmp40:
	movq	%rax, %r14
Ltmp41:
	leaq	-56(%rbp), %rdi
	callq	__ZNSt3__16localeD1Ev
Ltmp42:
	jmp	LBB5_18
LBB5_13:
Ltmp43:
	movq	%rax, %rdi
	callq	___clang_call_terminate
LBB5_15:
Ltmp48:
LBB5_17:
	movq	%rax, %r14
LBB5_18:
Ltmp52:
	leaq	-80(%rbp), %rdi
	callq	__ZNSt3__113basic_ostreamIcNS_11char_traitsIcEEE6sentryD1Ev
Ltmp53:
	jmp	LBB5_19
LBB5_14:
Ltmp56:
	movq	%rax, %r14
LBB5_19:
	movq	%r14, %rdi
	callq	___cxa_begin_catch
	movq	(%rbx), %rax
	movq	-24(%rax), %rdi
	addq	%rbx, %rdi
Ltmp57:
	callq	__ZNSt3__18ios_base33__set_badbit_and_consider_rethrowEv
Ltmp58:
## %bb.20:
	callq	___cxa_end_catch
	jmp	LBB5_21
LBB5_22:
Ltmp59:
	movq	%rax, %rbx
Ltmp60:
	callq	___cxa_end_catch
Ltmp61:
## %bb.23:
	movq	%rbx, %rdi
	callq	__Unwind_Resume
LBB5_24:
Ltmp62:
	movq	%rax, %rdi
	callq	___clang_call_terminate
Lfunc_end2:
	.cfi_endproc
	.section	__TEXT,__gcc_except_tab
	.p2align	2, 0x0
GCC_except_table5:
Lexception2:
	.byte	255                             ## @LPStart Encoding = omit
	.byte	155                             ## @TType Encoding = indirect pcrel sdata4
	.uleb128 Lttbase2-Lttbaseref2
Lttbaseref2:
	.byte	1                               ## Call site Encoding = uleb128
	.uleb128 Lcst_end2-Lcst_begin2
Lcst_begin2:
	.uleb128 Ltmp32-Lfunc_begin2            ## >> Call Site 1 <<
	.uleb128 Ltmp33-Ltmp32                  ##   Call between Ltmp32 and Ltmp33
	.uleb128 Ltmp56-Lfunc_begin2            ##     jumps to Ltmp56
	.byte	1                               ##   On action: 1
	.uleb128 Ltmp34-Lfunc_begin2            ## >> Call Site 2 <<
	.uleb128 Ltmp35-Ltmp34                  ##   Call between Ltmp34 and Ltmp35
	.uleb128 Ltmp48-Lfunc_begin2            ##     jumps to Ltmp48
	.byte	1                               ##   On action: 1
	.uleb128 Ltmp36-Lfunc_begin2            ## >> Call Site 3 <<
	.uleb128 Ltmp39-Ltmp36                  ##   Call between Ltmp36 and Ltmp39
	.uleb128 Ltmp40-Lfunc_begin2            ##     jumps to Ltmp40
	.byte	1                               ##   On action: 1
	.uleb128 Ltmp44-Lfunc_begin2            ## >> Call Site 4 <<
	.uleb128 Ltmp47-Ltmp44                  ##   Call between Ltmp44 and Ltmp47
	.uleb128 Ltmp48-Lfunc_begin2            ##     jumps to Ltmp48
	.byte	1                               ##   On action: 1
	.uleb128 Ltmp49-Lfunc_begin2            ## >> Call Site 5 <<
	.uleb128 Ltmp50-Ltmp49                  ##   Call between Ltmp49 and Ltmp50
	.uleb128 Ltmp51-Lfunc_begin2            ##     jumps to Ltmp51
	.byte	1                               ##   On action: 1
	.uleb128 Ltmp54-Lfunc_begin2            ## >> Call Site 6 <<
	.uleb128 Ltmp55-Ltmp54                  ##   Call between Ltmp54 and Ltmp55
	.uleb128 Ltmp56-Lfunc_begin2            ##     jumps to Ltmp56
	.byte	1                               ##   On action: 1
	.uleb128 Ltmp41-Lfunc_begin2            ## >> Call Site 7 <<
	.uleb128 Ltmp42-Ltmp41                  ##   Call between Ltmp41 and Ltmp42
	.uleb128 Ltmp43-Lfunc_begin2            ##     jumps to Ltmp43
	.byte	1                               ##   On action: 1
	.uleb128 Ltmp52-Lfunc_begin2            ## >> Call Site 8 <<
	.uleb128 Ltmp53-Ltmp52                  ##   Call between Ltmp52 and Ltmp53
	.uleb128 Ltmp62-Lfunc_begin2            ##     jumps to Ltmp62
	.byte	1                               ##   On action: 1
	.uleb128 Ltmp53-Lfunc_begin2            ## >> Call Site 9 <<
	.uleb128 Ltmp57-Ltmp53                  ##   Call between Ltmp53 and Ltmp57
	.byte	0                               ##     has no landing pad
	.byte	0                               ##   On action: cleanup
	.uleb128 Ltmp57-Lfunc_begin2            ## >> Call Site 10 <<
	.uleb128 Ltmp58-Ltmp57                  ##   Call between Ltmp57 and Ltmp58
	.uleb128 Ltmp59-Lfunc_begin2            ##     jumps to Ltmp59
	.byte	0                               ##   On action: cleanup
	.uleb128 Ltmp58-Lfunc_begin2            ## >> Call Site 11 <<
	.uleb128 Ltmp60-Ltmp58                  ##   Call between Ltmp58 and Ltmp60
	.byte	0                               ##     has no landing pad
	.byte	0                               ##   On action: cleanup
	.uleb128 Ltmp60-Lfunc_begin2            ## >> Call Site 12 <<
	.uleb128 Ltmp61-Ltmp60                  ##   Call between Ltmp60 and Ltmp61
	.uleb128 Ltmp62-Lfunc_begin2            ##     jumps to Ltmp62
	.byte	1                               ##   On action: 1
	.uleb128 Ltmp61-Lfunc_begin2            ## >> Call Site 13 <<
	.uleb128 Lfunc_end2-Ltmp61              ##   Call between Ltmp61 and Lfunc_end2
	.byte	0                               ##     has no landing pad
	.byte	0                               ##   On action: cleanup
Lcst_end2:
	.byte	1                               ## >> Action Record 1 <<
                                        ##   Catch TypeInfo 1
	.byte	0                               ##   No further actions
	.p2align	2, 0x0
                                        ## >> Catch TypeInfos <<
	.long	0                               ## TypeInfo 1
Lttbase2:
	.p2align	2, 0x0
                                        ## -- End function
	.section	__TEXT,__text,regular,pure_instructions
	.private_extern	__ZNSt3__116__pad_and_outputB8ne180100IcNS_11char_traitsIcEEEENS_19ostreambuf_iteratorIT_T0_EES6_PKS4_S8_S8_RNS_8ios_baseES4_ ## -- Begin function _ZNSt3__116__pad_and_outputB8ne180100IcNS_11char_traitsIcEEEENS_19ostreambuf_iteratorIT_T0_EES6_PKS4_S8_S8_RNS_8ios_baseES4_
	.globl	__ZNSt3__116__pad_and_outputB8ne180100IcNS_11char_traitsIcEEEENS_19ostreambuf_iteratorIT_T0_EES6_PKS4_S8_S8_RNS_8ios_baseES4_
	.weak_def_can_be_hidden	__ZNSt3__116__pad_and_outputB8ne180100IcNS_11char_traitsIcEEEENS_19ostreambuf_iteratorIT_T0_EES6_PKS4_S8_S8_RNS_8ios_baseES4_
	.p2align	4, 0x90
__ZNSt3__116__pad_and_outputB8ne180100IcNS_11char_traitsIcEEEENS_19ostreambuf_iteratorIT_T0_EES6_PKS4_S8_S8_RNS_8ios_baseES4_: ## @_ZNSt3__116__pad_and_outputB8ne180100IcNS_11char_traitsIcEEEENS_19ostreambuf_iteratorIT_T0_EES6_PKS4_S8_S8_RNS_8ios_baseES4_
Lfunc_begin3:
	.cfi_startproc
	.cfi_personality 155, ___gxx_personality_v0
	.cfi_lsda 16, Lexception3
## %bb.0:
	pushq	%rbp
	.cfi_def_cfa_offset 16
	.cfi_offset %rbp, -16
	movq	%rsp, %rbp
	.cfi_def_cfa_register %rbp
	pushq	%r15
	pushq	%r14
	pushq	%r13
	pushq	%r12
	pushq	%rbx
	subq	$56, %rsp
	.cfi_offset %rbx, -56
	.cfi_offset %r12, -48
	.cfi_offset %r13, -40
	.cfi_offset %r14, -32
	.cfi_offset %r15, -24
	testq	%rdi, %rdi
	je	LBB6_20
## %bb.1:
	movq	%r8, %r13
	movq	%rcx, %r15
	movq	%rdi, %rbx
	movl	%r9d, -68(%rbp)                 ## 4-byte Spill
	movq	%rcx, %rax
	subq	%rsi, %rax
	movq	24(%r8), %rcx
	xorl	%r12d, %r12d
	subq	%rax, %rcx
	cmovgq	%rcx, %r12
	movq	%rdx, -88(%rbp)                 ## 8-byte Spill
	movq	%rdx, %r14
	subq	%rsi, %r14
	testq	%r14, %r14
	jle	LBB6_3
## %bb.2:
	movq	(%rbx), %rax
	movq	%rbx, %rdi
	movq	%r14, %rdx
	callq	*96(%rax)
	cmpq	%r14, %rax
	jne	LBB6_20
LBB6_3:
	testq	%r12, %r12
	jle	LBB6_16
## %bb.4:
	cmpq	$23, %r12
	jae	LBB6_8
## %bb.5:
	leal	(%r12,%r12), %eax
	movb	%al, -64(%rbp)
	leaq	-63(%rbp), %r14
	jmp	LBB6_9
LBB6_8:
	movq	%r12, %rax
	andq	$-8, %rax
	addq	$8, %rax
	movq	%r13, -80(%rbp)                 ## 8-byte Spill
	movq	%r12, %r13
	orq	$7, %r13
	cmpq	$23, %r13
	cmoveq	%rax, %r13
	incq	%r13
	movq	%r13, %rdi
	callq	__Znwm
	movq	%rax, %r14
	movq	%rax, -48(%rbp)
	orq	$1, %r13
	movq	%r13, -64(%rbp)
	movq	-80(%rbp), %r13                 ## 8-byte Reload
	movq	%r12, -56(%rbp)
LBB6_9:
	movzbl	-68(%rbp), %esi                 ## 1-byte Folded Reload
	movq	%r14, %rdi
	movq	%r12, %rdx
	callq	_memset
	movb	$0, (%r14,%r12)
	testb	$1, -64(%rbp)
	je	LBB6_11
## %bb.10:
	movq	-48(%rbp), %rsi
	jmp	LBB6_12
LBB6_11:
	leaq	-63(%rbp), %rsi
LBB6_12:
	movq	(%rbx), %rax
Ltmp63:
	movq	%rbx, %rdi
	movq	%r12, %rdx
	callq	*96(%rax)
Ltmp64:
## %bb.13:
	movq	%rax, %r14
	testb	$1, -64(%rbp)
	je	LBB6_15
## %bb.14:
	movq	-48(%rbp), %rdi
	callq	__ZdlPv
LBB6_15:
	cmpq	%r12, %r14
	jne	LBB6_20
LBB6_16:
	movq	-88(%rbp), %rsi                 ## 8-byte Reload
	subq	%rsi, %r15
	testq	%r15, %r15
	jle	LBB6_18
## %bb.17:
	movq	(%rbx), %rax
	movq	%rbx, %rdi
	movq	%r15, %rdx
	callq	*96(%rax)
	cmpq	%r15, %rax
	jne	LBB6_20
LBB6_18:
	movq	$0, 24(%r13)
	jmp	LBB6_21
LBB6_20:
	xorl	%ebx, %ebx
LBB6_21:
	movq	%rbx, %rax
	addq	$56, %rsp
	popq	%rbx
	popq	%r12
	popq	%r13
	popq	%r14
	popq	%r15
	popq	%rbp
	retq
LBB6_22:
Ltmp65:
	movq	%rax, %rbx
	testb	$1, -64(%rbp)
	je	LBB6_24
## %bb.23:
	movq	-48(%rbp), %rdi
	callq	__ZdlPv
LBB6_24:
	movq	%rbx, %rdi
	callq	__Unwind_Resume
Lfunc_end3:
	.cfi_endproc
	.section	__TEXT,__gcc_except_tab
	.p2align	2, 0x0
GCC_except_table6:
Lexception3:
	.byte	255                             ## @LPStart Encoding = omit
	.byte	255                             ## @TType Encoding = omit
	.byte	1                               ## Call site Encoding = uleb128
	.uleb128 Lcst_end3-Lcst_begin3
Lcst_begin3:
	.uleb128 Lfunc_begin3-Lfunc_begin3      ## >> Call Site 1 <<
	.uleb128 Ltmp63-Lfunc_begin3            ##   Call between Lfunc_begin3 and Ltmp63
	.byte	0                               ##     has no landing pad
	.byte	0                               ##   On action: cleanup
	.uleb128 Ltmp63-Lfunc_begin3            ## >> Call Site 2 <<
	.uleb128 Ltmp64-Ltmp63                  ##   Call between Ltmp63 and Ltmp64
	.uleb128 Ltmp65-Lfunc_begin3            ##     jumps to Ltmp65
	.byte	0                               ##   On action: cleanup
	.uleb128 Ltmp64-Lfunc_begin3            ## >> Call Site 3 <<
	.uleb128 Lfunc_end3-Ltmp64              ##   Call between Ltmp64 and Lfunc_end3
	.byte	0                               ##     has no landing pad
	.byte	0                               ##   On action: cleanup
Lcst_end3:
	.p2align	2, 0x0
                                        ## -- End function
	.section	__TEXT,__text,regular,pure_instructions
	.private_extern	___clang_call_terminate ## -- Begin function __clang_call_terminate
	.globl	___clang_call_terminate
	.weak_def_can_be_hidden	___clang_call_terminate
	.p2align	4, 0x90
___clang_call_terminate:                ## @__clang_call_terminate
	.cfi_startproc
## %bb.0:
	pushq	%rbp
	.cfi_def_cfa_offset 16
	.cfi_offset %rbp, -16
	movq	%rsp, %rbp
	.cfi_def_cfa_register %rbp
	callq	___cxa_begin_catch
	callq	__ZSt9terminatev
	.cfi_endproc
                                        ## -- End function
	.section	__TEXT,__cstring,cstring_literals
L_.str:                                 ## @.str
	.asciz	" "

L_.str.1:                               ## @.str.1
	.asciz	"Array Size: "

L_.str.2:                               ## @.str.2
	.asciz	"Time taken by Quicksort: "

L_.str.3:                               ## @.str.3
	.asciz	" microseconds"

L_.str.4:                               ## @.str.4
	.asciz	"---------------------------------"

.subsections_via_symbols
