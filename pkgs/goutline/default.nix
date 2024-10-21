{ buildGoModule, fetchFromGitHub, lib, go }:

buildGoModule rec {
	pname = "goutline";
	version = "1.0.1";

	src = fetchFromGitHub {
		owner = "1pkg";
		repo = pname;
		rev = "v${version}";
		hash = "sha256-Ttk68iNZBKpsJbltpIqPlotYIhOqDG4KghwtIU39iEQ=";
		postFetch = ''
			export GOCACHE=$TMPDIR/go-build
			export GOPATH=$TMPDIR/go
			export GOMODCACHE=$TMPDIR/go/pkg/mod
			cd $out
			${lib.getExe go} mod init github.com/1pkg/goutline
			${lib.getExe go} mod tidy
		'';
	};

	vendorHash = "sha256-mvUnt+CQ02EPzrCTgf6Hcg5L9O2FWasLpFh/okk5tak=";

	meta = with lib; {
		description = "Go AST Declaration Extractor";
		homepage = "https://github.com/1pkg/goutline";
		license = licenses.mit;
		maintainers = with maintainers; [ wwmoraes ];
	};
}
