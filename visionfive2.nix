{ pkgs, ... }: {

  nixpkgs = {
    localSystem.config = "riscv64-unknown-linux-gnu";
  };

  virtualisation.docker.enable = true;
  users.users.root.hashedPassword = "$y$j9T$udmWOUL83BI/zSUuqJOXR.$8xR73OTkV52DQVdp6PspvROhLzG8Mgj3VQjG8AOub34";
  users.users.nixos.hashedPassword = "$y$j9T$WKj3UyDIuS1i5jl8u62Gm0$trGjHf0T4ob87gdP.qQvwKIjCND.r8ckCdupE1yLgy8";

  environment.systemPackages = with pkgs;[ neofetch iperf3 htop git ];

}
