using UnityEngine;

public class outerImpact : MonoBehaviour
{
    public float timeSpan;
    public GameObject mothership;

    void Start()
    {
        timeSpan += Time.time;
    }


    void Update()
    {
        //transform.LookAt(new Vector3(0,0,0));
        //transform.forward = new Vector3(0, 0, 0); //- transform.position;
        //transform.LookAt(new Vector3(0, 0, 0) - transform.position);
        transform.LookAt(mothership.transform);
        if (Time.time > timeSpan) Destroy(gameObject);
    }
}
