function addDir() {

        PARENT_DIR=$1
        DIR_TO_CREATE=$2

        infoMessage "Creating directory ${DIR_TO_CREATE} in directory ${PARENT_DIR}"
        if [ -d ${PARENT_DIR} ]; then
                cd ${PARENT_DIR}
                if [ -d ${DIR_TO_CREATE} ]; then
                        errorMessage "drectory ${DIR_TO_CREATE} already existed"
                else
                        mkdir ${DIR_TO_CREATE}
                        infoMessage "directory ${DIR_TO_CREATE} created"
                fi
        else
                 errorMessage "Directory ${PARENT_DIR} does not exist"
        fi
}
function listFiles() {

        PARENT_DIR=$1
        
        if [ -d ${PARENT_DIR} ]; then
                infoMessage "listing Files in directory ${PARENT_DIR}"
                cd ${PARENT_DIR}
                find . -maxdepth 1 -type f
        else
                errorMessage "Directory ${PARENT_DIR} not found"
        fi
}

function listDirs(){
        PARENT_DIR=$1
        if [ -d ${PARENT_DIR} ]; then
                infoMessage "Listing Directories in directory ${PARENT_DIR}"
              
                find ${PARENT_DIR}/ -maxdepth 1 -type d
        else
                errorMessage "Directory ${PARENT_DIR} not exist"
        fi
}

function listAll(){
        PARENT_DIR=$1
        listFiles ${PARENT_DIR}
        listDirs ${PARENT_DIR}
}



function deleteDir() {
        PARENT_DIR=$1
        DIR_TO_DELETE=$2
        if [ -d ${PARENT_DIR} ]; then
                cd ${PARENT_DIR}
        if [ -d ${DIR_TO_DELETE} ]; then
                rm -rf ${DIR_TO_DELETE}
                infoMessage "Directory ${DIR_TO_DELETE} deleted from Directory ${PARENT_DIR}"
        else
                errorMessage "Direcory ${DIR_TO_DELETE} not exist in Directory ${PARENT_DIR}"
        fi
        else
                errorMessage "Directory ${PARENT_DIR} not exist"
        fi
}
