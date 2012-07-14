# stripped down build.mk that fits our needs
# if you want to tweak them, see mk/build.mk.sample in the dist tarball
SRC_HC_OPTS        = -O -H32m
GhcStage1HcOpts    = -O -fasm
GhcStage2HcOpts    = -O2 -fasm
GhcHcOpts          = -Rghc-timing
# GhcLibHcOpts       = -O2 -XGenerics
GhcLibHcOpts       = -O2
# GhcLibWays         = v p
GhcLibWays         = v p dyn
# SplitObjs          = NO
# YES is the default for SplitObjs
SplitObjs          = YES
HADDOCK_DOCS       = NO
BUILD_DOCBOOK_HTML = NO
BUILD_DOCBOOK_PS   = NO
BUILD_DOCBOOK_PDF  = NO
HSCOLOUR_SRCS      = NO
