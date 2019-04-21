using System.Collections;
using System.Collections.Generic;
using UnityEngine;

public class AlienGeneration : MonoBehaviour
{
    public GameObject alien;
    //public GameObject parent;
    public float newAlienRespawnTime; //gap time between bullet firing
    float timeLimit; //gap time in real time units 

    // Start is called before the first frame update
    void Start()
    {
        timeLimit = Time.time + newAlienRespawnTime; //set timer
    }

    // Update is called once per frame
    void Update()
    {
        
        float timeLeft = timeLimit - Time.time;
        if (timeLeft < 0) //when time is up 
        {
            //GameObject hijo= Instantiate(alien, new Vector3(0, 0, 0), this.transform.rotation);
            //hijo.transform.parent = parent.transform;
            Instantiate(alien, new Vector3(0, 0, 0), this.transform.rotation);
            timeLimit = Time.time + newAlienRespawnTime; //set new timer
        }
        
    }
}
