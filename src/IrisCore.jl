__precompile__()
module IrisCore

using MLJ
using DataFrames
using DecisionTree

RandomForestClassifier()
const _jlsopath = String(joinpath(@__DIR__,"modelo2.jlso"))


export predict_iris

function predict_iris(in1::T, in2::T, in3::T) where {T<:Float64}
    mach_load = machine(_jlsopath)
    predict_mode( mach_load, DataFrame([[in1],[in2],[in3]],
                  [:sepallength,:sepalwidth,:petallength]))[1]
end

precompile(predict_iris, (1.2,2.5,5.6))


end 
