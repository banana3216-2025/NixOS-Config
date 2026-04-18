{ config, ... }:

{
  imports = [
    ./hardware-configuration.nix
    ./amdgpu.nix
  ];
}
