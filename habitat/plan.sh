pkg_name=lb-test
pkg_origin=gscho
pkg_version="0.1.0"
pkg_maintainer="The Habitat Maintainers <humans@habitat.sh>"
pkg_license=("MIT")
pkg_deps=(core/ruby25 core/curl)
pkg_build_deps=(core/bundler)

do_build(){
  return 0
}

do_install(){
  bundle install --path ./vendor/bundle
  cp -R . "$pkg_prefix/"
}
