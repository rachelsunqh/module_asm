obj-m :=masm.o
	KDIR :=/lib/modules/$(shell uname -r)/build
	PWD := $(shell pwd)
KBUILD_AFLAGS := -D_ASSEMBLY__
all:
	$(MAKE) -C $(KDIR) M=$(PWD)  modules
	$(RM) -rf *.mod.c *.o *.cmd *.symvers *.tmp* *.order modules.*
clean:
	$(RM) -rf *.ko *.mod.c *.o *.cmd *.symvers *.tmp* *.order modules.*
