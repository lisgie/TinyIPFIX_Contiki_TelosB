CONTIKI_PROJECT = contiki-node
all: $(CONTIKI_PROJECT)

CFLAGS += -ffunction-sections
LDFLAGS += -Wl,--gc-sections,--undefined=_reset_vector__,--undefined=InterruptVectors,--undefined=_copy_data_init__,--undefined=_clear_bss_init__,--undefined=_end_of_init__

CFLAGS += -DPROJECT_CONF_H=\"project-conf.h\"

WITH_UIP6=1
UIP_CONF_IPV6=1
UIP_CONF_IPV6_RPL=1

CONTIKI = /home/contiki/contiki-2.7
#CFLAGS += -DPROJECT_CONF_H=\"project-conf.h\"

DEBUG_DIR = debug

PROJECT_SOURCEFILES += udp-client-process.c 

#include $(DEBUG_DIR)/Makefile.debug


include $(CONTIKI)/Makefile.include
