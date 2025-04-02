import Toybox.Graphics;
import Toybox.WatchUi;
import Toybox.Timer;     //new from chat gpt
import Toybox.Attention; //new from chat gpt

class Metronome_appView extends WatchUi.View {
    var myTimer; //new from chat gpt

    function initialize() {
        View.initialize();
        myTimer = new Timer.Timer(); //new from chat gpt

    }

    // Load your resources here
    function onLayout(dc as Dc) as Void {
        setLayout(Rez.Layouts.MainLayout(dc));
        
    }

    // Called when this View is brought to the foreground. Restore
    // the state of this View and prepare it to be shown. This includes
    // loading resources into memory.
    function onShow() as Void {
    Attention.playTone(Attention.TONE_LOUD_BEEP);//test

        myTimer.start(method(:onTimer), 5000, true); //new from chat gpt  --> // Start a repeating timer every 5 seconds
    }

    // Update the view
    function onUpdate(dc as Dc) as Void {
        // Call the parent onUpdate function to redraw the layout
        View.onUpdate(dc);
    }

    // Called when this View is removed from the screen. Save the
    // state of this View here. This includes freeing resources from
    // memory.
    function onHide() as Void {
    }

    function onTimer() { //new from chat gpt
    // Vibrate and play a loud beep
    //Attention.vibrate(vibeProfile);
    Attention.playTone(Attention.TONE_LOUD_BEEP);
    }

}
