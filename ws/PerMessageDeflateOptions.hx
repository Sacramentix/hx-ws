package ws;
import js.node.buffer.Buffer;

typedef PerMessageDeflateOptions = {
	@:optional
	var serverNoContextTakeover : Bool;
	@:optional
	var clientNoContextTakeover : Bool;
	@:optional
	var serverMaxWindowBits : Float;
	@:optional
	var clientMaxWindowBits : Float;
	@:optional
	var zlibDeflateOptions : {
		@:optional
		var flush : Float;
		@:optional
		var finishFlush : Float;
		@:optional
		var chunkSize : Float;
		@:optional
		var windowBits : Float;
		@:optional
		var level : Float;
		@:optional
		var memLevel : Float;
		@:optional
		var strategy : Float;
		@:optional
		var dictionary : ts.AnyOf3<Buffer, Array<Buffer>, js.lib.DataView>;
		@:optional
		var info : Bool;
	};
	@:optional
	var zlibInflateOptions : js.node.Zlib.ZlibOptions;
	@:optional
	var threshold : Float;
	@:optional
	var concurrencyLimit : Float;
};