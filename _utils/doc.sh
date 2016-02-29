#!/bin/sh

set -o errexit
set -o nounset

DEBUG=0

utils=$(dirname $0)

mods=( "PatternTransformers" "SampleTransformers" "ConditionalTransformers" "Compositions" "Transitions" )

if [ $# -eq 2 ]; then
    src=$1
    home=$(cd $2; pwd)
    for x in "${mods[@]}"; do
        lx=$(echo ${x} | tr "[:upper:]" "[:lower:]")
        if [ -d "${home}/_functions/${lx}" ]; then
            rm -R ${home}/_functions/${lx}
        fi

        mkdir -p ${home}/_functions/$lx
        (
            cd ${src}
            haddock --hoogle --source="#%{NAME}"  --package-name=tidal --package-version=0.7  -o ${home}/_functions/$lx --hide=Sound.Tidal.Parse --hide=Sound.Tidal.OscStream --hide=Sound.Tidal.MidiStream --hide=Sound.Tidal.Params  --hide=Sound.Tidal.Utils --hide=Sound.Tidal.Time --hide=Sound.Tidal.Tempo --hide=Sound.Tidal.Pattern --hide=Sound.Tidal.Strategies  --hide=Sound.Tidal.Stream --hide=Sound.Tidal.Dirt --hide=Sound.Tidal.Transition ${src}/Sound/Tidal/${x}.hs
        ) &
        wait

        chapter_root=${home}/_functions/$lx/
        sed -n  -f ${utils}/haddock2md.sed ${chapter_root}tidal.txt > ${chapter_root}tidal-md.txt
        cat ${chapter_root}tidal-md.txt | awk -v mod=$x -f ${utils}/splitmd.awk
        if [ "$DEBUG" -eq 0 ]; then
            rm ${chapter_root}tidal.txt
            rm ${chapter_root}tidal-md.txt
        fi
    done
else
    echo "Usage: $0 <path/to/tidal/source> <path/to/docsroot>"
fi
