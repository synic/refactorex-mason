#!/usr/bin/env bash

VERSION="0.1.28"

rm -rf refactorex/
mkdir refactorex
curl -L "https://github.com/gp-pereira/refactorex/archive/refs/tags/$VERSION.tar.gz" |
	tar zx -C refactorex --strip-components 1
cd refactorex
patch -p1 <../stdio.patch
mix deps.get
mix compile

cat >"bin/start-stdio" <<EOF
#!/usr/bin/env bash

cd "\$(dirname "\$0")"/.. || exit 1

./bin/start --stdio "\$0"
EOF

chmod +x "bin/start-stdio"
