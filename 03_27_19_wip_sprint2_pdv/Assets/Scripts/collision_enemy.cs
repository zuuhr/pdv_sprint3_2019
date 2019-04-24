using UnityEngine;

public class collision_enemy : MonoBehaviour
{
    private Rigidbody rb;
    public float speed = 20.0f;
    public GameObject impact;
    
    Vector3 lookat;

    void Start()
    {
        rb = this.GetComponent<Rigidbody>();
        lookat = Player_movement_2DNew.lookat.normalized; 
        rb.velocity = lookat * speed; //The bullet direction is where the player is looking
        transform.LookAt(transform.position + rb.velocity.normalized); //The bullet orientation is where the player is looking
    }
    
    private void OnTriggerEnter (Collider other) 
    {
        if (other.gameObject.CompareTag("alien") || other.gameObject.CompareTag("boss") || other.gameObject.CompareTag("bossBullet")) //Bullet collides
        {
            GetComponent<AudioSource>().Play();//Play death/explosion sound
            Destroy(other.gameObject,0.1f); 
            if (other.gameObject.CompareTag("alien")) {
                over13_variables.add = true; //add points to the score
            }
            if (other.gameObject.CompareTag("boss")) {
                over13_variables.addBoss = true; //add points to the score
            }

            Destroy(this.gameObject, 0.1f);
        }

        if (other.gameObject.CompareTag("Wall")) {
            Destroy(this.gameObject, 0.1f);
        }
        
        
    }
    private void OnTriggerExit(Collider other)
    {
        if (other.tag == "main_area" || other.CompareTag("main_area"))
        {

            Instantiate(impact, transform.position, transform.rotation);

            Destroy(this.gameObject);
        }
        
    }
}
