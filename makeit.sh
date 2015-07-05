#!/bin/bash

rm PufferMine.jar
ant clean
ant

mv bin/runner .

jar cfm PufferMine.jar MANIFEST.MF runner org

rm -rf runner
ant clean
