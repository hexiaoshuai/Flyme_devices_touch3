#/bin/bash
echo "in $0"
PWD=`pwd`
OUT_DIR=$PWD/out
TARGET_FILES_DIR=$OUT_DIR/merged_target_files
OVERLAY_DIR=$PWD/overlay
rm -rf $TARGET_FILES_DIR/SYSTEM/media/shutanimation.zip
