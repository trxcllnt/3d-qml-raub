'use strict';

const qml = require('qml-raub');

const { View, Variable } = qml;


module.exports = core => {
	
	const { glfw, loop, doc } = core;
	
	const release = () => doc.makeCurrent();
	
	qml.View.init(process.cwd(), doc.platformWindow, doc.platformContext);
	release();
	
	core.loop = cb => loop(() => {
		release();
		cb();
	});
	
	Object.assign(core.qml, {
		
		context : qml,
		
		release,
		
		View,
		Variable,
		
	});
	
	
	require('./material')(core);
	require('./rect')(core);
	require('./overlay-material')(core);
	require('./overlay')(core);
	
};
