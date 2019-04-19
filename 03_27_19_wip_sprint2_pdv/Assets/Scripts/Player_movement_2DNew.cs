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
    private int left;

    public static Vector3 lookat;
    public static Vector3 thisPosition;



    public GameObject bullet;
    private bool whileShooting;
    float advanceTime;

    void Start()
    {
        velocity = 0.01f;
        rb = GetComponent<Rigidbody>();
    }

    void Update()
    {
        #region MOVEMENT
        if (Input.GetKey("up")) velocity += acc; //up
        if (Input.GetKey("down")) velocity -= acc; //down

        if (Input.GetKeyDown("right")) right = 1; //right
        if (Input.GetKeyUp("right")) right = 0; //right

        if (Input.GetKeyDown("left")) left = 1; //left
        if (Input.GetKeyUp("left")) left = 0; //right

        if (Math.Abs(velocity) >= maxSpeed) velocity = maxSpeed * Math.Sign(velocity); //the velocity cannot be over the maximun speed set
        rb.position += transform.forward.normalized * velocity;
        velocity *= frictionConstant;
        transform.RotateAroundLocal(new Vector3(0,1,0), angle * right - angle * left);

        //transform.LookAt(transform.position + lookat);

        //lookat = Vector3.Normalize(new Vector3(0.0f, 0.0f, velocity));
        thisPosition = transform.position;
        //transform.LookAt(transform.position + lookat); //lookat direction is movement direction
         //if no buttons are pressed the player will start to slow down
        lookat = this.transform.forward;

        #endregion 








        if ((Input.GetButtonDown("Fire1") || Input.GetKeyDown(KeyCode.Space)) && !whileShooting)
        { //shooting
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
            Destroy(other.gameObject);
            SceneManager.LoadScene(gameOverScene); //game over scene
            Destroy(this.gameObject);
        }
    }
}
