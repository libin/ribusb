#!/usr/bin/ruby

require "mkmf"

dir_config("ribusb")

pkg_config("libusb-1.0")
$CFLAGS << " -Wall "
ENV['ARCHFLAGS'] = "-arch i386" if RUBY_PLATFORM =~ /darwin/
$LIBS << " -lusb-1.0 "

create_makefile("ribusb")
