using UnityEngine;

public class collision_enemy : MonoBehaviour
{
    private Rigidbody rb; //Rigidbody of the gameobject
    public float speed; //Speed of the bullet that'll be set in the inspector
    private Vector3 lookat; 

    void Start()
    {
        speed = 20.0f; //constant speed
        rb = this.GetComponent<Rigidbody>(); //acquires the rigidbody from the gameobject
        lookat = Player_movement_2DNew.lookat.normalized; //The initial forward vector will be the ship's when instantiated
        rb.velocity = lookat * speed; //The bullet direction is where the player is looking
        transform.LookAt(transform.position + rb.velocity.normalized); //The bullet orientation is where the player is looking
    }
    
    private void OnTriggerEnter (Collider other) 
    {
        if (other.gameObject.CompareTag("alien") || other.gameObject.CompareTag("boss") || other.gameObject.CompareTag("bossBullet")) //Bullet collides
        {
            GetComponent<AudioSource>().Play();//Play death/explosion sound
            Destroy(other.gameObject,0.1f);  //destroy other game object gameobject;
            if (other.gameObject.CompareTag("alien")) over13_variables.add = true; //add points to the score
            if (other.gameObject.CompareTag("boss")) over13_variables.addBoss = true; //add points to the score 
            Destroy(this.gameObject, 0.1f); //destroy bullet
        }
        //If bullet hits a wall
        if (other.gameObject.CompareTag("Wall")) Destroy(this.gameObject, 0.1f);
    }

    private void OnTriggerExit(Collider other)
    {
        //if bullet is leaving the game area
        if (other.CompareTag("main_area")) Destroy(this.gameObject);
    }
}
