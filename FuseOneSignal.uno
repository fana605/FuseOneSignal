using Uno;
using Uno.UX;
using Uno.Collections;
using Uno.Compiler.ExportTargetInterop;
using Fuse;
using Fuse.Triggers;
using Fuse.Scripting;
using Fuse.Reactive;
using Fuse.Controls;
using Fuse.Controls.Native;
using Fuse.Controls.Native.Android;
using Uno.Threading;
using Uno.Platform2;



namespace FuseOneSignal
{
    [extern(iOS) Require("Cocoapods.Podfile.Target", "pod 'OneSignal'")]
    //[extern(iOS) Require("Source.Import","/Volumes/MacOs Work/www/playground/fuse/onesignal/FuseOneSignal/build/iOS/Preview/Pods/Headers/Public/OneSignal/OneSignal/OneSignal.h")]
    [extern(iOS) Require("AppDelegate.SourceFile.Declaration", "#import <OneSignal/OneSignal.h>")]
    [extern(iOS) Require("AppDelegate.SourceFile.DidFinishLaunchingWithOptions", "[OneSignal initWithLaunchOptions:launchOptions appId:@\"e21f348a-56b8-4355-88e2-11892cb42d50\"];")]
    
    extern(iOS)
    internal class OneSignalService
    {

        [Foreign(Language.ObjC)]
        extern(iOS)
        public void StartService(ApplicationState state)
        @{
            NSLog(@"%@", "OneSignal didFinishLaunchingWithOptions");
            
            
        @}
    }

    extern(!mobile)
    internal class OneSignalService
    {
        public void StartService(ApplicationState state) {
            debug_log("OneSignal not supported in this platform.");
        }
    }

    
}