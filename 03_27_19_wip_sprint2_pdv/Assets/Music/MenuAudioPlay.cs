using System.Collections;
using System.Collections.Generic;
using UnityEngine;

public class MenuAudioPlay : MonoBehaviour
{
    public AudioSource a;

    void Start()
    {
        Invoke("audioPlay", 27.28f);
    }

    void audioPlay()
    {
        a.Play();
    }
}
