# This just downloads and builds wheels and doesn't actually install. Takes
# arguments that pip normally takes:
#
#   pip-wheel scipy
#   pip-wheel -r requirements.txt
pip-wheel () {
    WHEEL_DIR=$HOME/.wheelhouse
    DOWNLOAD_CACHE_DIR=$HOME/.wheelcache
    rm -rf $DOWNLOAD_CACHE_DIR
    mkdir -p $DOWNLOAD_CACHE_DIR

    pip wheel --use-wheel -w "$WHEEL_DIR" -f "$WHEEL_DIR" \
        --download-cache "$DOWNLOAD_CACHE_DIR" $*

    for x in "$DOWNLOAD_CACHE_DIR/"*.whl; do
        mv "$x" "$WHEEL_DIR/${x##*%2F}"
    done
}

# First downloads and builds a wheel for any package not already contained in
# the local wheelhouse. Then installs the package.
#
#   pip-install scipy
#   pip-install -r requirements.txt
pip-install () {
    WHEEL_DIR=$HOME/.wheelhouse

    pip-wheel $*
    pip install --find-links="$WHEEL_DIR" $*
}