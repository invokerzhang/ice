// **********************************************************************
//
// Copyright (c) 2003-2005 ZeroC, Inc. All rights reserved.
//
// This copy of Ice is licensed to you under the terms described in the
// ICE_LICENSE file included in this distribution.
//
// **********************************************************************

using System.Collections;

public class ServerLocatorRegistry : Ice._LocatorRegistryDisp
{
    public ServerLocatorRegistry()
    {
        _adapters = new Hashtable();
        _objects = new Hashtable();
    }

    public override void setAdapterDirectProxy_async(Ice.AMD_LocatorRegistry_setAdapterDirectProxy cb, string adapter, 
						     Ice.ObjectPrx obj, Ice.Current current)
    {
        _adapters[adapter] = obj;
	cb.ice_response();
    }
  
    public override void setServerProcessProxy_async(Ice.AMD_LocatorRegistry_setServerProcessProxy cb,
						     string id, Ice.ProcessPrx proxy, Ice.Current current)
    {
        cb.ice_response();
    }

    public virtual Ice.ObjectPrx getAdapter(string adapter)
    {
        object obj = _adapters[adapter];
        if(obj == null)
        {
            throw new Ice.AdapterNotFoundException();
        }
        return (Ice.ObjectPrx)obj;
    }
    
    public virtual Ice.ObjectPrx getObject(Ice.Identity id)
    {
        object obj = _objects[id];
        if(obj == null)
        {
            throw new Ice.ObjectNotFoundException();
        }
        return (Ice.ObjectPrx)obj;
    }
    
    public virtual void addObject(Ice.ObjectPrx obj)
    {
        _objects[obj.ice_getIdentity()] = obj;
    }
    
    private Hashtable _adapters;
    private Hashtable _objects;
}
