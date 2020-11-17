package ws;

import js.node.buffer.Buffer;

/**
	Data represents the message payload received over the WebSocket.
**/
typedef Data = ts.AnyOf3<String, Buffer, Array<Buffer>>;