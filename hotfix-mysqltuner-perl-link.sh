#!/bin/bash

############################################################################################## HOTFIX SCRIPT - BEGIN ###

# --- HOTFIX CONFIGURATION ---
BUG_NAME="MySQLTuner-perl link"
### Upstream bug: https://github.com/major/MySQLTuner-perl/issues/867
WORK_DIR="/turnkey/fab/common"
REQUIRED_BRANCH="18.x"

# The file to modify (relative path to WORK_DIR)
TARGET_FILE="conf/mysql"

# String replacement
STRING_TO_REPLACE="https://raw.githubusercontent.com/major/MySQLTuner-perl/master"
REPLACEMENT_STRING="https://raw.githubusercontent.com/jmrenouard/MySQLTuner-perl/master"
# ----------------------

# 0. Transform bug name for the branch (lowercase and hyphens)
# tr '[:upper:]' '[:lower:]' makes it lowercase
# tr ' ' '-' replaces spaces with hyphens
# tr -s '-' reduces multiple hyphens to a single one
BUG_NAME_CLEAN=$(echo "$BUG_NAME" | tr '[:upper:]' '[:lower:]' | tr ' ' '-' | tr -s '-')

# Branch name definition: 18.x-hotfix-bug-name-slug
NEW_BRANCH_NAME="${REQUIRED_BRANCH}-hotfix-${BUG_NAME_CLEAN}"

echo "****************************************"
echo " HOTFIX PROCESS STARTING"
echo " BUG: $BUG_NAME"
echo " TARGET BRANCH: $NEW_BRANCH_NAME"
echo "****************************************"

# 1. Verify folder existence and change directory
if [ -d "$WORK_DIR" ]; then
    echo "✅ Folder '$WORK_DIR' found."
    cd "$WORK_DIR" || { echo "❌ Error: Could not enter the directory."; exit 1; }
    echo "📂 Working directory: $(pwd)"
else
    echo "❌ Error: Folder '$WORK_DIR' does not exist. Aborting."
    exit 1
fi

# 2. Get current branch name
CURRENT_BRANCH=$(git rev-parse --abbrev-ref HEAD)

# 3. Verify if current branch is 18.x
if [ "$CURRENT_BRANCH" != "$REQUIRED_BRANCH" ]; then
    echo "❌ Error: You are on '$CURRENT_BRANCH'. You must be on '$REQUIRED_BRANCH' to proceed."
    exit 1
fi

# 4. Verify if target file exists
if [ ! -f "$TARGET_FILE" ]; then
    echo "❌ Error: File '$TARGET_FILE' not found in '$WORK_DIR'."
    exit 1
fi

# 5. Check for the wrong string and proceed
if grep -q "$STRING_TO_REPLACE" "$TARGET_FILE"; then
    echo "✅ String found. Creating branch and applying fix..."

    # 6. Create the dynamic hotfix branch and switch
    if git checkout -b "$NEW_BRANCH_NAME"; then
        echo "✅ Branch '$NEW_BRANCH_NAME' created successfully."
        
        # 7. Execute substitution in the SAME file
        # Note: If on macOS, use: sed -i "" "s|...
        sed -i "s|$STRING_TO_REPLACE|$REPLACEMENT_STRING|g" "$TARGET_FILE"
        
        echo "✅ Replacement completed in '$TARGET_FILE'."
        echo "🚀 Hotfix for '$BUG_NAME' finished successfully on branch $NEW_BRANCH_NAME."
    else
        echo "❌ Error: Could not create branch '$NEW_BRANCH_NAME' (does it already exist?)"
        exit 1
    fi
else
    echo "⚠️  No action: The wrong string was not found in the file."
    exit 0
fi

################################################################################################ HOTFIX SCRIPT - END ###

