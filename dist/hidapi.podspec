Pod::Spec.new do |spec|

  spec.name         = "hidapi"
  spec.version      = "0.9.0"
  spec.summary      = "A Simple library for communicating with USB and Bluetooth HID devices on Linux, Mac and Windows."

  spec.description  = <<-DESC
  HIDAPI is a multi-platform library which allows an application to interface with USB and Bluetooth HID-Class devices on Windows, Linux, FreeBSD, and macOS. HIDAPI can be either built as a shared library (.so, .dll or .dylib) or can be embedded directly into a target application by adding a single source file (per platform) and a single header.
                   DESC

  spec.homepage     = "https://github.com/libusb/hidapi"

  spec.license      = { :type=> "GNU GPLv3 or BSD or HIDAPI original", :file => "LICENSE.txt" }

  spec.authors      = { "Alan Ott" => "alan@signal11.us",
                        "Ludovic Rousseau" => "rousseau@debian.org",
                        "libusb/hidapi Team" => "https://github.com/libusb/hidapi/blob/master/AUTHORS.txt",
                      }

  spec.platform     = :osx
  spec.osx.deployment_target = "10.7"

  spec.source       = { :git => "https://github.com/libusb/hidapi.git", :tag => "#{spec.version}" }

  spec.source_files = "mac/hid.c", "hidapi/hidapi.h"

  spec.public_header_files = "hidapi/hidapi.h"

  spec.frameworks   = "IOKit", "CoreFoundation"

end
