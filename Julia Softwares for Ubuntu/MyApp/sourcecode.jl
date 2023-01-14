using Gtk
canvas = GtkWindow("MyUbuntuApp")

vb = GtkBox(:v)
push!(canvas, vb)

label = GtkLabel("What?")
GAccessor.justify(content_label, Gtk.GConstants.GtkJustification.CENTER)

push!(vertical_box, label)
say_yo = GtkButton("Say Yo")
push!(vertical_box, say_yo)

showall(canvas)

set_gtk_property!(vertical_box, :expand, label, true)

id = signal_connect(say_yo, "butten-press-event") do widget, event
    if get_gtk_property(vertical_box[1], :label, String) == "What?"
        GAccessor.text(label, "Yo")
    else
        GAccessor.text(label, "What")
    end
end









