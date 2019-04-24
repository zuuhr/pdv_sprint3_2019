using UnityEngine;

public class outerImpact : MonoBehaviour
{
    public float timeSpan;

    void Start()
    {
        timeSpan += Time.time;
    }


    void Update()
    {
        transform.LookAt(new Vector3(0,0,0));
        if (Time.time > timeSpan) Destroy(gameObject);
    }
}
