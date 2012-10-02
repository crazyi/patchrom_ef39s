#
# Makefile for ef39s
#

# The original zip file, MUST be specified by each product
local-zip-file := stockrom.zip

# The output zip file of MIUI rom, the default is update.zip if not specified
local-out-zip-file := MIUI_ef39s.zip

# All apps from original ZIP, but has smali files chanded
local-modified-apps := 

local-modified-jars := 

local-miui-modified-apps := 
# All apks from MIUI
local-miui-removed-apps := 

# All apps need to be reserved from original ZIP file
local-phone-apps := 

# All apps need to be removed from original ZIP file

#include phoneapps.mk

# To include the local targets before and after zip the final ZIP file,
# and the local-targets should:
# (1) be defined after including porting.mk if using any global variable(see porting.mk)
# (2) the name should be leaded with local- to prevent any conflict with global targets
local-pre-zip := local-zip-misc
local-after-zip:= local-test

# The local targets after the zip file is generated, could include 'zip2sd' to
# deliver the zip file to phone, or to customize other actions

include $(PORT_BUILD)/porting.mk

# To define any local-target
local-zip-misc:
	@echo Update build.prop
	cp other/build.prop $(ZIP_DIR)/system/build.prop

local-test:
	echo "an example action"
