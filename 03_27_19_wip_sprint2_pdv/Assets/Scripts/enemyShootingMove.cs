using UnityEngine;
using UnityEngine.SceneManagement;

public class enemyShootingMove : MonoBehaviour
{
    Rigidbody rb;
    private int rebounds_number;
    private int speed=15;
    public int MaxDistProjectile;
    public static bool change;
    public GameObject impact;

    void Start()
    {
        rb = GetComponent<Rigidbody>();
        //rb.velocity = transform.TransformDirection((Player_movement_2DNew.thisPosition-rb.position).normalized * speed); //movement 
        rb.velocity = transform.forward * speed;
    }
    private void Update()
    {
        if ((rb.position - Player_movement_2DNew.thisPosition).magnitude > MaxDistProjectile)  Destroy(this);  //If the bullet gets too far away 
    }
    private void OnTriggerEnter(Collider other)
    {
        if ((other.gameObject.CompareTag("Player")) || (other.gameObject.CompareTag("Wall")))  //if the bullet hits either the player or a wall
        {
            //Destroy(other.gameObject); //destroy the object colliding
            if (other.gameObject.CompareTag("Player")){ 
               // SceneManager.LoadScene("Menu_prueba_derrota"); //end game 
            }
            if (other.gameObject.CompareTag("Wall"))
            {
                change = true; //To manage alien color change
            }
            Destroy(this.gameObject);
        }
        

    }
    private void OnTriggerExit(Collider other)
    {
        if (other.CompareTag("main_area"))
        {

            Instantiate(impact, transform.position, transform.rotation);

            Destroy(this.gameObject);
        }
    }
}
