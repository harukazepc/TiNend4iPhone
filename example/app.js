// This is a test harness for your module
// You should do something interesting in this harness 
// to test out the module and to provide instructions 
// to users on how to use it by example.


// open a single window
var window = Ti.UI.createWindow({
	backgroundColor:'white'
});
var label = Ti.UI.createLabel();
window.add(label);
window.open();

// TODO: write your module tests here
var tinend4iphone = require('tv.harukaze.ti.nend.iphone');
Ti.API.info("module is => " + tinend4iphone);
var adview = tinend4iphone.createView({
	apiKey:'',
	spotID:''
});
window.add(adview);

/*
label.text = tinend4iphone.example();

Ti.API.info("module exampleProp is => " + tinend4iphone.exampleProp);
tinend4iphone.exampleProp = "This is a test value";

if (Ti.Platform.name == "android") {
	var proxy = tinend4iphone.createExample({message: "Creating an example Proxy"});
	proxy.printMessage("Hello world!");
}
*/
