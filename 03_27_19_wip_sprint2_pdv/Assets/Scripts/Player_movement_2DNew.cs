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

    private Transform body;
    private GameObject coneleft;
    private GameObject coneright;
    public float rotationAngle;


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

        body = transform.GetChild(0);
    }
    private void FixedUpdate()
    {
        #region MOVEMENT
        Vector3 tempTrans = new Vector3();
        if (Input.GetKey("up")) tempTrans.z += 1; //up
        if (Input.GetKey("down")) tempTrans.z -= 1;  //down

        #region ANIMACION DE ROTACION
        if (Input.GetKey("left"))
        {
            right -= 1;
            transform.GetChild(2).gameObject.SetActive(true);
            if (body.rotation.eulerAngles.z < 45 || body.rotation.eulerAngles.z > 310) body.Rotate(new Vector3(0, 0, 1), rotationAngle);        
        }
        else if (Input.GetKey("right"))
        {
            right += 1;
            transform.GetChild(3).gameObject.SetActive(true);
            if (body.rotation.eulerAngles.z > 315 || body.rotation.eulerAngles.z < 50) body.Rotate(new Vector3(0, 0, -1), rotationAngle);
        }
        else if (body.rotation.eulerAngles.z > 310 && body.rotation.eulerAngles.z < 359.5)
        {
            transform.GetChild(3).gameObject.SetActive(false);
            transform.GetChild(2).gameObject.SetActive(false);
            body.Rotate(new Vector3(0, 0, 1), rotationAngle);
        }
        else if (body.rotation.eulerAngles.z < 50 && body.rotation.eulerAngles.z > 0.5)
        {
            body.Rotate(new Vector3(0, 0, -1), rotationAngle);
            transform.GetChild(2).gameObject.SetActive(false);
            transform.GetChild(3).gameObject.SetActive(false);
        }
        #endregion

        if (right > 10) right = 10;
        if (right < -10) right = -10;

        tempTrans = tempTrans.normalized * acc * Time.deltaTime;
        if(tempTrans.magnitude != 0)
        {
            velocity = maxSpeed * tempTrans.z;
        } else velocity *= frictionConstant;
        rb.MovePosition(transform.position + tempTrans + transform.forward.normalized * velocity);

        Quaternion deltaRotation = Quaternion.Euler(new Vector3(0, angle * right, 0) * Time.deltaTime);
        rb.MoveRotation(rb.rotation.normalized * deltaRotation);


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
            dead.Play(); //play dead sound. It really never sounds, because the change takes an instant
            Destroy(other.gameObject);
            SceneManager.LoadScene(gameOverScene); //game over scene
            Destroy(this.gameObject,1.0f);
        }
    }
}
