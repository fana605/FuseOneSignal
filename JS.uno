using Uno;
using Uno.UX;
using Uno.Threading;
using Uno.Text;
using Uno.Platform;
using Uno.Platform2;
using Uno.Compiler.ExportTargetInterop;
using Uno.Collections;
using Fuse;
using Fuse.Scripting;
using Fuse.Reactive;
using FuseOneSignal;


namespace FuseOneSignal.JS
{
    [UXGlobalModule]
    public sealed class OneSignalModule : NativeModule
    {
        static readonly OneSignalModule _instance;
        static OneSignalService _oneSignalService;

        public OneSignalModule()
        {
            if(_instance != null) return;

            Resource.SetGlobalKey(_instance = this, "FuseOneSignal");

            //AddMember(new NativeFunction("ScreenView", ScreenView));
            //AddMember(new NativeFunction("TrackEvent", TrackEvent));

            _oneSignalService = new OneSignalService();

            Uno.Platform2.Application.Started += _oneSignalService.StartService;

            debug_log("OneSignal Module Initialized");
            
        }

        
        
    }
}