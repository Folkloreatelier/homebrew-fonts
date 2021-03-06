# Documentation: https://github.com/Homebrew/homebrew/blob/master/share/doc/homebrew/Formula-Cookbook.md
#                /usr/local/Library/Contributions/example-formula.rb
# PLEASE REMOVE ALL GENERATED COMMENTS BEFORE SUBMITTING YOUR PULL REQUEST!

class Sfnt2woff < Formula
  homepage "http://people.mozilla.org/~jkew/woff/"
  url "https://github.com/bramstein/sfnt2woff/archive/master.zip"
  version "2009-10-04"
  sha256 "cf3303c323a874891d17b8d7c72bc241b29be88ca5ee1fa5089a95b0b8dc7408"

  def install
    system "make"
    bin.install "sfnt2woff"
    bin.install "woff2sfnt"
  end

  test do
    # `test do` will create, run in and delete a temporary directory.
    #
    # This test will fail and we won't accept that! It's enough to just replace
    # "false" with the main program this formula installs, but it'd be nice if you
    # were more thorough. Run the test with `brew test sfnt2woff`. Options passed
    # to `brew install` such as `--HEAD` also need to be provided to `brew test`.
    #
    # The installed folder is not in the path, so use the entire path to any
    # executables being tested: `system "#{bin}/program", "do", "something"`.
    system "false"
  end
end
