﻿using UnityEngine;
using UnityEngine.SceneManagement;

public class alien_boss_bullet_script : MonoBehaviour
{
    private Rigidbody rb; //Rigidbody of the gameobject
    private int speed; 
    private int rebounds_number; //variable that handles the # of times the bullet has bounced
    public static bool change; //variable that handles the color change 

    private void Start()
    {
        speed = 5; //constant speed
        rb = this.GetComponent<Rigidbody>(); //acquires the rigidbody from the gameobject
        rb.velocity = transform.forward * speed; //sets the velocity to move forward with constant speed;
    }

    private void OnTriggerExit(Collider collider)
    {
        if (collider.tag == "main_area") //if alien is leaving the game area
        {
            Destroy(gameObject);
        }
    }

    private void OnTriggerEnter(Collider other)
    {
        if ((other.gameObject.CompareTag("Player")) || (other.gameObject.CompareTag("Wall")))  //if the bullet hits either the player or a wall
        {
            Destroy(this.gameObject); //destroy this object
            if (other.gameObject.CompareTag("Player"))  SceneManager.LoadScene("End_13plus"); //end game 
            if (other.gameObject.CompareTag("Wall"))  change = true; //To manage alien color change 
            Destroy(other.gameObject, 0.1f); //destroy the object colliding
        }
        
    }
}
