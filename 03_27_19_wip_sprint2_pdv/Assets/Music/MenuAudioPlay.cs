using System.Collections;
using System.Collections.Generic;
using UnityEngine;

public class MenuAudioPlay : MonoBehaviour
{
    public AudioSource a;
    // Start is called before the first frame update
    void Start()
    {
        Invoke("audioPlay", 27.28f);
    }

    // Update is called once per frame
    void audioPlay()
    {
        a.Play();
    }
}
