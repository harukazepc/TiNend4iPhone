TiNend4iPhone
===========================================

Nend module for Titanium Mobile (iPhone).
This module uses Nend Android SDK.

HOW TO USE IT
-----------------------------

	var tinend4iphone = require('tv.harukaze.ti.nend.iphone');
	var adview = tinend4iphone.createView({
		apiKey:'',
		spotID:''
	});
	window.add(adview);


QUICK INSTALL TiNend4Android
--------------------

0. Download this module Project
1. Make 'NendAd' directory in the module directory
2. Download `Nend iOS SDK` from Nend's Web Console
3. Copy `Nend iOS SDK` .h and .a files into `NendAd` directory
4. Open 'tinend4iphone.xcodeproj' by XCode and build it
5. Module zip file is made, and move it to your project


REGISTER TO YOUR PROJECT
---------------------

Register your module with your application by editing `tiapp.xml` and adding your module.
Example:

	<modules>
		<module version="0.1" platform="iphone">tv.harukaze.ti.nend.iphone</module>
	</modules>

When you run your project, the compiler will know automatically compile in your module
dependencies and copy appropriate image assets into the application.


LICENSE
---------------------
MIT License

Copyright 2012 Tomoya Narita 
http://harukaze.tv/
http://d.hatena.ne.jp/harukazepc/
Twitter: @harukazepc