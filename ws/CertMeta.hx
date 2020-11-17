package ws;

import js.node.buffer.Buffer;

/**
	CertMeta represents the accepted types for certificate & key data.
**/
typedef CertMeta = ts.AnyOf4<String, Buffer, Array<String>, Array<Buffer>>;