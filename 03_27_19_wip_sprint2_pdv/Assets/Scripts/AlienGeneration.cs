using System.Collections;
using System.Collections.Generic;
using UnityEngine;

public class AlienGeneration : MonoBehaviour
{
    public GameObject alien;
    public GameObject boss;
    private GameObject actualBoss;
    public float newAlienRespawnTime; //gap time between bullet firing
    public float newBossRespawnTime;
    private float timeLimitAlien; //gap time in real time units 
    private float timeLimitBoss;
    [HideInInspector] public bool canSpawnBoss;

    void Start()
    {
        timeLimitAlien = Time.time + newAlienRespawnTime; //set timer
        timeLimitBoss = Time.time + newBossRespawnTime;
        canSpawnBoss = true;
    }

    void Update()
    {

        if (actualBoss == null && !canSpawnBoss)
        {
            timeLimitBoss = Time.time + newBossRespawnTime;
            canSpawnBoss = true;
        }
        if (timeLimitAlien < Time.time) //when time is up 
        {
            
            Instantiate(alien, new Vector3(0, 0, 0), this.transform.rotation);
            timeLimitAlien = Time.time + newAlienRespawnTime; //set new timer
        }

        
        if (timeLimitBoss < Time.time && canSpawnBoss) //when time is up 
        {
            actualBoss = Instantiate(boss, new Vector3(0, 0, 0), this.transform.rotation);
            canSpawnBoss = false;
        }

    }

}
