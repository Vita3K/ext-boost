call .\bootstrap.bat
.\b2 tools\bcp

set SUBSETS_OUTDIR=.\subsets-boost

if exist "%SUBSETS_OUTDIR%" rmdir /s /q "%SUBSETS_OUTDIR%"
md "%SUBSETS_OUTDIR%"

.\dist\bin\bcp ^
    config ^
    filesystem ^
    icl ^
    log ^
    optional ^
    predef ^
    program_options ^
    range ^
    system ^
    unordered ^
    bootstrap.bat ^
    bootstrap.sh ^
    boostcpp.jam ^
    boost-build.jam ^
    tools/build ^
    tools/boost_install/BoostConfig.cmake ^
    tools/boost_install/BoostDetectToolset.cmake ^
    tools/boost_install/boost-install.jam ^
    tools/boost_install/BoostDetectToolset.cmake ^
    tools/boost_install/boost-install-dirs.jam ^
    %USERSETS_OUTDIR%