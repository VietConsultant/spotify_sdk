#!/bin/sh
REPO_NAME="ios-sdk"
FRAMEWORK_NAME="SpotifyiOS.xcframework"

#!/bin/sh
rm -fR ${REPO_NAME}
mkdir ${REPO_NAME}
git clone https://github.com/VietConsultant/${REPO_NAME}
git -C ${REPO_NAME} checkout a3447ab
find ./${REPO_NAME} -mindepth 1 -maxdepth 1 -not -name ${FRAMEWORK_NAME} -exec rm -rf '{}' \;   # Keep on only the xcframework folder