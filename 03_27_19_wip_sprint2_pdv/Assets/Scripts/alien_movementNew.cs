
using UnityEngine;
using UnityEngine.SceneManagement;
using System.Collections.Generic;

public class alien_movementNew : MonoBehaviour
{
    //movement
    Vector3 movement;
    public int speed;
    private int xRand;
    private int zRand;
    public float shootingRespawnTime; //gap time between bullet firing
    float timeLimit; //gap time in real time units 
    public GameObject bullet;

    void Start()
    {
        timeLimit = Time.time + shootingRespawnTime;
        xRand = (int)Random.Range(-10, 10);
        zRand = (int)Random.Range(-10, 10);
        movement = new Vector3(xRand, 0, zRand) * speed;

        //transform.forward = Player_movement_2DNew.thisPosition - transform.position;
        
    }

    void Update()
    {
        transform.LookAt(Player_movement_2DNew.thisPosition);

        float timeLeft = timeLimit - Time.time;
        if (timeLeft < 0) //when time is up 
        {
            shoot();
            timeLimit = Time.time + shootingRespawnTime; //set new timer
        }
        //default movement & PAUSE menu management
        if (Time.timeScale == 0)
        {
            transform.Translate((new Vector3(0.0f, 0.0f, 0.0f))); //Stops
        }
        else if (Time.timeScale == 1)
        {
            transform.Translate(movement * Time.deltaTime); //Resumes
        }

        
    }

    void shoot()
    {
        gameObject.GetComponent<AudioSource>().Play();//Plays the alien shooting sound
        Instantiate(bullet, this.transform.position, this.transform.rotation); //Spawns a bullet from that alien
    }

    private void OnTriggerExit(Collider collider)
    {
        if (collider.tag == "main_area") //if alien is leaving the game area
        {
           Destroy(gameObject);
        }
    }

    private void OnTriggerEnter(Collider collider)
    {
        if (collider.tag == "Player") //if alien hits the player
        {
            SceneManager.LoadScene("End_13plus"); //Game Over scene
        }
        /*if (collider.tag == "Wall") //if alien hits a defensive wall
        {
            Destroy(collider.gameObject);
            Destroy(gameObject);
        }*/
    }

    

}
