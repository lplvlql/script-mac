JsOsaDAS1.001.00bplist00�Vscript_�function appQuit(appName, doWait = false) {
    Application(appName).quit();
	
    if (doWait) {
        appQuitWait(appName);
    }
}


function appQuitWait(appName) {
	let appProcess = Application("System Events").processes[appName];
    
    while (appProcess.exists()) {
        delay(1);
        appProcess = Application("System Events").processes[appName];
    }
}

const appName = $.NSProcessInfo.processInfo.arguments.objectAtIndex(2).js;
appQuit(appName, true);                              �jscr  ��ޭ