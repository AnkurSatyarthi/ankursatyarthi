using CSV, XLSX, DataFrames, Plots, GLM, TypedTables
nyc_airbnb = CSV.File("data/airbnb_price.csv")
nyc_airbnb_price = DataFrame(CSV.File("data/airbnb_price.csv"))
# nyc_airbnb_room_type = XLSX.File("data/airbnb_room_type.xlsx")
nyc_airbnb_last_review = DataFrame(CSV.File("data/airbnb_last_review.csv"))
nyc_airbnb_price.price = 