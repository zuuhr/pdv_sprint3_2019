using System.Collections;
using System.Collections.Generic;
using UnityEngine;

public class Pausa : MonoBehaviour
{
    //VARIABLES
    Canvas canvas;//Canvas object
    public Player_movement_2DNew disableMovementPlayer;//gameobject that refers to the player's movement
    public wall_rotation disableWallRotation;
    // Start is called before the first frame update
    void Start()
    {
        canvas = GetComponent<Canvas>();//assign the pause canvas to the Canvas object named canvas
        canvas.enabled = false;//at the first time, we don´t show the canvas until the player clicks on the Escape key
        disableMovementPlayer = GameObject.Find("NAVE").GetComponent<Player_movement_2DNew>();//assign the player to the gameobject that refers to the aliens' movement
        disableWallRotation = GameObject.Find("Walls").GetComponent<wall_rotation>();
    }

    // Update is called once per frame
    void Update()
    {
        //if the player clicks on the Escape key
        if (Input.GetKeyDown(KeyCode.Escape))
        {
            //if the pause canvas is not seen on the screen, we make it visible to the player
            if (canvas.enabled == false)
            {
                //we also reduce the time to null, and we disable the aliens' and player's movement and their ability to shoot
                canvas.enabled = true;
                disableMovementPlayer.enabled = false;
                disableWallRotation.enabled = false;
                Time.timeScale = 0;
            }
            else//otherwise, we make the pause canvas invisible
            {
                //we also enable the aliens' and player movement and their ability to shoot, and we return time to normal
                canvas.enabled = false;
                disableMovementPlayer.enabled = true;
                disableWallRotation.enabled = true;
                Time.timeScale = 1;
            }
        }
    }
}
