$reader = new-object System.IO.StreamReader("C:\Users\dinesh\Documents\GitHub\Python-DJ\Training\data\CreateSQL\Create Table SQL LDH v2.txt")
$count = 1
$filename = "C:\Users\dinesh\Documents\GitHub\Python-DJ\Training\data\CreateSQL\PRMODALDH_0_{0}.sql" -f ($count) 

while(($line = $reader.ReadLine()) -ne $null)
{
    Add-Content -path $fileName -value $line

    if($line -eq "------------------------------")
    {
        ++$count
        $s = Select-String -Path 'C:\Users\dinesh\Documents\GitHub\Python-DJ\Training\data\ExtractQueries\alertdata.sql' -Pattern "from " | select -Expand Line
        $s -replace " "
        $filename = "C:\Users\dinesh\Documents\GitHub\Python-DJ\Training\data\CreateSQL\PRMODALDH_0_{0}.sql" -f ($s)
    }
}

$reader.Close()