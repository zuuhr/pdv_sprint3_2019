using UnityEngine;

public class alien_boss_movement : MonoBehaviour
{
    public GameObject bullet; //assigned bullet
    private int xFinish; //the x value that limits the range of the movment
    private bool nextPhase; //Manages the behaviour of the boss
    private Vector3 movement; //Movement vector applied to the transform of the gameobject
    private int shotNumber; //counter of bullets
    public int bulletLimit; //double the amount of bullets that the boss will shot
    public float angle; //angle that sets the angular speed of the orbitation

    void Start()
    {
        xFinish = 3; //distance limit to switch states
        movement = new Vector3(1,0,0);
    }

    void Update()
    {
        if (Time.timeScale == 1)
        {
            transform.GetChild(0).GetComponent<Transform>().Rotate(new Vector3(0, 0, 1), 1); //Rotation of the eyes of the boss

            #region MOVEMENT
            transform.LookAt(Player_movement_2DNew.thisPosition); //The boss will always be lookting towards the player
            if (!nextPhase) //FIRST PHASE: In this phase the boss will move outwards the center black hole
            {
                transform.Translate(movement * Time.deltaTime, Space.World); //movement
                if (transform.position.x > xFinish) //change phase
                {
                    nextPhase = true;
                }
            }
            if (nextPhase) //LAST PHASE: The boss will orbitate around the black hole 
            {
                transform.RotateAround(new Vector3(0, 0, 0), new Vector3(0, 1, 0), angle);
            }

            #endregion MOVEMENT


            #region SHOOTING
            if (shotNumber <= bulletLimit) //Only half the number on the inspector will be shot
            {
                if (shotNumber % 2 == 0) shoot();
                shotNumber++;
            }
            else if (shotNumber >= (bulletLimit + 1) && shotNumber <= (bulletLimit * 10)) //resets the bullet count
            {
                shotNumber++;
                if (shotNumber == (bulletLimit * 10))
                    shotNumber = 0;
            }
            #endregion SHOOTING

        } else
        {
            transform.GetChild(0).GetComponent<Transform>().Rotate(new Vector3(0, 0, 0), 1); //Rotation of the eyes of the boss

            #region MOVEMENT
            transform.LookAt(Player_movement_2DNew.thisPosition); //The boss will always be lookting towards the player
            if (!nextPhase) //FIRST PHASE: In this phase the boss will move outwards the center black hole
            {
                transform.Translate(movement * Time.deltaTime, Space.World); //movement
                if (transform.position.x > xFinish) //change phase
                {
                    nextPhase = true;
                }
            }
            if (nextPhase) //LAST PHASE: The boss will orbitate around the black hole 
            {
                transform.RotateAround(new Vector3(0, 0, 0), new Vector3(0, 0, 0), angle);
            }
            #endregion MOVEMENT
        }

    }

    void shoot() //shooting method
    {

        gameObject.GetComponent<AudioSource>().Play();// Plays the boss shooting sound
        Instantiate(bullet, this.transform.position, this.transform.rotation); //Instantiates a bullet gameobject
    }
    
 
}
