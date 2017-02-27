PREFIX	=/opt
BINDIR	=${PREFIX}/bin

all::	set-plymouth-theme

ARGS	=--list

check::	set-plymouth-theme
	./set-plymouth-theme ${ARGS}

install:: set-plymouth-theme
	install -D -c -m 0755 set-plymouth-theme ${BINDIR}/set-plymouth-theme

uninstall::
	${RM} ${BINDIR}/set-plymouth-theme
