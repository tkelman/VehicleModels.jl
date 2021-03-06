isdefined(Base, :__precompile__) && __precompile__()

module VehicleModels

using Parameters
using JuMP
using Interpolations
using OrdinaryDiffEq
using DiffEqBase
using Ranges
using NLOptControl  # newConstraint!()

# funcitons in the VehicleModels.jl package
include("Three_DOF/Three_DOF.jl")
include("KinematicBicycle/KinematicBicycle.jl")
include("utils.jl")

export
  #########
  # Objects
  #########
  # Three DOF
  Vpara,

  # KinematicBicycle
  VparaKB,

  ###########
  # Functions
  ###########
  Linear_Spline,

  # Three DOF
  ThreeDOFv1,
  ThreeDOFv2,

  # KinematicBicycle
  KinematicBicycle,

  ###############################
  # Macros and support functions
  ###############################
  # Three DOF
  @F_YF,
  @F_YR,
  @FZ_RL,
  @FZ_RR,
  @Ax_min,
  @Ax_max,
  @unpack_Vpara,
  @pack_Vpara,

  # KinematicBicycle
  @unpack_VparaKB,
  @pack_VparaKB

end # module
