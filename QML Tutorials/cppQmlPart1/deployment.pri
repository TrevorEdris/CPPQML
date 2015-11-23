# Makes file available for edit inside QT Creator
OTHER_FILES +=\
$${PWD}/files/newFile.txt

# Assigns external files to internal variable
myFiles.files = \
$${PWD}/files/newFile.txt

unix:!android {
    isEmpty(target.path) {
        qnx {
            target.path = /tmp/$${TARGET}/bin
        } else {
            target.path = /opt/$${TARGET}/bin

            # Where it should be installed
            myFiles.path = /opt/$${TARGET}/bin/files
        }
        export(target.path)
        export(myFiles.path)
    }

    # Actually installs files
    INSTALLS += target myFiles
}

export(INSTALLS)

