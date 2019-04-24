using UnityEngine;

public class collision_enemy : MonoBehaviour
{
    private Rigidbody rb;
    private int rebounds_number;
    public float speed = 20.0f;
    public float MaxDistProjectile;
    public GameObject impact;

    public static bool change; //variable that handles the color change 
    
    Vector3 lookat;
    Vector3 movement;
    void Start()
    {
        rb = this.GetComponent<Rigidbody>();
        lookat = Player_movement_2DNew.lookat.normalized; 
        rb.velocity = lookat * speed; //The bullet direction is where the player is looking
        transform.LookAt(transform.position + rb.velocity.normalized); //The bullet orientation is where the player is looking
    }
    
    private void OnTriggerEnter (Collider other) 
    {
        if (other.gameObject.CompareTag("alien") || other.gameObject.CompareTag("boss")) //Bullet collides
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
        if ( over13_variables.rebounds && (other.gameObject.CompareTag("wall_rebounds_l") || other.gameObject.CompareTag("wall_rebounds_r") || other.gameObject.CompareTag("wall_rebounds_t") 
            || other.gameObject.CompareTag("wall_rebounds_b"))) //collides with the surrounding walls
        {
            if (rebounds_number < 3)
            { 
                //left & right walls will switch the x value of the movement vector and randomize the z value 
                if (other.gameObject.CompareTag("wall_rebounds_l") || other.gameObject.CompareTag("wall_rebounds_r"))
                rb.velocity = (new Vector3(-rb.velocity.x, 0.0f, Random.Range(-5.0f, 5.0f) )).normalized * speed;
                //top & bottom walls will switch the z value of the movement vector and randomize the x value 
                if (other.gameObject.CompareTag("wall_rebounds_t") || other.gameObject.CompareTag("wall_rebounds_b"))
                    rb.velocity = (new Vector3(Random.Range(-5.0f, 5.0f), 0.0f, -rb.velocity.z)).normalized * speed;
                transform.LookAt(transform.position + rb.velocity.normalized); //The lookat vector will point towards the movement direction
                rebounds_number++;
            } 
            else { //The third bounce will destroy the bullet
                Debug.Log("ME DESTRUYO");
                Destroy(this.gameObject);
            }
        }
        
    }
    private void OnTriggerExit(Collider other)
    {
        if (other.CompareTag("main_area"))
        {
            Quaternion rotation = Quaternion.LookRotation(new Vector3(0,0,0), Vector3.up);

            Instantiate(impact, transform.position, rotation);

            Destroy(this.gameObject);
        }
        
    }
}
