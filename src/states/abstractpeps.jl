# abstractpeps.jl

###########################
## Abstract tensor types ##
###########################

"""
    const PEPSTensor{S}

Default type for PEPS tensors with a single physical index, and 4 virtual indices,
conventionally ordered as: T : P ← N ⊗ E ⊗ S ⊗ W.
"""
const PEPSTensor{S} = AbstractTensorMap{S, 1, 4} where {S<:EuclideanSpace}


"""
    const PEPOTensor{S}
    
Default type for PEPO tensors with a single incoming and outgoing physical index, and 4
    virtual indices, conventionally ordered as: O : P ⊗ P' ← N ⊗ E ⊗ S ⊗ W.
"""
const PEPOTensor{S} = AbstractTensorMap{S, 2, 4} where {S<:EuclideanSpace}

##########################
## Abstract state types ##
##########################

"""
    abstract type AbstractPEPS end

Abstract supertype for a 2D projected entangled pairs state.
"""
abstract type AbstractPEPS end