using UnityEngine;
using UnityEngine.SceneManagement;

public class alien_movement_minus13 : MonoBehaviour
{
    private Vector3 movement; //Movement vector applied to the transform of the gameobject
    public int speed; //Speed of the aliens that'll be set in the inspector
    public under13_variables scoreFunction; //Object form a class we've creatied

    void Start()
    {
        movement = new Vector3(0, 0, -1) * speed; //movement
        scoreFunction = GameObject.Find("GameObject").GetComponent<under13_variables>(); //instantiates the object from an existing one in the scene
    }

    void Update()
    {
        //default movement & PAUSE menu management
        if (Time.timeScale == 0) speed = 0;
        else if (Time.timeScale == 1) transform.Translate(movement * Time.deltaTime); //movement
    }

    private void OnTriggerExit(Collider collider)
    {
        if (collider.tag == "main_area") //if alien is leaving the game area
        {
            Destroy(gameObject);
            scoreFunction.AddScore();
        }
    }
    private void OnTriggerEnter(Collider collider)
    {
        if (collider.tag == "Player") //if alien hits the player
        {
            SceneManager.LoadScene("End_13minus"); //game over scene
            Destroy(collider);
        }
        if (collider.tag == "Wall")
        {
            Destroy(collider.gameObject); //if an alien collides against a wall, they would destroy it
            Destroy(gameObject); //And destroy themselves
            scoreFunction.AddScore(); 
        }
    }
}