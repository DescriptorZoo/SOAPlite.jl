@testset "SOAPlite Descriptor" begin

@info("Testing SOAPlite Descriptor for DC Si with cutoff=6.5, n=4, l=4")
using JuLIP
using SOAPlite, Test

at = bulk(:Si, cubic=true)
desc = soaplite(at, 6.5, n_max=4, l_max=4)
# Reference is from the output of the QUIP command as follows
# quip atoms_filename=test.xyz descriptor_str="soap cutoff=6.5 l_max=4 n_max=4 atom_sigma=0.5 normalise=T n_Z=1 Z={14} n_species=1 species_Z={14}"
soaplite_ref = [ 0.1971183445703821,     1.4490657343533957, 
                 0.5107929461890574,     1.8172037012517137, 
                10.652440832199687,      3.7549653599475037, 
                13.358714134715191,      1.3236182276446533, 
                 4.70892160955927,      16.75252143092065, 
                 0.017463358091459907,  -0.02626119328542633, 
                 0.11471972827481619,   -0.4090557633886685, 
                 0.03949127476872734,   -0.1725141832457655, 
                 0.6151332642099767,     0.7536131359456912, 
                -2.6871559169449846,     9.581583145988054, 
                 0.004708428029764531,  -0.011058683554778901, 
                 0.023747935881985295,  -0.16566775992816207, 
                 0.02597352687386267,   -0.055776770152986335, 
                 0.38910381993589627,    0.11977765298519145, 
                -0.8355797976767374,     5.829080641376547, 
                 0.0006486216581383904, -0.0025158961247938256, 
                 0.005301754501410711,  -0.009553657612107339, 
                 0.010103897726600844,  -0.023776685376270507, 
                 0.011598805156323224,   0.07322789608095953, 
                 0.15882882691545966,    2.018502009027488, 
                 0.0031142829543606703, -0.014809827760354713, 
                 0.03513043211547648,   -0.009589132006098629, 
                 0.07045157270748875,   -0.16756672316768023, 
                 0.04181981593527481,    0.40688151258454447, 
                -0.0289359019056896,     0.6220462845081933]
soaplite_now = vcat(desc[1,:]...)
println("SOAPlite:",soaplite_now)
println("Reference:",soaplite_ref)
println(@test soaplite_now  ≈  soaplite_ref)

end
