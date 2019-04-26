using UnityEngine;
using UnityEngine.SceneManagement;

public class alien_movementNew : MonoBehaviour
{
    //movement
    private Vector3 movement; //Movement vector applied to the transform of the gameobject
    public int speed; //Speed of the aliens that'll be set in the inspector

    void Update()
    {
        transform.LookAt(Player_movement_2DNew.thisPosition); //The aliens will always be looking towards the player
        movement = Player_movement_2DNew.thisPosition.normalized * speed; //The aliens will always be moving towards the player
        //default movement & PAUSE menu management
        if (Time.timeScale == 0) transform.Translate((new Vector3(0.0f, 0.0f, 0.0f))); //Stops     
        else if (Time.timeScale == 1) transform.Translate(movement * Time.deltaTime, Space.World); //Resumes
    }

    private void OnTriggerExit(Collider collider)
    {
        //if alien is leaving the game area
        if (collider.tag == "main_area") Destroy(gameObject);
    }

    private void OnTriggerEnter(Collider collider)
    {
        //if alien hits the player
        if (collider.tag == "Player") SceneManager.LoadScene("End_13plus"); //Game Over scene
    }
}
