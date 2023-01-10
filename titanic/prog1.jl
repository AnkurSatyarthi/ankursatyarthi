using DataFrames, CSV, TypedTables, GLM, Plots
function download_titantic()
    url = "https://www.openml.org/data/get_csv/16826755/phpMYEkMl"
    return DataFrame(CSV.File(download(url); missingstring = "?"))
end
titanic = download_titantic()
# titanic = DataFrame(CSV.Files())
vscodedisplay(titanic)
describe(titanic)
describe(titanic, :mean, :std)
describe(titanic, extrema => :extrema)
# stack(titanic, [:sibsp, :parch])
# unstack(titanic, :variable, :value)
first(titanic, 5)
last(titanic, 5)
unique(titanic)
unique(titanic, [:pclass, :survived])
filter(:sex => ==("male"), titanic)
# subset(titanic, :survived)
# subset(titanic, :sex => x -> x .== "male")
# titanic[6:10, :]
# titanic[titanic.sex .== "male", :]
titanic[findfirst(==(30), titanic.age), :]
titanic[findall(==(1), titanic.pclass), :]
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
nrow(titanic)
propertynames(titanic)
ncol(titanic)
columnindex(titanic, "sex")
dropmissing(titanic)
dropmissing(titanic, [:age, :sex])
allowmissing(titanic)
allowmissing(titanic, :sibsp)
disallowmissing(titanic)
disallowmissing(titanic, :sibsp)
completecases(titanic)
completecases(titanic, [:age, :sex])
# using RollingFunctions
# select(titanic, :x => cumsum)
# select(titanic, :x => cumprod)
# select(titanic, :x => v -> accumulate(min, v))
# select(titanic, :x => v -> accumulate(max, v))
# combine(titanic, :age => (x -> mean(skipmissing(x))))
# select(titanic, :x => v -> cumsum(v) ./ (1:length(v)))
# select(titanic, :x => (v -> runmean(v, n)))
# select(titanic, :x => (v -> runmedian(v, n)))
# select(titanic, :x => (v -> runmin(v, n)))
# select(titanic, :x => (v -> runmax(v, n)))
# using StatsBase
# select(titanic, :x => ordinalrank)
# select(df, :x => competerank)
# select(df, :x => denserank)
# select(df, :x => tiedrank)
# using ShiftedArrays
# select(df, :x => lead)
# select(df, :x => lag)
# using Pipe
# @pipe df |>
# filter(:sex => ==("male"), _) |>
# groupby(_, :pclass) |>
# combine(_, :age => mean)
combine(titanic, :survived => sum)
combine(titanic, :survived => sum => :survived)
combine(titanic, :age => (x -> mean(skipmissing(x))))
combine(titanic, [:parch, :sibsp] .=> maximum)
transform(titanic, :fare => mean => :average_fare)
select(titanic, :name, :fare, :fare => mean => :average_fare)
transform(titanic, [:parch, :sibsp] => ByRow(+) => :relatives)
transform(titanic, :name => ByRow(x -> split(x, ",")) => [:lname, :fname])
gdf = groupby(titanic, :pclass)
gdf = groupby(titanic, [:pclass, :sex])
keys(gdf)
# gdf[(1,)]
combine(gdf, :survived => sum)
combine(gdf) do sdf
    DataFrame(survived = sum(sdf.survived))
end
combine(gdf, AsTable(:) => t -> sum(t.parch .+ t.sibsp))
# innerjoin(df1, df2, on = :id)
# leftjoin(df1, df2, on = :id)
# rightjoin(df1, df2, on = :id)
# outerjoin(df1, df2, on = :id)
# semijoin(df1, df2, on = :id)
# antijoin(df1, df2, on = :id)
# vcat(df1, df2)
# hcat(df1, df2)






