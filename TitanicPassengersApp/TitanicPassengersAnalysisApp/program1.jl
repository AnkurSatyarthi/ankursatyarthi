using DataFrames, CSV, Gtk
# design gui lsyout
canvas = GtkWindow("Titanic Passengers Analysis app")
# gtkbox
vertical_box_layout = GtkBox(:v)
push!(canvas, vertical_box_layout)

# content = GtkLabel("Titanic")
function download_titantic()
    url = "https://www.openml.org/data/get_csv/16826755/phpMYEkMl"
    return DataFrame(CSV.File(download(url); missingstring = "?"))
end

content = download_titantic()
GAccessor.justify(text_area, Gtk.GConstants.GtkJustification.CENTER)
push!(vertical_box_layout, content)

load_titanic_dataset = GtkButton("Load Titanic DataSet")
push!(vertical_box_layout, load_titanic_dataset)

showall(canvas)

set_gtk_property!(vertical_box_layout, :expand, text_area, true)

id = signal_connect(load_titanic_dataset, "button-press-event") do widget, event
    if get_gtk_property(vertical_box_layout[1], :content, DataFrame) == download_titantic
        GAccessor.text(content, download_titantic())
    else
        GAccessor.text(content, download_titantic())
    end
end