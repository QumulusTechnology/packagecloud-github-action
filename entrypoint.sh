#!/bin/bash -l

echo "PACKAGECLOUD_REPO=${PACKAGECLOUD_REPO}"
echo "PACKAGECLOUD_DISTRO=${PACKAGECLOUD_DISTRO}"
echo "PACKAGE_NAME=${PACKAGE_NAME}"

UPLOAD_PATH="${PACKAGECLOUD_USERNAME}/${PACKAGECLOUD_REPONAME}/${PACKAGECLOUD_DISTRO}"

echo "Pushing package: ${PACKAGE_NAME}"
echo "To repository: ${UPLOAD_PATH}"

source /usr/local/rvm/scripts/rvm
rvm use 2.7.5 && package_cloud yank ${UPLOAD_PATH} ${PACKAGE_NAME}
rvm use 2.7.5 && package_cloud push ${UPLOAD_PATH} ${PACKAGE_NAME}
