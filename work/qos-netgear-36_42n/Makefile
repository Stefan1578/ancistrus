include ../Rules.mak

all:
	@echo "Nothing to do: run 'make install' to install."

install: control
	install -m 0755 -d $(APPDIR)
	@if [ -f rc_qos ] && [ -x rc_qos ]; then \
	install -m 0755 rc_qos $(APPDIR); \
	ln -sf rc_qos $(APPDIR)/rc_buffer_bloat; \
	fi

clean: 
	@echo "Nothing to clean"

ifndef BUILD
control:
else
PREINST			:= $(CTRL_DIR)/preinst
POSTINST		:= $(CTRL_DIR)/postinst
PRERM			:= $(CTRL_DIR)/prerm
POSTRM			:= $(CTRL_DIR)/postrm

control: preinst postinst prerm postrm

preinst:
	@echo "#!/bin/sh" > $(PREINST)
	@echo "echo \"Stopping qos service...\"" >> $(PREINST)
	@echo "$(RC) qos stop" >> $(PREINST)
	@echo "exit 0" >> $(PREINST)

postinst:
	@echo "#!/bin/sh" > $(POSTINST)
	@echo "[ \`anc nvram rget qos_enable\` -eq 1 ] && echo \"Restarting qos service...\" && $(RC) qos restart" >> $(POSTINST)
	@echo "echo \"Enable, setup & apply qos from webgui\"" >> $(POSTINST)
	@echo "exit 0" >> $(POSTINST)

prerm:
	@echo "#!/bin/sh" > $(PRERM)
	@echo "echo \"Stopping qos service...\"" >> $(PRERM)
	@echo "$(RC) qos stop" >> $(PRERM)
	@echo "exit 0" >> $(PRERM)

postrm:
	@echo "#!/bin/sh" > $(POSTRM)
	@echo "ln -sf $(TMPETC)/$(RCAPPSBIN) $(USRSBINRCAPP)/rc_qos" >> $(POSTRM)
	@echo "exit 0" >> $(POSTRM)
endif

