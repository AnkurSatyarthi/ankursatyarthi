using DataFrames, CSV, TypedTables, GLM, Plots
# function download_titantic()
#     url = "https://www.openml.org/data/get_csv/16826755/phpMYEkMl"
#     return DataFrame(CSV.File(download(url); missingstring = "?"))
# end
titanic = download_titantic()
# titanic = DataFrame(CSV.Files())
# vscodedisplay(titanic)
describe(titanic)
describe(titanic, extrema => :extrema)
first(titanic, 5)
last(titanic, 5)
unique(titanic)
unique(titanic, [:pclass, :survived])
filter(:sex => ==("male"), titanic)
filter(:sex => ==("female"), titanic)




