// **********************************************************************
//
// Copyright (c) 2003-2005 ZeroC, Inc. All rights reserved.
//
// This copy of Ice is licensed to you under the terms described in the
// ICE_LICENSE file included in this distribution.
//
// **********************************************************************

using Test;

public sealed class AI : _ADisp
{
    public AI()
    {
    }
    
    public override string callA(Ice.Current current)
    {
        return "A";
    }
}
