﻿using UnityEngine;
using UnityEngine.SceneManagement;

public class levelmgr : MonoBehaviour
{
    public void cargaNivel(string pLevelName) =>  SceneManager.LoadScene(pLevelName); //load scene
    public void setTimeNormal() => Time.timeScale = 1;
}
