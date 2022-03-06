BEGIN {
FS=","
OFS="\t"
}
#1	     2	    3 	  4 	5	6	7	8	9	10	11	12
#Timestamp, Email, Name, Year, Make, Model, Car_ID, Judge_ID, Judge_Name, Racer_Turbo, Racer_Supercharged	Racer_Performance	Racer_Horsepower	Car_Overall	Engine_Modifications	Engine_Performance	Engine_Chrome	Engine_Detailing	Engine_Cleanliness	Body_Frame_Undercarriage	Body_Frame_Suspension	Body_Frame_Chrome	Body_Frame_Detailing	Body_Frame_Cleanliness	Mods_Paint	Mods_Body	Mods_Wrap	Mods_Rims	Mods_Interior	Mods_Other	Mods_ICE	Mods_Aftermarket	Mods_WIP	Mods_Overall
$FNR >11{
total=0;
for (i=8; i<NF-1; i++){
total+=$i
}
arr[$FNR] = total
print $7, $5, total
}
end{
asort(arr, result)
for(i=1; i<=length(result);i++){
print $i 
}
}

