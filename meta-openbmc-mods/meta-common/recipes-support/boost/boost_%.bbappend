FILES_${PN} += "/usr/lib/libboost_chrono.so* \
               /usr/lib/libboost_thread.so*"

#todo this is against standard but iostreams used in mtd-util
BOOST_LIBS_intel += "iostreams"

FILESEXTRAPATHS_prepend := "${THISDIR}/${PN}:"
# this patch is for issue https://github.com/chriskohlhoff/asio/issues/533
SRC_URI += "file://e8b0445e9837e232047173ddf6b4d541b1585915.patch"
