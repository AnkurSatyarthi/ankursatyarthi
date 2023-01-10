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
first(titanic.name, 5)
last(titanic, 5)
unique(titanic)
unique(titanic, [:pclass, :survived])
filter(:sex => ==("male"), titanic)
filter(:sex => ==("female"), titanic)
titanic[findfirst(==(30), titanic.age), :]
titanic[findall(==(1), titanic.pclass), :]
titanic[findall(==(2), titanic.pclass), :]
titanic[findall(==(3), titanic.pclass), :]
select(titanic, :sex)
select(titanic, "sex")
select(titanic, [:sex, :age])
select(titanic, 2:5)
select(titanic, r"^s")
select(titanic, Not(:age))
select(titanic, Between(:name, :age))
titanic[:, [:sex, :age]]
titanic[!, [:sex, :age]]
sort(titanic, :age)
sort(titanic, :age, rev = true)
sort(titanic, [:age, order(:sibsp, rev = true)])
names(titanic)
propertynames(titanic)
columnindex(titanic, "sex")
dropmissing(titanic, [:age, :sex])
allowmissing(titanic, :sibsp)
# disallowmissing(titanic, :survived)
# disallowmissing(titanic, :sibsp)
completecases(titanic)
completecases(titanic, [:age, :sex])




