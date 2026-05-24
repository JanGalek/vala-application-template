namespace App { 
    public class MyApp : Adw.Application {
        public MyApp () {
            Object (
                application_id: "io.github.JanGalek.vala-application-template",
                flags: ApplicationFlags.DEFAULT_FLAGS
            );
        }

        protected override void activate () {
            var label = new Gtk.Label ("Hello Again World!");
    
            var main_window = new Gtk.ApplicationWindow (this) {
                child = label,
                default_height = 300,
                default_width = 300,
                title = _ ("Hello World")
            };
            main_window.present ();
        }

        public static int main (string[] args) {
            return new MyApp ().run (args);
        }
    }
}