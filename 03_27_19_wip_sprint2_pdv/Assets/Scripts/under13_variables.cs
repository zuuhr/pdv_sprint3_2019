using System.Collections;
using System.Collections.Generic;
using UnityEngine;
using UnityEngine.SceneManagement;
using UnityEngine.UI;

public class under13_variables : MonoBehaviour
{
    public GameObject alien;
    private bool alienAppearance;
    private float timer;
    public Text scoreText;
    public int scoreValue;
    //Every second an alien will appear
    void Start()
    {
        PlayerPrefs.SetInt("actualscore", 0); //set score to 0 every game
        UpdateScore(); //Initial score
        timer = Time.time + 1; //set timer to spawn aliens
    }

    void Update()
    {
        if (!alienAppearance)
        {
            float timeLeft = timer - Time.time; //duration 
            if (timeLeft < 0) alienAppearance = true;//time's up
        }
        else if (alienAppearance)
        {
            Debug.Log("Alien appearance"); //So we can check
            Instantiate(alien, new Vector3(Random.Range(-12, 12), 0f, 16f), this.transform.rotation); 
            alienAppearance = false;
            timer = Time.time + 1; //set timer to spawn aliens
        }
    }

    public void AddScore() //Add points to score
    {
        //score += scoreValue;
        PlayerPrefs.SetInt("actualscore", PlayerPrefs.GetInt("actualscore", 0) + scoreValue);
        scoreValue = 10;
        UpdateScore();
    }

    void UpdateScore() => scoreText.text = "Score: " + PlayerPrefs.GetInt("actualscore", 0); //Show score in screen
}