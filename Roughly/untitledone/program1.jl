function pattern_one(n)
    for r in 1:n
        for c in 1:r
            print(c)
        end
        println()
    end
end
pattern_one(13)