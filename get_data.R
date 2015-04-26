if ( !file.exists("data") ) {
    dir.create("data")
}

if ( !file.exists("data/dataset.zip") ) {
    download.file(
        url = "https://d396qusza40orc.cloudfront.net/getdata%2Fprojectfiles%2FUCI%20HAR%20Dataset.zip",
        destfile = "data/dataset.zip"
    )
}

if ( !file.exists("data/UCI HAR Dataset") ) {
    unzip(
        zipfile = "data/dataset.zip",
        exdir = "data"
    )
}
