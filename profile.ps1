$Sh3dRoot = $PSScriptRoot
$Sh3dPom = Join-Path $Sh3dRoot 'pom.xml'
$Sh3dCp = "$Sh3dRoot\target\classes;$Sh3dRoot\SweetHome3D\lib\*"

# compile
function c {
    mvn -q -o -f $Sh3dPom compile
}

# launch
function run {
    java -cp $Sh3dCp com.eteks.sweethome3d.SweetHome3D
}

# compile then launch
function cr {
    c
    if ($LASTEXITCODE -eq 0) { run }
}
