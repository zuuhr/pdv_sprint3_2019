﻿
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
    public GameObject impact;

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
        movement = Player_movement_2DNew.thisPosition.normalized * speed;

        //default movement & PAUSE menu management
        if (Time.timeScale == 0)
        {
            transform.Translate((new Vector3(0.0f, 0.0f, 0.0f))); //Stops
        }
        else if (Time.timeScale == 1)
        {
            transform.Translate(movement * Time.deltaTime, Space.World); //Resumes
        }

        
    }


    private void OnTriggerExit(Collider collider)
    {
        if (collider.tag == "main_area") //if alien is leaving the game area
        {
            Instantiate(impact, transform.position, transform.rotation);
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
