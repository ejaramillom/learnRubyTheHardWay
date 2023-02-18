{ pkgs }: {
	deps = [
        pkgs.rubyPackages.railties
        pkgs.ruby
        pkgs.solargraph
        pkgs.rufo
	];
}