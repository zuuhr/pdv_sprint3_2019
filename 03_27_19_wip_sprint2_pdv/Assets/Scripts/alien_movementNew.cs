
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

    void Start()
    {
        xRand = (int)Random.Range(-10, 10);
        zRand = (int)Random.Range(-10, 10);
        Instantiate(this, hole.transform.position, hole.transform.rotation);
        movement = new Vector3(xRand, 0, zRand) * speed;
        

    }

    void Update()
    {
        
        transform.Translate(movement * Time.deltaTime);
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

    private void OnTriggerExit(Collider collider)
    {
        if (collider.tag == "main_area") //if alien is leaving the game area
        {
           Destroy(this);
        }
    }

    private void OnTriggerEnter(Collider collider)
    {
        if (collider.tag == "Player") //if alien hits the player
        {
            SceneManager.LoadScene("Menu_prueba_derrota"); //Game Over scene
        }
        if (collider.tag == "Wall") //if alien hits a defensive wall
        {
            Destroy(collider.gameObject);
            Destroy(gameObject);
        }
    }

    

}
