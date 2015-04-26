if ( !file.exists("dataset.zip") ) {
    download.file(
        url = "https://d396qusza40orc.cloudfront.net/getdata%2Fprojectfiles%2FUCI%20HAR%20Dataset.zip",
        destfile = "dataset.zip"
    )
}

if ( !file.exists("UCI HAR Dataset") ) {
    unzip(
        zipfile = "dataset.zip"
    )
}
