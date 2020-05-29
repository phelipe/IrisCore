module IrisCore

using MLJ
using DataFrames
using DecisionTree

RandomForestClassifier()
const jlsopath = String(joinpath(@__DIR__,"modelo2.jlso"))


export predict_iris

function predict_iris(in1::T, in2::T, in3::T) where {T<:Float64}
    mach_load = machine(jlsopath)
    predict_mode( mach_load, DataFrame([[in1],[in2],[in3]],
                  [:sepallength,:sepalwidth,:petallength]))[1]
end

end 
