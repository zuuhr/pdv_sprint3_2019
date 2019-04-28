using UnityEngine;

public class alien_boss_movement : MonoBehaviour
{
    public GameObject bullet; //assigned bullet
    private int xFinish; //the x value that limits the range of the movment
    private bool nextPhase; //Manages the behaviour of the boss
    private Vector3 movement; 
    private int shotNumber;
    public int bulletLimit;
    public float angle;

    void Start()
    {
        xFinish = 3;
        movement = new Vector3(1,0,0);
    }

    void Update()
    {
        transform.GetChild(0).GetComponent<Transform>().Rotate(new Vector3(0, 0, 1), 1);

        #region MOVEMENT
        transform.LookAt(Player_movement_2DNew.thisPosition);
        //transform.forward = Player_movement_2DNew.thisPosition - transform.position;
        if (!nextPhase) //FIRST PHASE 
        {
            transform.Translate(movement * Time.deltaTime, Space.World); //movement
            if (transform.position.x > xFinish)
            {
                nextPhase = true;
            }
        }
        if (nextPhase) //LAST PHASE
        {
            Debug.Log("SEGUNDA FASE");
            transform.RotateAround(new Vector3(0, 0, 0), new Vector3(0, 1, 0), angle);
        }
        
        #endregion
        
        #region SHOOTING
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
        #endregion SHOOTING
    }

    void shoot()
    {
        gameObject.GetComponent<AudioSource>().Play();// Plays the boss shooting sound
        Instantiate(bullet, this.transform.position, this.transform.rotation);
    }
}
