using SOAPlite
using Test, LinearAlgebra, BenchmarkTools
using JuLIP, JuLIP.Testing

@testset "SOAPlite.jl" begin
    include("test.jl")
end

