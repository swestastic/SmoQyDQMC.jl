# integration test that runs a DQMC simulation of a Hubbard Chain at half-filling
@testitem "Hubbard Chain Example" begin
    
    include("../examples/hubbard_chain.jl")
    sID = abs(rand(Int))
    U = 6.0
    μ = 0.0
    β = 2.0
    L = 4
    N_burnin = 2
    N_updates = 2
    N_bins = 2
    @test isnothing(run_hubbard_chain_simulation(sID, U, μ, β, L, N_burnin, N_updates, N_bins, filepath = tempdir()))
end