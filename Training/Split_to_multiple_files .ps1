$reader = new-object System.IO.StreamReader("C:\Users\dinesh\Documents\GitHub\Python-DJ\Training\data\Prestaging Extract queries_LDH.txt")
$count = 1 #pass the string name here
$filename = "C:\Users\dinesh\Documents\GitHub\Python-DJ\Training\data\{0}.sql" -f ($count) 

while(($line = $reader.ReadLine()) -ne $null)
{
    Add-Content -path $fileName -value $line
    if($line -match '^from\s\w+')
    {
    
    ++$count
    Write-Host "this is the from"$count
    $r=$line -replace "from ",""
    $r=$r -replace " a",""
    Write-Host $r
    }
    <#if($line -eq "-----------------------------------------------------------------------")
    {
        ++$count
        $filename = "C:\Users\dinesh\Documents\GitHub\Python-DJ\Training\data\{0}.sql" -f ($count)
    }#>
}

$reader.Close()