using UnityEngine;

public class outerImpact : MonoBehaviour
{
    public float timeSpan;
    public Transform target;
   //public GameObject mothership;

    void Start()
    {
        timeSpan += Time.time;
        //transform.LookAt(new Vector3(0, 0, 0));
    }


    void Update()
    {

        //transform.forward = new Vector3(0, 0, 0); //- transform.position;
        //transform.LookAt(new Vector3(0, 0, 0) - transform.position);
        //transform.LookAt(mothership.transform);
        //Quaternion rotation = Quaternion.LookRotation(new Vector3(0, 134.673f, 0) - new Vector3(transform.position.x, 0, transform.position.z), Vector3.up);

        //transform.rotation = rotation;
        //this.transform.LookAt(Vector3.zero);
        transform.LookAt(target, Vector3.up);
        transform.Rotate(new Vector3(0, 134.673f, 0));
        //if (Time.time > timeSpan) Destroy(gameObject);
    }
}
