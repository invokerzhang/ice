// **********************************************************************
//
// Copyright (c) 2003-2005 ZeroC, Inc. All rights reserved.
//
// This copy of Ice is licensed to you under the terms described in the
// ICE_LICENSE file included in this distribution.
//
// **********************************************************************

namespace Ice
{
    public interface InputStream
    {
	Communicator communicator();

	void sliceObjects(bool slice);

	bool readBool();
	bool[] readBoolSeq();

	byte readByte();
	byte[] readByteSeq();

	short readShort();
	short[] readShortSeq();

	int readInt();
	int[] readIntSeq();

	long readLong();
	long[] readLongSeq();

	float readFloat();
	float[] readFloatSeq();

	double readDouble();
	double[] readDoubleSeq();

	string readString();
	string[] readStringSeq();

	int readSize();

	ObjectPrx readProxy();

	void readObject(ReadObjectCallback cb);

	string readTypeId();

	void throwException();

	void startSlice();
	void endSlice();
	void skipSlice();

	void startEncapsulation();
	void endEncapsulation();

	void readPendingObjects();

	void destroy();
    }
}
