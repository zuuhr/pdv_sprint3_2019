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
        if (Time.time > timeSpan) Destroy(gameObject);
    }
}
