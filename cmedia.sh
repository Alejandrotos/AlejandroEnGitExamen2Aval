echo -n "Introduce la ciudad:"
read ciudad;
media=0;
nota=`cat consumos.txt | wc -l`;
for i in `seq 2 $nota` #Esto es para que cuente desde la linea dos del documento
do
linea=`cat consumos.txt | head -n$i | tail -n1` #El head -n$1 es para decir que empiece desde la linea i hasta el tail -n1 que es el final
total=`echo $linea | grep -w $ciudad |awk '{print $4}'`
media=$((media+total));
done
media=$((media/7));
echo "La ciudad con su media de consumo es: $media";