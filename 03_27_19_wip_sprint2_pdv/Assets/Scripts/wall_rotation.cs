using UnityEngine;
public class wall_rotation : MonoBehaviour
{
    public float angle;
    void Update()=>transform.Rotate(new Vector3(0,angle,0));
}