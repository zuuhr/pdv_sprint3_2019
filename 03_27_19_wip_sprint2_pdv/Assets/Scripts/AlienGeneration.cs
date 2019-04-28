using UnityEngine;

public class AlienGeneration : MonoBehaviour
{
    public GameObject alien; //Basic alien gamobject
    public GameObject boss; //Boss alien gameobject
    private GameObject actualBoss; //Boss alien gameobject that is present in the scene
    public float newAlienRespawnTime; //gap time between aliens spawning
    public float newBossRespawnTime; //gap time between bosses spawning
    private float timeLimitAlien; //controls newAlienRespawnTime 
    private float timeLimitBoss; //controls newBossRespawnTime
    [HideInInspector] public bool canSpawnBoss; //Controls when the boss will spawn

    void Start()
    {
        timeLimitAlien = Time.time + newAlienRespawnTime; //set timer
        timeLimitBoss = Time.time + newBossRespawnTime; //set timer
        canSpawnBoss = true; //boss can spawn after n time from the beginning of the game
    }

    void Update()
    {
        if (actualBoss == null && !canSpawnBoss) //reset timer
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