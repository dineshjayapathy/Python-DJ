$reader = new-object System.IO.StreamReader("C:\Users\dinesh\Documents\GitHub\Python-DJ\Training\data\Prestaging Extract queries_LDH.txt")
$count = 1
$filename = "C:\Users\dinesh\Documents\GitHub\Python-DJ\Training\data\{0}.sql" -f ($count) 

while(($line = $reader.ReadLine()) -ne $null)
{
    Add-Content -path $fileName -value $line

    if($line -eq "-----------------------------------------------------------------------")
    {
        ++$count
        $filename = "C:\Users\dinesh\Documents\GitHub\Python-DJ\Training\data\{0}.sql" -f ($count)
    }
}

$reader.Close()