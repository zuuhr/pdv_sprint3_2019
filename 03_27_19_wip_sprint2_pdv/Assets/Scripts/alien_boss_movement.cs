﻿using UnityEngine;

public class alien_boss_movement : MonoBehaviour
{
    public GameObject bullet; //assigned bullet
    private int xStart; //the x value of the initial position where the boss spawns
    private int xFinish; //the x value that limits the range of the movment
    private bool nextPhase; //Manages the behaviour of the boss
    private Vector3 movement; 
    private int shotNumber=0;
    float advanceTime;
    public int bulletLimit;
    //public GameObject parent;

    void Start()
    {
        /*xStart = -40;
        xFinish = -(xStart); //So the segment is symmetrical 
        movement = new Vector3 (40, 0 , 0);
        transform.position = new Vector3(xStart, 1, 13); //Initial position*/

    }

    void Update()
    {
        //transform.GetChild(1).GetComponent<Transform>().RotateAroundLocal(new Vector3(0, 0, 1), 1);

        if (shotNumber <= bulletLimit)
        {
            if(shotNumber%2==0) shoot();
            shotNumber++;
            
        }
        else if (shotNumber >= (bulletLimit+1) && shotNumber <= (bulletLimit*10))
        {
            shotNumber++;
            if (shotNumber == (bulletLimit*10))
                shotNumber = 0;
        }

        //GetComponent("eye_low").GetComponentInChildren<Transform>().RotateAround(new Vector3(0, 0, 0), new Vector3(0,0,1), 5);
        /*if (!nextPhase) //FIRST PHASE 
        {
            transform.Translate(movement * Time.deltaTime); //movement
            if (transform.position.x > xFinish) //It reached the end of the segment
            {
                nextPhase = true; // Go to the last phase
                movement *= -0.5f; //Reduce movement speed
            }
        }
        if (nextPhase) //LAST PHASE
        {
            transform.Translate(movement * Time.deltaTime); //movement
            if (transform.position.x < xStart) //It reached the beginning of the segment
            {
                Debug.Log("Sayonara baby"); //To control when the boss is done 
                Destroy(this.gameObject); //Destroy this gameobject
            }
            // Controls when to shoot (three times through the segment)
            else if ((transform.position.x < 6 && transform.position.x > 4 && shotNumber == 0) ||
                (transform.position.x < 1 && transform.position.x > -1 && shotNumber == 1) ||
                (transform.position.x < -4 && transform.position.x > -6 && shotNumber == 2))
            {/

                shoot();
                shotNumber++;
             }
    }*/
    }
    void shoot()
    {
        //GameObject hijo = Instantiate(bullet, this.transform.position, this.transform.rotation);
        //hijo.transform.parent = parent.transform;
        Instantiate(bullet, this.transform.position, this.transform.rotation);
    }
    //Instantiation of the bullet
    
 
}
