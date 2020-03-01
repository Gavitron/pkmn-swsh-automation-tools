all:
	make -f wattsfarmer.mk
	make -f repeat-a.mk
	make -f repeater.mk
	make -f masterballs.mk
	make -f wildareabreeding.mk
	make -f releasebox.mk

watts:
	make -f wattsfarmer.mk

repeat-a:
	make -f repeat-a.mk

repeater:
	make -f repeater.mk

balls:
	make -f masterballs.mk

wildarea:
	make -f wildareabreeding.mk

release:
	make -f releasebox.mk

clean:
	make -f wattsfarmer.mk clean
	make -f repeat-a.mk clean
	make -f repeater.mk clean
	make -f masterballs.mk clean
	make -f wildareabreeding.mk clean
	make -f releasebox.mk clean
