var partie;
var bankcard;
var scorebank;
var carteJ;
var scoreJ;
var asJ;
var asBk;
var mise;
var argent	
argent=10000;	
 var argentpot=0;
function start()
{
						<!--random banque-->
	if (argent==0)
	{
		document.getElementById("start_game").innerHTML="Tu es fauché, fais plus attention à ton oseille PIGEON";
		document.getElementById("servir").innerHTML='';
		document.getElementById("stay").innerHTML='';
		document.getElementById("miser").innerHTML='';
	}
	else{
		asJ=false;
	asBk=false;
	partie=true;	
	bankcard = Math.floor(Math.random() * (52)) + 1;
	document.getElementById("bank_card").innerHTML="<td><img src='../images/"+bankcard+".jpg'></td>";
	document.getElementById("argent").innerHTML="argent : "+argent+" $";	
				<!-- Définir les valeurs des cartes -->

	scorebank=0;

			if ((bankcard%13>=11) || (bankcard%13==0))
			{
			bankcard=10;
			}
			if ((bankcard%13==1) && (scorebank+11<=21))
			{
			bankcard=11;
			asBk=true;
			}
			else
			{
			bankcard=bankcard%13;
			}
	scorebank+=bankcard;
	document.getElementById("score_banque").innerHTML="<h2>Score : "+scorebank+"<h2>";

						<!-- ramdom joueur -->

	carteJ=Math.floor(Math.random() * (52)) + 1;
	document.getElementById("carte_Joueur").innerHTML="<td><img src='../images/"+carteJ+".jpg'></td>";

	scoreJ=0;
	if ((carteJ%13>=10)||(carteJ%13==0))
	{
		carteJ=10;
	}
	if ((carteJ%13==1) && (scoreJ<11))
	{
		carteJ=11;
		asJ=true;
	}
	else
	{
		carteJ=carteJ%13;
	}
	scoreJ=scoreJ + carteJ;
	document.getElementById("score_joueur").innerHTML="<h2>Score : "+scoreJ+"<h2>";
	
		//effacer bouton commencer
	document.getElementById("start_game").innerHTML="";
		//inserer servir et stay
	document.getElementById("servir").innerHTML='<input id="ser" type="button" value="Servir" onclick="nouvelle()">';
	document.getElementById("stay").innerHTML='<input id="rester"type="button" value="Rester" onclick="stay()">';
	document.getElementById("miser").innerHTML='<input id="thune" type="button" value="mise" onclick="miser()">';
	return false;
	}
	
}
function miser(){
	if (argent>0){
	mise=0+1000;
	argentpot=argentpot+mise
	argent=argent-mise;
	document.getElementById("argent").innerHTML="argent : "+argent;	
	}
	else {
	document.getElementById("argent").innerHTML="tu n'as plus d'argent pour miser";	
	}
	
}
function  nouvelle()
{
	if(scoreJ<=21)
	{
		var carteJ=Math.floor(Math.random() * (52)) + 1;
		document.getElementById("carte_Joueur").innerHTML+="<td><img src='../images/"+carteJ+".jpg'></td>";
		if ((carteJ%13>10) || (carteJ%13==0))
		{
		carteJ=10;
		}
		if ((carteJ%13==1) && (scoreJ+11<=21))
		{
		carteJ=11;
		asJ=true;
		}
		else
		{
		carteJ=carteJ%13;
		}
		scoreJ=scoreJ + carteJ;
		if((scoreJ>21)&&(asJ==true))
		{
		scoreJ=scoreJ-10;
		asJ=false;
		}		
		if(scoreJ>21)
		{
			document.getElementById("score_joueur").innerHTML="<h2>SCORE : "+scoreJ+" PERDU</h2>";
			argentpot=0;
			partie=false;
		}
		else
		{
			document.getElementById("score_joueur").innerHTML="<h2>SCORE : "+scoreJ+"</h2>";
		}		
		if(scoreJ==21)
		{
			document.getElementById("score_joueur").innerHTML="<h2>SCORE : "+scoreJ+" BLACKJACK !!!</h2>";
			argent=argent+(argentpot*2);
			argentpot=0;
			partie=false;
		}
	}
	if (partie==false)
		{
			document.getElementById("start_game").innerHTML="<input id='commencer' type='button' value='Commencer la partie' onclick='start()'>";
			document.getElementById("servir").innerHTML='';
			document.getElementById("stay").innerHTML="";	
			document.getElementById("miser").innerHTML='';
		}
    return false;
}
	

function stay()
{	
	while((scorebank<=21)&&(scorebank<=scoreJ))
	{
		var newbkcard = Math.floor(Math.random() * (52)) + 1;

		document.getElementById('bank_card').innerHTML+="<td><img src='../images/"+newbkcard+".jpg'></td>";


		if ((newbkcard%13>=11) || (newbkcard%13==0))
		{
			newbkcard=10;
		}
		if ((newbkcard%13==1) && (scorebank+11<=21))
		{
			newbkcard=11;
			asBk=true;
		}
		else
		{
			newbkcard=newbkcard%13;
		}

		scorebank+=newbkcard;
		document.getElementById('score_banque').innerHTML="<h2>Score :"+scorebank+"</h2";
		
	
	if((scorebank>21)&&(asBk==true))
		{
		scorebank=scorebank-10;
		asBk=false;
		}
	
	}
	if ((scoreJ<=21)&&(scoreJ>scorebank)||(scorebank>21))
		{
		document.getElementById("score_joueur").innerHTML="<h2>SCORE : "+scoreJ+" le joueur a gagné</h2>";
		argent=argent+(argentpot*2);
		argentpot=0;
        } 
		
		document.getElementById("start_game").innerHTML="<input id='commencer' type='button' value='Commencer la partie' onclick='start()'>";
		document.getElementById("servir").innerHTML='';
		document.getElementById("stay").innerHTML="";
		document.getElementById("miser").innerHTML='';
		
	if ((scoreJ<scorebank) && (scorebank<=21))
		{
		document.getElementById("score_banque").innerHTML="<h2>SCORE : "+scorebank+" La banque gagne</h2>";	
		}
	return false;         
}

