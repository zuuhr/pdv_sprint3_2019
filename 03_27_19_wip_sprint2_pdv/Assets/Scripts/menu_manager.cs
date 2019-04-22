using System.Collections;
using System.Collections.Generic;
using UnityEngine;
using UnityEngine.SceneManagement;

public class menu_manager : MonoBehaviour
{
    Vector3 position;
    public void Manage(string option)
    {
        GameObject ship_over = GameObject.Find("ship_over");
        GameObject ship_under = GameObject.Find("ship_under");
        GameObject alienA = GameObject.Find("alienA");
        GameObject alienB = GameObject.Find("alienB");
        GameObject boss = GameObject.Find("alien_boss");
        GameObject over_text = GameObject.Find("ranking_over_text");
        GameObject under_text = GameObject.Find("ranking_under_text");

        switch (option)
        {
            case "over":
                over_text.SetActive(false);
                position = ship_over.transform.position;
                do
                {
                    position.y += (float)0.001;
                    ship_over.transform.position = position;
                } while (position.y < 3.5);
                SceneManager.LoadScene("Ranking");
                break;
            case "under":

                break;

        }
    }

  
}
