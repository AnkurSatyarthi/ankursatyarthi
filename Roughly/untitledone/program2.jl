using DataFrames, CSV, Plots

function download_titantic()
    url = "https://www.openml.org/data/get_csv/16826755/phpMYEkMl"
    return DataFrame(CSV.File(download(url); missingstring = "?"))
end
titanic = download_titantic()

pclass = titanic.pclass
survived = titanic.survived
gender = titanic.sex
ticket = titanic.ticket
fare = titanic.fare
age = titanic.age
# scatter3d(pclass,gender,ticket)
histogram(ticket, fare)
