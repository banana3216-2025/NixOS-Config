{ config, pkgsm ... }:

{
  home.packages = with pkgs; [
    # system tools
    sysstat
    lm_sensors # for `sensors` command
    ethtool
    pciutils # lspci
    usbutils # lsusb
  ];
}