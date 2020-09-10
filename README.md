![CI](https://github.com/DescriptorZoo/SOAPlite.jl/workflows/CI/badge.svg)

# SOAPlite.jl
Julia wrapper for SOAPLite Descriptor

This package includes a simple code that demonstrates how to access SOAPlite descriptor using PyCall and SOAPlite Python package. 

## Dependencies:

- [SOAPlite](https://github.com/SINGROUP/SOAPLite)
- [JuLIP.jl](https://github.com/JuliaMolSim/JuLIP.jl)
- [PyCall.jl](https://github.com/JuliaPy/PyCall.jl)
- [ASE.jl](https://github.com/JuliaMolSim/ASE.jl)

## Installation:

First, install SOAPlite following the code's [documentation](https://github.com/SINGROUP/SOAPLite)

Once you have installed the Python package that is used by your Julia installation, you can simply add this package to your Julia environment with the following command in Julia package manager and test whether the code produces SOAP descriptors for test system of Si:
```
] add https://github.com/DescriptorZoo/SOAPlite.jl.git
] test SOAPlite
```

## How to cite:

If you use this code and hence dependent code [SOAPlite](https://github.com/SINGROUP/SOAPLite), you need to accept the license of [SOAPlite](https://github.com/SINGROUP/SOAPLite) and cite both the code and the reference papers as they are described in code's [webpage](https://github.com/SINGROUP/SOAPLite).

This includes the following references:

* [1] On representing chemical environments  - Albert P. Bartók, Risi Kondor, Gábor Csányi [paper](https://arxiv.org/abs/1209.3140)
* [2] Comparing molecules and solids across structural and alchemical space -  Sandip De, Albert P. Bartók, Gábor Cásnyi, and Michele Ceriotti [paper](https://arxiv.org/pdf/1601.04077.pdf)
* Machine learning hydrogen adsorption on nanoclusters through structural descriptors - Marc O. J. Jäger, Eiaki V. Morooka, Filippo Federici Canova, Lauri Himanen & Adam S. Foster   [paper](https://www.nature.com/articles/s41524-018-0096-5)
