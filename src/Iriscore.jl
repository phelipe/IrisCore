module Iriscore

using MLJ:machine
using DataFrames
using DecisionTree

mach = machine("modelo.jlso")

export predictiris

function predictiris(in1::T, in2::T, in3::T) where T::Float64
    predict_mode( mach, DataFrame([[in1],[in2],[in3]],
                 [:sepallength,:sepalwidth,:petallength]))
end

end # module
