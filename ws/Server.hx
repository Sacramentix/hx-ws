package ws;

import js.node.buffer.Buffer;

@:jsRequire("ws", "Server") extern class Server extends js.node.events.EventEmitter<Server> {
	function new(?options:ServerOptions, ?callback:() -> Void);
	var options : ServerOptions;
	var path : String;
	var clients : js.lib.Set<Ws>;
	function address():ts.AnyOf2<String, AddressInfo>;
	function close(?cb:ts.AnyOf2<() -> Void, (err:js.lib.Error) -> Void>):Void;
	function handleUpgrade(request:js.node.http.IncomingMessage, socket:js.node.net.Socket, upgradeHead:Buffer, callback:(client:Ws) -> Void):Void;
	function shouldHandle(request:js.node.http.IncomingMessage):ts.AnyOf2<Bool, js.lib.Promise<Bool>>;
	@:overload(function(event:String, cb:(error:js.lib.Error) -> Void):Server { })
	@:overload(function(event:String, cb:(headers:Array<String>, request:js.node.http.IncomingMessage) -> Void):Server { })
	@:overload(function(event:String, cb:() -> Void):Server { })
	@:overload(function(event:ts.AnyOf2<String, js.lib.Symbol>, listener:(args:haxe.extern.Rest<Dynamic>) -> Void):Server { })
	function on(event:String, cb:(socket:Ws, request:js.node.http.IncomingMessage) -> Void):Server;
	@:overload(function(event:String, cb:(error:js.lib.Error) -> Void):Server { })
	@:overload(function(event:String, cb:(headers:Array<String>, request:js.node.http.IncomingMessage) -> Void):Server { })
	@:overload(function(event:String, cb:() -> Void):Server { })
	@:overload(function(event:ts.AnyOf2<String, js.lib.Symbol>, listener:(args:haxe.extern.Rest<Dynamic>) -> Void):Server { })
	function once(event:String, cb:(socket:Ws, request:js.node.http.IncomingMessage) -> Void):Server;
	@:overload(function(event:String, cb:(error:js.lib.Error) -> Void):Server { })
	@:overload(function(event:String, cb:(headers:Array<String>, request:js.node.http.IncomingMessage) -> Void):Server { })
	@:overload(function(event:String, cb:() -> Void):Server { })
	@:overload(function(event:ts.AnyOf2<String, js.lib.Symbol>, listener:(args:haxe.extern.Rest<Dynamic>) -> Void):Server { })
	function off(event:String, cb:(socket:Ws, request:js.node.http.IncomingMessage) -> Void):Server;
	@:overload(function(event:String, cb:(err:js.lib.Error) -> Void):Server { })
	@:overload(function(event:String, cb:(headers:Array<String>, request:js.node.http.IncomingMessage) -> Void):Server { })
	@:overload(function(event:String, cb:() -> Void):Server { })
	@:overload(function(event:ts.AnyOf2<String, js.lib.Symbol>, listener:(args:haxe.extern.Rest<Dynamic>) -> Void):Server { })
	function addListener(event:String, cb:(client:Ws) -> Void):Server;
	@:overload(function(event:String, cb:(err:js.lib.Error) -> Void):Server { })
	@:overload(function(event:String, cb:(headers:Array<String>, request:js.node.http.IncomingMessage) -> Void):Server { })
	@:overload(function(event:String, cb:() -> Void):Server { })
	@:overload(function(event:ts.AnyOf2<String, js.lib.Symbol>, listener:(args:haxe.extern.Rest<Dynamic>) -> Void):Server { })
	function removeListener(event:String, cb:(client:Ws) -> Void):Server;
	function removeAllListeners(?event:ts.AnyOf2<String, js.lib.Symbol>):Server;
	function setMaxListeners(n:Float):Server;
	function prependListener(event:ts.AnyOf2<String, js.lib.Symbol>, listener:(args:haxe.extern.Rest<Dynamic>) -> Void):Server;
	function prependOnceListener(event:ts.AnyOf2<String, js.lib.Symbol>, listener:(args:haxe.extern.Rest<Dynamic>) -> Void):Server;
	static var prototype : Server;
}