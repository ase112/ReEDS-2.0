# gams installation directory
firstgams=$(find /c/ -wholename "*/gams.exe" -printf '%h' -quit) 2>> setuperr.txt
basedir=$(pwd)
cd $firstgams
cd ..
gamsparent=$(pwd)
cd $basedir
clear
# ask the user which installation to use
PS3="Select which gams installation to use (Version must be later than 30.3): "
select GAMS in $(find $gamsparent -wholename "*/gams.exe" -printf '%h ')
do
	echo 'You chose ' $GAMS 
	echo '...Linking Directories'
	break
done
clear
# make a symbolic link to gams in the local repo's gams directory
echo "**** The user selected " $GAMS >> setuplog.txt
echo '...Linking Directories, this could take several minutes'
ln -s $GAMS/ ./gams

# setup the PATH environment variables
LOCALGAMS=$(find $(pwd) -wholename "/*/gams.exe" -printf '%h')
PYTHON=$(find $(pwd) -wholename "*python.exe" -printf '%h')
SCRIPTS=$PYTHON"/Scripts"
#PATHVAR=(${!PATH@})

# write the PATH variables to .bashrc and add them to this gibash's PATH variable
echo export PATH=$PYTHON:$SCRIPTS:$LOCALGAMS:$PATH > ./.bashrc
export PATH=$PYTHON:$SCRIPTS:$LOCALGAMS:$PATH


# install python packages in the gams link directory
echo "...Installing Python packages"
curl https://bootstrap.pypa.io/get-pip.py --ssl-no-revoke -o get-pip.py >> setuplog.txt 2>> setuperr.txt
python get-pip.py >> setuplog.txt 2>> setuperr.txt
python -m pip install --upgrade pip >> setuplog.txt 2>> setuperr.txt

python -m pip install python==3.7.4 >> setuplog.txt 2>> setuperr.txt
python -m pip install numba==0.45.1 >> setuplog.txt 2>> setuperr.txt
python -m pip install llvmlite==0.32.1  >> setuplog.txt 2>> setuperr.txt
python -m pip install numpy==1.16.5 >> setuplog.txt 2>> setuperr.txt
python -m pip install gdxpds >> setuplog.txt 2>> setuperr.txt
python -m pip install pandas==1.1.5 >> setuplog.txt 2>> setuperr.txt
python -m pip install openpyxl==3.0.0 >> setuplog.txt 2>> setuperr.txt
python -m pip install scipy==1.3.1 >> setuplog.txt 2>> setuperr.txt



exit
