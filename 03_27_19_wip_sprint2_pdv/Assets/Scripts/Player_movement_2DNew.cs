using System;
using System.Collections;
using System.Collections.Generic;
using UnityEngine;
using UnityEngine.SceneManagement;

public class Player_movement_2DNew : MonoBehaviour
{
    public string gameOverScene;

    private Rigidbody rb;
    public float maxSpeed;
    public float acc;
    public float frictionConstant;
    public float angle;

    private float velocity;

    private int right;

    public static Vector3 lookat;
    public static Vector3 thisPosition;
    

    public GameObject bullet;
    private bool whileShooting;
    float advanceTime;

    AudioSource shot;
    AudioSource dead;
    
    void Start()
    {
        var aSources = gameObject.GetComponents<AudioSource>();//vector with the audioSources
        shot = aSources[0];//Audio used when the player shoots
        dead = aSources[1];//Audio used when the player gets killed

        velocity = 0.01f;
        rb = GetComponent<Rigidbody>();
    }
    private void FixedUpdate()
    {
        #region MOVEMENT
        Vector3 tempTrans = new Vector3();
        if (Input.GetKey("up")) tempTrans.z += 1; //up
        if (Input.GetKey("down")) tempTrans.z -= 1;  //down
        

        if (Input.GetKey("left")) right -= 1;
        if (Input.GetKey("right")) right += 1;
        if (right > 10) right = 10;
        if (right < -10) right = -10;

        tempTrans = tempTrans.normalized * acc * Time.deltaTime;
        if(tempTrans.magnitude != 0)
        {
            velocity = maxSpeed * tempTrans.z;
        } else velocity *= frictionConstant;
        rb.MovePosition(transform.position + tempTrans + transform.forward.normalized * velocity);

        Quaternion deltaRotation = Quaternion.Euler(new Vector3(0, angle * right, 0) * Time.deltaTime);
        rb.MoveRotation(rb.rotation * deltaRotation);

        
        thisPosition = transform.position;
        lookat = this.transform.forward;

        #endregion 
    }
    void Update()
    {
        if ((Input.GetButtonDown("Fire1") || Input.GetKeyDown(KeyCode.Space)) && !whileShooting)
        { //shooting
            shot.Play();//play shooting sound
            Instantiate(bullet, this.transform.position, this.transform.rotation);
            advanceTime = Time.time + 0.5f; //set timer cooldown
            whileShooting = true; //cooldown 
        }
        float timeLeft = advanceTime - Time.time; //duration 
        if (timeLeft < 0 && whileShooting) whileShooting = false;//time's up
    }

    private void OnTriggerEnter(Collider other)
    {
        if (other.gameObject.CompareTag("Wall") || other.gameObject.CompareTag("boss")) //If the player hits a defensive wall or an alien
        {
            dead.Play();//play dead sound. It really never sounds, because the change takes an instant
            Destroy(other.gameObject);
            SceneManager.LoadScene(gameOverScene); //game over scene
            Destroy(this.gameObject,1.0f);
        }
    }
}
