using UnityEngine;
using UnityEngine.UI;

public class ShowFinalScore_under13 : MonoBehaviour
{
    public Text scoreText;
    public InputField enterName;
    public string marcador2;
    public Image record;

    void Start()
    {
        record.enabled = false;
        //PlayerPrefs.DeleteAll(); //use this line to reset the ranking
        //int punt = over13_variables.score2;
        int punt = PlayerPrefs.GetInt("actualscore", 0);
        //scoreText.text = "Score: " + punt;
        int i = 10;//counter variable
        int final = 19;//constant 
        int terminar = 0;//used as boolean (0-1)
        string marcador;//to save the score in the correct key
        string aux;//variables used to keep the correct order in the ranking
        string aux2;
        string aux3;
        string aux4;
        if (PlayerPrefs.GetInt("actualscore", 0) >= PlayerPrefs.GetInt("scoresp10", 0))
        {
            record.enabled = true;
        }
        do
        {
            marcador = "scoresp" + i;//to update the keys 
            marcador2 = "namep" + i;
            if (punt < PlayerPrefs.GetInt(marcador, 0))
            {
                i++;//to get the correct position
            }
            else
            {
                for (int j = 0; j != (10 - i); j++)
                {
                    aux = "scoresp" + (final - j);//to reorder the ranking, both name and score
                    aux2 = "scoresp" + (final - j - 1);
                    PlayerPrefs.SetInt(aux, (PlayerPrefs.GetInt(aux2, 0)));
                    aux3 = "namep" + (final - j);
                    aux4 = "namep" + (final - j - 1);
                    PlayerPrefs.SetString(aux3, (PlayerPrefs.GetString(aux4, "Desconocido")));
                }
                PlayerPrefs.SetInt(marcador, punt);//to save the score in its ranking position
                terminar = 1;//to get out of the loop
            }
        } while (i < final && terminar == 0);//exit loop if the correct position was given or we finished checking the ranking

    }
    public void Submit()
    {
        PlayerPrefs.SetString(marcador2, enterName.text);//we save the name associated to the score obtained
    }
}
