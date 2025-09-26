#!/usr/bin/env bash

main() {
  local path="https://www.neuquen.edu.ar/wp-content/uploads/2023/05/"
  local -a res=(
    "r_1381_2022-D-1-INTRO.pdf"
    "r_1381_2022-D-2-Planificacion.pdf"
    "r_1381_2022-D-3-CSPYE.pdf"
    "r_1381_2022-D-4-CN.pdf"
    "r_1381_2022-D-5-MI.pdf"
    "r_1381_2022-D-6-EFI.pdf"
    "r_1381_2022-D-7-ESI.pdf"
    "r_1381_2022-D-8-CYM.pdf"
    "r_1381_2022-D-9-TEC.pdf"
    "r_1381_2022-D-10-TEC.AGR_.pdf"
    "r_1381_2022-D-11-ECO.pdf"
    "r_1381_2022-D-12-INT.TEC_.pdf"
    "r_1584_2022-D-13-LENGUAJES.pdf"
  )
  for r in "${res[@]}";do
    local url="${path}/${r}"
    curl --remote-name --remote-header-name "${url}"
  done
}

main
