pragma solidity ^0.7.4;

// definizione smart contract
contract Prova {
    uint256 provanumero = 10; // conversione dimensione variabile uint8 altro numero = uint8(provanumero)

    function modificaNumero(uint256 _valore) public{
        provanumero = _valore; //function per cambiare valore variabile provanumero 
    }

    address indirizzo_proprietario; 
    /*definizione indirizzo, gli indirizzi si dichiarano come stringhe ma senza '', ad esempio:
    address indirizzo_proprietario = 0x055E36b2BB4eF1121F99e3e134c66A8DCb6ef58e; */

    bytes32 nome = "Gianluigi"; // Utilizzo bytes per risparmiare gas
    string articolo = "Utilizzo testo dui lunghezza variabile";
    
    bool isTrue; //Utilizzo boolean che di default sono false

    mapping (string = uint256) etaPersone; //Utilizzo di mappe come array 
    etaPersone ["Giovanni"]; //restituirà l'uint associato
    mapping (string = mapping (string = uint256)) etaPersone; //array multidimensionali
    etaPersone ["Dario"] ["Luigi"]; //accesso elementi

    //definizione structures
    struct persone{
    uint256 id;
    string nome;
    uint256 anni;
    }

    //istanza struct
    persone inserisciPersona = persone(1, "Giovanni", 35);

    //definizione array
    uint256[] myNumbers;
    bytes32[] myStrings;
    string[] myTexts;
    Tree[] mytrees; //strutture ad albero che utilizzano le struct

    myNumbers[3]; 
    myStrings[5]; //accesso diretto agli elementi

    string[5] myNames; //array dimensioni limitate
    myNames[2]='Dario'; //modifica valore

    myNames.push('Dario'); //aggiunta elementi a array dinamici

    now //o block.timestamp restituiscono un valore di 10 numeri per memorizzare il timestamp 
    
    msg.sender;
    msg.gas;
    msg.value;
    /*contengonio rispettivamente: messaggio del mittente che contiene l'indirizzo del mittente che ha eseguito quella funzione
    gas rimanente e quantità di ETH inviata a quella funzione in wei*/

    this //indirizzo dello smart contract corrente
    

}