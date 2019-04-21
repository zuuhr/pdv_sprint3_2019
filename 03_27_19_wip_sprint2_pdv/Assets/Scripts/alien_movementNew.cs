
using UnityEngine;
using UnityEngine.SceneManagement;
using System.Collections.Generic;

public class alien_movementNew : MonoBehaviour
{
    //movement
    public GameObject hole;
    Vector3 movement;
    public int speed;
    private int xRand;
    private int zRand;
    public float newAlienRespawnTime; //gap time between bullet firing
    float timeLimit; //gap time in real time units 

    void Start()
    {
        timeLimit = Time.time + newAlienRespawnTime; //set timer
        
    }

    void Update()
    {
        float timeLeft = timeLimit - Time.time;
        if (timeLeft < 0) //when time is up 
        {
            newAlien();
            timeLimit = Time.time + newAlienRespawnTime; //set new timer
        }
        transform.Translate(movement * Time.deltaTime);
        transform.LookAt(transform.position + movement);

        //default movement & PAUSE menu management
        if (Time.timeScale == 0)
        {
            transform.Translate((new Vector3(0.0f, 0.0f, 0.0f))); //Stops
        }
        /*else if (Time.timeScale == 1)
        {
            transform.Translate((new Vector3(right * 0.05f, 0.0f, advanceTranslation))); //Resumes
        }*/

        
    }

    void newAlien()
    {
        xRand = (int)Random.Range(-10, 10);
        zRand = (int)Random.Range(-10, 10);
        Instantiate(this, hole.transform.position, this.transform.rotation);
        movement = new Vector3(xRand, 0, zRand) * speed;
        
    }

    private void OnTriggerExit(Collider collider)
    {
        if (collider.tag == "main_area") //if alien is leaving the game area
        {
           Destroy(this.gameObject);
        }
    }

    private void OnTriggerEnter(Collider collider)
    {
        if (collider.tag == "Player") //if alien hits the player
        {
            SceneManager.LoadScene("Menu_prueba_derrota"); //Game Over scene
        }
        /*if (collider.tag == "Wall") //if alien hits a defensive wall
        {
            Destroy(collider.gameObject);
            Destroy(gameObject);
        }*/
    }

    

}
