// **********************************************************************
//
// Copyright (c) 2003-2005 ZeroC, Inc. All rights reserved.
//
// This copy of Ice is licensed to you under the terms described in the
// ICE_LICENSE file included in this distribution.
//
// **********************************************************************

#ifndef TEST_ICE
#define TEST_ICE

module Test
{

["ami"] interface TestIntf
{
    void shutdown();
    void abort();
    idempotent void idempotentAbort();
    nonmutating void nonmutatingAbort();
    idempotent int pid();
};

interface Cleaner
{
    void cleanup();
};

};

#endif
