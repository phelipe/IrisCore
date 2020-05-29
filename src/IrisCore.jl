module IrisCore

using MLJ:machine
using MLJ:predict_mode
using DataFrames
using DecisionTree

jlsopath() = joinpath(@__DIR__,"modelo.jlso")
@load RandomForestClassifier  pkg="DecisionTree"
mach = machine("/src/modelo.jlso")

export predictiris

function predictiris(in1::T, in2::T, in3::T) where {T<:Float64}
    predict_mode( mach, DataFrame([[in1],[in2],[in3]],
                 [:sepallength,:sepalwidth,:petallength]))
end

end # module
