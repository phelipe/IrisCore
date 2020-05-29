using IrisCore
using Test

@test predict_iris(1.2,2.5,5.6) == "Virginica"
