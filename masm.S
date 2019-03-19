/*
 * SBS driver for NCT6106D:40 PIN GPIO
 */

#define __ASSEMBLY__
#include <linux/module.h>
#include <linux/kernel.h>
#include <linux/linkage.h>
	.text
	.section	.rodata.str1.1
.m_str:
	.string "asm test!\n"
	
	.section .init.text

ENTRY(m_init)
	movq $.m_str,%rdi
	call printk
	xorl %eax,%eax
	ret
ENDPROC(m_init)
	.globl init_module
	.set init_module,m_init

	.section .rodata.str1.1
.m_str2:
	.string "asm exit!\n"
	.section .exit.text
ENTRY(m_exit)
	mov1 $.m_str2,%rdi
	jmp printk
ENDPROC(m_exit)

	.globl cleanup_module
	.set cleanup_module,m_exit

	.section .modinfo





