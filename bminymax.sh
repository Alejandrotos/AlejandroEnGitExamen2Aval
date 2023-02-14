nota=`cat consumos.txt | wc -l`;
consumoMax=0;
consumoMin=1000;
for i in `seq 2 $nota` #Esto es para que cuente desde la linea dos del documento
do
linea=`cat consumos.txt | head -n$i | tail -n1` #El head -n$1 es para decir que empiece desde la linea i hasta el tail -n1 que es el final
total=`echo $linea | awk '{print $4}'`
if (($total >= $consumoMax)); then
consumoMax=$total;
elif (($total <= $consumoMin)); then 
consumoMin=$total;
fi
done
bd=`cat consumos.txt | grep $consumoMax`
bc=`cat consumos.txt | grep $consumoMin`
echo "La ciudad con consumo maximo es: $bd y el mínimo es: $bc";