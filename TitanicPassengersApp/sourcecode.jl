using CSV, DataFrames, Gtk
function download_titantic()
    url = "https://www.openml.org/data/get_csv/16826755/phpMYEkMl"
    return DataFrame(CSV.File(download(url); missingstring = "?"))
end
titanic = download_titantic()

function titanic_passengers_analysis_app()
    try
        for passengers_data in names(titanic)
            println(passengers_data)
        end
        println("______________")
    catch
        print("Some technical issues occured")
    end
    while true
        println("hit Enter to close app")
        input = readline()
        if input == ""
            break
        end
    end
    function julia_main()
        titanic_passengers_analysis_app()
    end
end