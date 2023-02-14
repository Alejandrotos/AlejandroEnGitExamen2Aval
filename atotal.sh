echo -n "Introduce una ciudad: "
read ciudad;
while [ $ciudad != "Valencia" ] && [ $ciudad != "Madrid" ] && [ $ciudad != "Barcelona" ]
do
echo "Ciudad incorrecta vuelva a introducir otra."
echo -n "Introduce una ciudad: "
read ciudad;
done
declare -a miArray
consumo=`cat consumos.txt | grep -n $ciudad | awk '{print $4}'`
miArray=$consumo
echo $miArray;
con=0;
consumoTotal=0;
var1=1;
for i in ${miArray[@]}
do
  con=$((consumoTotal+i))
done
echo $con