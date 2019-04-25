using UnityEngine;
using UnityEngine.SceneManagement;
using UnityEngine.UI;

public class over13_variables : MonoBehaviour
{
    public Text scoreText;
    private int score;
    public static int score2;
    public int scoreValue;
    public static bool add;
    public static bool addBoss;
    private float timer;

    void Start()
    {
        PlayerPrefs.SetInt("actualscore", 0); //set score to 0 every game
        UpdateScore(); //Initial score
        timer = Time.time + 10; //set timer to spawn boss
    }

    void Update()
    {
        //score2 = score; //Score 
        //if (score == 2900)  SceneManager.LoadScene("Menu_prueba_victoria"); //You win if you reach this amount of points (1st and 2nd sprint)
        if (add) AddScore(); //add points because one alien was destroyed
        if (addBoss) //add points because one boss alien was destroyed
        {
            scoreValue = 400;
            AddScore();
        }
    }
   
    public void AddScore() //Add points to score
    {
        //score += scoreValue;
        PlayerPrefs.SetInt("actualscore", PlayerPrefs.GetInt("actualscore", 0)+scoreValue);
        UpdateScore();
        add = false;
        addBoss = false;
        scoreValue = 100;
    }
    void UpdateScore() => scoreText.text = "Score: " + PlayerPrefs.GetInt("actualscore", 0); //Show score in screen
}