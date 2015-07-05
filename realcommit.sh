if [[ $(git log -1 | grep "#ArtifactUpload") != "" ]]; then
    echo 'Nope! Just build artifacts (Awww...)'
    exit 1
fi
if [[ $(git log -1 | grep "#ArtifactUpload") == "" ]]; then
    echo "Yup! This is a real commit!"
    exit 0
fi
