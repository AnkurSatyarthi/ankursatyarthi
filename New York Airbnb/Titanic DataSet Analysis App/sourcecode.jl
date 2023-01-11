using DataFrames, CSV, TypedTables, GLM, Plots, Makie
function titanic_passenger_analysis()
    while true
        println("Welcome to our titanic passenger analysis windows app")
        function download_titantic()
            url = "https://www.openml.org/data/get_csv/16826755/phpMYEkMl"
            return DataFrame(CSV.File(download(url); missingstring = "?"))
        end
        titanic = download_titantic()
        titanic
        println("Enter Question number from given list below to know more about titanic passenger analysis...")
        println("Questions")
        println("1: How many passengers were in titanic ?")
        println("(blank to exit)")
        input = readline()
        if input == ""
            break
        end
        if input == 1
    end
end
