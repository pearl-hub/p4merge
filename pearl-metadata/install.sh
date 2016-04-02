
function post_install(){
    ${PEARL_PKGDIR}/bin/p4install
    apply "[include] path = \"$PEARL_PKGDIR/etc/gitconfig\"" "$HOME/.gitconfig"
}

function pre_remove(){
    ${PEARL_PKGDIR}/bin/p4uninstall
    unapply "[include] path = \"$PEARL_PKGDIR/etc/gitconfig\"" "$HOME/.gitconfig"
}
