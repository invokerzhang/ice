# **********************************************************************
#
# Copyright (c) 2003-2005 ZeroC, Inc. All rights reserved.
#
# This copy of Ice is licensed to you under the terms described in the
# ICE_LICENSE file included in this distribution.
#
# **********************************************************************

.SUFFIXES:	.py

!IF EXIST (../slice)
slicedir	= ../slice
!ELSE IFDEF ICE_HOME
slicedir	= $(ICE_HOME)/slice
!ELSE
!ERROR "Slice directory not found - set ICE_HOME!"
!ENDIF

!IFDEF ICE_HOME
SLICE2PY	= $(ICE_HOME)\bin\slice2py
!ELSE
SLICE2PY	= slice2py
!ENDIF

ICE_SRCS	= Ice_LocalException_ice.py \
		  Ice_Communicator_ice.py \
		  Ice_CommunicatorF_ice.py \
		  Ice_Logger_ice.py \
		  Ice_LoggerF_ice.py \
		  Ice_BuiltinSequences_ice.py \
		  Ice_ObjectAdapter_ice.py \
		  Ice_ObjectAdapterF_ice.py \
		  Ice_ServantLocator_ice.py \
		  Ice_ServantLocatorF_ice.py \
		  Ice_Properties_ice.py \
		  Ice_PropertiesF_ice.py \
		  Ice_ObjectFactory_ice.py \
		  Ice_ObjectFactoryF_ice.py \
		  Ice_Identity_ice.py \
		  Ice_Current_ice.py \
		  Ice_Router_ice.py \
		  Ice_RouterF_ice.py \
		  Ice_Plugin_ice.py \
		  Ice_PluginF_ice.py \
		  Ice_Locator_ice.py \
		  Ice_LocatorF_ice.py \
		  Ice_StatsF_ice.py \
		  Ice_Stats_ice.py \
		  Ice_Process_ice.py \
		  Ice_ProcessF_ice.py \
		  Ice_FacetMap_ice.py \
		  Ice_Connection_ice.py \
		  Ice_ConnectionF_ice.py \
		  Ice_SliceChecksumDict_ice.py

GLACIER2_SRCS	= Glacier2_RouterF_ice.py \
		  Glacier2_Router_ice.py \
		  Glacier2_SessionF_ice.py \
		  Glacier2_Session_ice.py \
		  Glacier2_PermissionsVerifierF_ice.py \
		  Glacier2_PermissionsVerifier_ice.py

ICEBOX_SRCS	= IceBox_IceBox_ice.py

ICEPACK_SRCS	= IcePack_Admin_ice.py \
		  IcePack_Exception_ice.py \
		  IcePack_Query_ice.py

ICEPATCH2_SRCS	= IcePatch2_FileInfo_ice.py \
		  IcePatch2_FileServer_ice.py

ICESTORM_SRCS	= IceStorm_IceStorm_ice.py

ALL_SRCS	= $(ICE_SRCS) \
		  $(GLACIER2_SRCS) \
		  $(ICEBOX_SRCS) \
		  $(ICEPACK_SRCS) \
		  $(ICEPATCH2_SRCS) \
		  $(ICESTORM_SRCS)

PACKAGES	= Glacier2 IceBox IcePack IcePatch2 IceStorm

SLICE2PYFLAGS	= -I$(slicedir) --ice

all:: $(ALL_SRCS)

Ice_LocalException_ice.py: $(slicedir)/Ice/LocalException.ice
	$(SLICE2PY) $(SLICE2PYFLAGS) --prefix Ice_ --no-package $(slicedir)/Ice/LocalException.ice

Ice_Communicator_ice.py: $(slicedir)/Ice/Communicator.ice
	$(SLICE2PY) $(SLICE2PYFLAGS) --prefix Ice_ --no-package $(slicedir)/Ice/Communicator.ice

Ice_CommunicatorF_ice.py: $(slicedir)/Ice/CommunicatorF.ice
	$(SLICE2PY) $(SLICE2PYFLAGS) --prefix Ice_ --no-package $(slicedir)/Ice/CommunicatorF.ice

Ice_Logger_ice.py: $(slicedir)/Ice/Logger.ice
	$(SLICE2PY) $(SLICE2PYFLAGS) --prefix Ice_ --no-package $(slicedir)/Ice/Logger.ice

Ice_LoggerF_ice.py: $(slicedir)/Ice/LoggerF.ice
	$(SLICE2PY) $(SLICE2PYFLAGS) --prefix Ice_ --no-package $(slicedir)/Ice/LoggerF.ice

Ice_BuiltinSequences_ice.py: $(slicedir)/Ice/BuiltinSequences.ice
	$(SLICE2PY) $(SLICE2PYFLAGS) --prefix Ice_ --no-package $(slicedir)/Ice/BuiltinSequences.ice

Ice_ObjectAdapter_ice.py: $(slicedir)/Ice/ObjectAdapter.ice
	$(SLICE2PY) $(SLICE2PYFLAGS) --prefix Ice_ --no-package $(slicedir)/Ice/ObjectAdapter.ice

Ice_ObjectAdapterF_ice.py: $(slicedir)/Ice/ObjectAdapterF.ice
	$(SLICE2PY) $(SLICE2PYFLAGS) --prefix Ice_ --no-package $(slicedir)/Ice/ObjectAdapterF.ice

Ice_ServantLocator_ice.py: $(slicedir)/Ice/ServantLocator.ice
	$(SLICE2PY) $(SLICE2PYFLAGS) --prefix Ice_ --no-package $(slicedir)/Ice/ServantLocator.ice

Ice_ServantLocatorF_ice.py: $(slicedir)/Ice/ServantLocatorF.ice
	$(SLICE2PY) $(SLICE2PYFLAGS) --prefix Ice_ --no-package $(slicedir)/Ice/ServantLocatorF.ice

Ice_Properties_ice.py: $(slicedir)/Ice/Properties.ice
	$(SLICE2PY) $(SLICE2PYFLAGS) --prefix Ice_ --no-package $(slicedir)/Ice/Properties.ice

Ice_PropertiesF_ice.py: $(slicedir)/Ice/PropertiesF.ice
	$(SLICE2PY) $(SLICE2PYFLAGS) --prefix Ice_ --no-package $(slicedir)/Ice/PropertiesF.ice

Ice_ObjectFactory_ice.py: $(slicedir)/Ice/ObjectFactory.ice
	$(SLICE2PY) $(SLICE2PYFLAGS) --prefix Ice_ --no-package $(slicedir)/Ice/ObjectFactory.ice

Ice_ObjectFactoryF_ice.py: $(slicedir)/Ice/ObjectFactoryF.ice
	$(SLICE2PY) $(SLICE2PYFLAGS) --prefix Ice_ --no-package $(slicedir)/Ice/ObjectFactoryF.ice

Ice_Identity_ice.py: $(slicedir)/Ice/Identity.ice
	$(SLICE2PY) $(SLICE2PYFLAGS) --prefix Ice_ --no-package $(slicedir)/Ice/Identity.ice

Ice_Current_ice.py: $(slicedir)/Ice/Current.ice
	$(SLICE2PY) $(SLICE2PYFLAGS) --prefix Ice_ --no-package $(slicedir)/Ice/Current.ice

Ice_Router_ice.py: $(slicedir)/Ice/Router.ice
	$(SLICE2PY) $(SLICE2PYFLAGS) --prefix Ice_ --no-package $(slicedir)/Ice/Router.ice

Ice_RouterF_ice.py: $(slicedir)/Ice/RouterF.ice
	$(SLICE2PY) $(SLICE2PYFLAGS) --prefix Ice_ --no-package $(slicedir)/Ice/RouterF.ice

Ice_Plugin_ice.py: $(slicedir)/Ice/Plugin.ice
	$(SLICE2PY) $(SLICE2PYFLAGS) --prefix Ice_ --no-package $(slicedir)/Ice/Plugin.ice

Ice_PluginF_ice.py: $(slicedir)/Ice/PluginF.ice
	$(SLICE2PY) $(SLICE2PYFLAGS) --prefix Ice_ --no-package $(slicedir)/Ice/PluginF.ice

Ice_Locator_ice.py: $(slicedir)/Ice/Locator.ice
	$(SLICE2PY) $(SLICE2PYFLAGS) --prefix Ice_ --no-package $(slicedir)/Ice/Locator.ice

Ice_LocatorF_ice.py: $(slicedir)/Ice/LocatorF.ice
	$(SLICE2PY) $(SLICE2PYFLAGS) --prefix Ice_ --no-package $(slicedir)/Ice/LocatorF.ice

Ice_StatsF_ice.py: $(slicedir)/Ice/StatsF.ice
	$(SLICE2PY) $(SLICE2PYFLAGS) --prefix Ice_ --no-package $(slicedir)/Ice/StatsF.ice

Ice_Stats_ice.py: $(slicedir)/Ice/Stats.ice
	$(SLICE2PY) $(SLICE2PYFLAGS) --prefix Ice_ --no-package $(slicedir)/Ice/Stats.ice

Ice_Process_ice.py: $(slicedir)/Ice/Process.ice
	$(SLICE2PY) $(SLICE2PYFLAGS) --prefix Ice_ --no-package $(slicedir)/Ice/Process.ice

Ice_ProcessF_ice.py: $(slicedir)/Ice/ProcessF.ice
	$(SLICE2PY) $(SLICE2PYFLAGS) --prefix Ice_ --no-package $(slicedir)/Ice/ProcessF.ice

Ice_FacetMap_ice.py: $(slicedir)/Ice/FacetMap.ice
	$(SLICE2PY) $(SLICE2PYFLAGS) --prefix Ice_ --no-package $(slicedir)/Ice/FacetMap.ice

Ice_Connection_ice.py: $(slicedir)/Ice/Connection.ice
	$(SLICE2PY) $(SLICE2PYFLAGS) --prefix Ice_ --no-package $(slicedir)/Ice/Connection.ice

Ice_ConnectionF_ice.py: $(slicedir)/Ice/ConnectionF.ice
	$(SLICE2PY) $(SLICE2PYFLAGS) --prefix Ice_ --no-package $(slicedir)/Ice/ConnectionF.ice

Ice_SliceChecksumDict_ice.py: $(slicedir)/Ice/SliceChecksumDict.ice
	$(SLICE2PY) $(SLICE2PYFLAGS) --prefix Ice_ --no-package $(slicedir)/Ice/SliceChecksumDict.ice


Glacier_Router_ice.py: $(slicedir)/Glacier/Router.ice
	$(SLICE2PY) $(SLICE2PYFLAGS) --prefix Glacier_ $(slicedir)/Glacier/Router.ice

Glacier_SessionF_ice.py: $(slicedir)/Glacier/SessionF.ice
	$(SLICE2PY) $(SLICE2PYFLAGS) --prefix Glacier_ $(slicedir)/Glacier/SessionF.ice

Glacier_Session_ice.py: $(slicedir)/Glacier/Session.ice
	$(SLICE2PY) $(SLICE2PYFLAGS) --prefix Glacier_ $(slicedir)/Glacier/Session.ice

Glacier_SessionManagerF_ice.py: $(slicedir)/Glacier/SessionManagerF.ice
	$(SLICE2PY) $(SLICE2PYFLAGS) --prefix Glacier_ $(slicedir)/Glacier/SessionManagerF.ice

Glacier_SessionManager_ice.py: $(slicedir)/Glacier/SessionManager.ice
	$(SLICE2PY) $(SLICE2PYFLAGS) --prefix Glacier_ $(slicedir)/Glacier/SessionManager.ice

Glacier_Starter_ice.py: $(slicedir)/Glacier/Starter.ice
	$(SLICE2PY) $(SLICE2PYFLAGS) --prefix Glacier_ $(slicedir)/Glacier/Starter.ice


Glacier2_RouterF_ice.py: $(slicedir)/Glacier2/RouterF.ice
	$(SLICE2PY) $(SLICE2PYFLAGS) --prefix Glacier2_ $(slicedir)/Glacier2/RouterF.ice

Glacier2_Router_ice.py: $(slicedir)/Glacier2/Router.ice
	$(SLICE2PY) $(SLICE2PYFLAGS) --prefix Glacier2_ $(slicedir)/Glacier2/Router.ice

Glacier2_SessionF_ice.py: $(slicedir)/Glacier2/SessionF.ice
	$(SLICE2PY) $(SLICE2PYFLAGS) --prefix Glacier2_ $(slicedir)/Glacier2/SessionF.ice

Glacier2_Session_ice.py: $(slicedir)/Glacier2/Session.ice
	$(SLICE2PY) $(SLICE2PYFLAGS) --prefix Glacier2_ $(slicedir)/Glacier2/Session.ice

Glacier2_PermissionsVerifierF_ice.py: $(slicedir)/Glacier2/PermissionsVerifierF.ice
	$(SLICE2PY) $(SLICE2PYFLAGS) --prefix Glacier2_ $(slicedir)/Glacier2/PermissionsVerifierF.ice

Glacier2_PermissionsVerifier_ice.py: $(slicedir)/Glacier2/PermissionsVerifier.ice
	$(SLICE2PY) $(SLICE2PYFLAGS) --prefix Glacier2_ $(slicedir)/Glacier2/PermissionsVerifier.ice


IceBox_IceBox_ice.py: $(slicedir)/IceBox/IceBox.ice
	$(SLICE2PY) $(SLICE2PYFLAGS) --prefix IceBox_ $(slicedir)/IceBox/IceBox.ice


IcePack_Admin_ice.py: $(slicedir)/IcePack/Admin.ice
	$(SLICE2PY) $(SLICE2PYFLAGS) --prefix IcePack_ $(slicedir)/IcePack/Admin.ice

IcePack_Exception_ice.py: $(slicedir)/IcePack/Exception.ice
	$(SLICE2PY) $(SLICE2PYFLAGS) --prefix IcePack_ $(slicedir)/IcePack/Exception.ice

IcePack_Query_ice.py: $(slicedir)/IcePack/Query.ice
	$(SLICE2PY) $(SLICE2PYFLAGS) --prefix IcePack_ $(slicedir)/IcePack/Query.ice


IcePatch_IcePatch_ice.py: $(slicedir)/IcePatch/IcePatch.ice
	$(SLICE2PY) $(SLICE2PYFLAGS) --prefix IcePatch_ $(slicedir)/IcePatch/IcePatch.ice


IceStorm_IceStorm_ice.py: $(slicedir)/IceStorm/IceStorm.ice
	$(SLICE2PY) $(SLICE2PYFLAGS) --prefix IceStorm_ $(slicedir)/IceStorm/IceStorm.ice

clean::
	-del /Q *.pyc
	-del /Q *_ice.py
	-rmdir /S /Q $(PACKAGES)
