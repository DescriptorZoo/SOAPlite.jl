module SOAPlite

using ASE
using JuLIP
using PyCall

py_soaplite = pyimport("soaplite")

export soaplite

function soaplite(at, cutoff; n_max=1, l_max=1, sigma=0.5, cross_over=true)

all_unique_nums = unique(collect(at.Z))

#Setting SOAPlite Descriptors
alphas, betas = py_soaplite.genBasis.getBasisFunc(cutoff, n_max)
soaplite_desc = py_soaplite.get_soap_structure

# Calculate descriptor
atom_struct = ASEAtoms(at)
soaplite_rtn_desc = soaplite_desc(atom_struct.po, alphas, betas,
                                  rCut=cutoff, nMax=n_max,
                                  Lmax=l_max, crossOver=cross_over,
                                  all_atomtypes=all_unique_nums)

return soaplite_rtn_desc
end

end # module
