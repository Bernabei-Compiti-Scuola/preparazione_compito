<?php
    require_once("connessione.php");
    $num=$_GET['n'];
    $sql="SELECT CodAttore,Nome FROM attori ORDER BY Nome LIMIT $num";
    $rs=$conn->query($sql);
    if($num<1)
    {
        echo "Nessun attore selezionato";
    }
    else
    {
        $i=1;
        foreach($rs as $v)
        {
            echo "Attore numero ".$i."<br>";
            echo "Codice attore: ".$v['CodAttore']." <br>Nome:".$v['Nome']."<br>";
            $sql="SELECT Count(*) as num_film FROM recita WHERE CodAttore=".$v['CodAttore'];
            $rs=$conn->query($sql);
            $n=$rs->fetch_assoc();
            echo "Numero di film in cui ha recitato: ".$n['num_film']."<br>";
            $sql="SELECT film.CodFilm,film.Titolo,film.AnnoProduzione FROM film JOIN recita ON film.CodFilm=recita.CodFilm WHERE CodAttore=".$v['CodAttore'];
            $ris=$conn->query($sql);
            echo "Film in cui ha recitato: <br>";
            foreach($ris as $vb)
            {
                echo "Codice film: ".$vb['CodFilm']." --- Titolo: ".$vb['Titolo']." --- Anno di produzione: ".$vb['AnnoProduzione']."<br>";
            }
            echo "<hr>";
            $i++;
        }
    }
?>