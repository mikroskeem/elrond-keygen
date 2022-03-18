{ lib, buildGo117Module, rev ? "dirty" }:

buildGo117Module rec {
  pname = "elrond-keygen";
  version = rev;

  src = ./.;

  ldflags = [
    "-s -w"
  ];

  #vendorSha256 = "sha256-/ln1FfVYMcPd+BXwIpdLMKQPJTPqvM5HQLtZKKidd0k=";
  vendorSha256 = null;
  subPackages = [ "cmd/elrond-keygen" ];
}
