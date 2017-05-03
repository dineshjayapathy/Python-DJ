$reader = new-object System.IO.StreamReader("C:\Users\dinesh\Documents\GitHub\Python-DJ\Training\data\Prestaging Extract queries_LDH.txt")
$count = 1 
$filename = "C:\Users\dinesh\Documents\GitHub\Python-DJ\Training\data\test\op\{0}.sql" -f ($r) 

while(($line = $reader.ReadLine()) -ne $null)
{
    Add-Content -path $fileName -value $line
    if($line -match '^from\s\w+')
    {
    
    
    
    $r=$line -replace "from ",""
    $r=$r -replace " a",""
    Write-Host $r
    }
    Write-Host $line
    

    if($line -eq "-----------------------------------------------------------------------")
    {
        
        #++$count
        $filename = "C:\Users\dinesh\Documents\GitHub\Python-DJ\Training\data\test\op\$r.sql"
    }
}

$reader.Close()