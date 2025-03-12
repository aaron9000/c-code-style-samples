#!/bin/bash
names=("LLVM" "Google" "Chromium" "Mozilla" "WebKit" "Microsoft" "GNU")
for name in "${names[@]}"; do
    cp sample.c "formatted/${name}.c"
    clang-format -i --style="${name}" "formatted/${name}.c"
done