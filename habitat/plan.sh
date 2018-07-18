pkg_name=lb-test
pkg_origin=gscho
pkg_version="0.1.0"
pkg_maintainer="The Habitat Maintainers <humans@habitat.sh>"
pkg_license=("MIT")
pkg_deps=(core/ruby core/curl)
pkg_build_deps=(core/bundler)

do_build(){
  pushd ./app
    bundle install
  popd
}

do_install(){
  cp -R ./app "$pkg_prefix/"
}
