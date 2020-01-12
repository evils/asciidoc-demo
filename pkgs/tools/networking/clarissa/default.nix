{ stdenv, fetchFromGitLab, libpcap, perl }:

stdenv.mkDerivation rec {

  pname = "clarissa";
  version = "0.6.1"; # <1>

  src = fetchFromGitLab {
    owner = "evils";
    repo = "clarissa";
    rev = "v${version}";
    sha256 = "07pjhs3szd742771wkdbmsh3z6mjcf034jlsvsd2l0aqza4vhnqz";
  };

  buildInputs = [ libpcap perl ];

  doCheck = true;

  installFlags = [ "DESTDIR=${placeholder "out"}" "PREFIX=" "SYSDINST=false" ];

  meta = with stdenv.lib; {
    description = "Near real-time network census daemon";
    longDescription = ''
      Clarissa is a daemon which keeps track of connected MAC addresses on a network.
      It can report these with sub-second resolution and can monitor passively.
      Currently includes a utility to report a count of known and unknown addresses.
    '';
    homepage = https://gitlab.com/evils/clarissa/;
    license = licenses.bsd3;
    platforms = platforms.linux;
    maintainers = [ maintainers.evils ];
  };
}
