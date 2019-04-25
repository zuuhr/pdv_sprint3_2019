using System.Collections;
using System.Collections.Generic;
using UnityEngine;

public class MenuAudioPlay : MonoBehaviour
{
    public AudioSource a;
    public AudioSource b;
    void Start()
    {
        Invoke("audioPlay", b.clip.length);
    }

    void audioPlay()
    {
        a.Play();
    }
}
