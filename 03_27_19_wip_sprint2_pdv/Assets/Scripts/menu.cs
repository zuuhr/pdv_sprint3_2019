using System.Collections;
using System.Collections.Generic;
using UnityEngine;
using UnityEngine.UI;
using UnityEngine.SceneManagement;


public class menu : MonoBehaviour
{
    int aux;
    bool dir;
    Vector3 positionOver;
    Vector3 positionUnder;
    public Image rankingo13_on;


    // Start is called before the first frame update
    void Start()
    {
        aux = 0; //auxiliar variable to control the alien's movement
        dir = true; //direction of the alien's movement
    }

    // Update is called once per frame
    void Update()
    {
        /*GAME OBJECTS*/
        Button buttonA = GameObject.Find("controls_b").GetComponent<Button>();
        Button buttonB = GameObject.Find("credits_b").GetComponent<Button>();
        Button buttonC = GameObject.Find("Rankingover_b").GetComponent<Button>();
        Button buttonD = GameObject.Find("Rankingunder_b").GetComponent<Button>();
        Button buttonE = GameObject.Find("play_b").GetComponent<Button>();
        Button buttonF = GameObject.Find("exit_b").GetComponent<Button>();
        GameObject alienA = GameObject.Find("alienA");
        GameObject alienB = GameObject.Find("alienB");
        GameObject alien_boss = GameObject.Find("alien_boss");
        GameObject over_text = GameObject.Find("ranking_over_text");
        GameObject under_text = GameObject.Find("ranking_under_text");
        GameObject controls_text = GameObject.Find("controls_text");
        GameObject credits_text = GameObject.Find("credits_text");
        GameObject play_text = GameObject.Find("play_text");
        GameObject ship_over = GameObject.Find("ship_over");
        GameObject ship_under = GameObject.Find("ship_under");


        /*ALIENS MOVEMENT*/

        //Debug.Log(aux);
        if (aux == -50) //time of oscilation
            dir = true;
        if (aux == 50)
            dir = false;

        Vector3 posA = buttonA.transform.position;
        Vector3 posB = buttonB.transform.position; //the aliens' and buttons' positions
        Vector3 posAA = alienA.transform.position;
        Vector3 posAB = alienB.transform.position;
        Vector3 pos_boss = alien_boss.transform.position;

        if (dir == true)
        {
            aux += 1;
            if (controls_text == true)
            {
                posA.y -= 1;
                posAA.y -= (float)0.009;    //if the variable  dir is true the alien A moves from up to down
            }
            if (credits_text == true)
            {
                posB.y += 1;                // and the alien B moves from down to up
                posAB.y += (float)0.009;
            }
        }

        if (dir == false)
        {
            aux -= 1;
            if (controls_text == true)
            {
                posA.y += 1;                //if the variable  dir is false the alien A moves from down to up
                posAA.y += (float)0.009;
            }
            if (credits_text == true)
            {
                posB.y -= 1;                //and the alien B moves from up to down
                posAB.y -= (float)0.009;
            }
        }

        buttonA.transform.position = posA;
        alienA.transform.position = posAA; //assign new positions
        buttonB.transform.position = posB;
        alienB.transform.position = posAB;


        /*OBJECTS ANIMATION WHEN YOU CLICK THE BUTTONS*/

        Vector3 auxiliar = new Vector3(0, 0, 0);

        positionOver = ship_over.transform.position; //the ships' positions
        positionUnder = ship_under.transform.position;

        buttonA.onClick.AddListener(offControls); //if you click the controls button
        if (buttonA.transform.localScale == auxiliar)
        {
            if (posAA.x >= -0.05 && posAA.y <= 1 && posAA.z <= -9) //if the alien is near the screen
            {
                SceneManager.LoadScene("Ranking");
            }
            else                                                //if the alien isn't near the screen
            {
                if (posAA.x < -0.05)
                    posAA.x += (float)0.05;
                if (posAA.y > 1)
                    posAA.y -= (float)0.03;
                if (posAA.z > -9.3)
                    posAA.z -= (float)0.03;
                alienA.transform.position = posAA;
            }
        }

        buttonB.onClick.AddListener(offCredits); //if you click the credits button
        if (buttonB.transform.localScale == auxiliar)
        {
            if (posAB.x < 0 && posAB.y <= 1 && posAB.z <= -9) //if the alien is near the screen
            {
                SceneManager.LoadScene("Ranking");
            }
            else                                                //if the alien isn't near the screen
            {
                if (posAB.x >= 0)
                    posAB.x -= (float)0.05;
                if (posAB.y > 1)
                    posAB.y -= (float)0.03;
                if (posAB.z > -9.3)
                    posAB.z -= (float)0.03;
                alienB.transform.position = posAB;
            }
        }

        

        buttonC.onClick.AddListener(offOver); //if you click the Ranking +13 button
        if (buttonC.transform.localScale == auxiliar)
        {
            if (positionOver.y >= 3.3) //if the ships goes out of the screen
            {
                SceneManager.LoadScene("Ranking");
            }
            else if (positionOver.y < 3.3) //if the ship isn't out of the screen
            {
                positionOver.y += (float)0.05;
                ship_over.transform.position = positionOver;
            }
        }


        buttonD.onClick.AddListener(offUnder); //if you click the Ranking -13 button
        if (buttonD.transform.localScale == auxiliar)
        {
            if (positionUnder.y >= 3.3) //if the ships goes out of the screen
            {
                SceneManager.LoadScene("Ranking");
            }
            else if (positionUnder.y < 3.3) //if the ship isn't out of the screen
            {
                positionUnder.y += (float)0.05;
                ship_under.transform.position = positionUnder;
            }
        }

        buttonE.onClick.AddListener(offPlay); //if you click the play button
        if (buttonE.transform.localScale == auxiliar)
        {
            if (pos_boss.z <= -7) //if the alien is near the screen
            {
                SceneManager.LoadScene("Ranking");
            }
            else                    //if the alien isn't near the screen
            {
                if (pos_boss.z > -7)
                    pos_boss.z -= (float)0.03;
                alien_boss.transform.position = pos_boss;
            }
        }
        buttonF.onClick.AddListener(exit);
    }
    public void offOver()
    {
        Button buttonC = GameObject.Find("Rankingover_b").GetComponent<Button>();
        buttonC.transform.localScale = new Vector3(0, 0, 0);
    }

    public void offUnder()
    {
        Button buttonD = GameObject.Find("Rankingunder_b").GetComponent<Button>();
        buttonD.transform.localScale = new Vector3(0, 0, 0);
    }

    public void offCredits()
    {
        Button buttonA = GameObject.Find("controls_b").GetComponent<Button>();
        Button buttonB = GameObject.Find("credits_b").GetComponent<Button>();
        Button buttonE = GameObject.Find("play_b").GetComponent<Button>();
        Button buttonF = GameObject.Find("exit_b").GetComponent<Button>();
        buttonA.transform.position = new Vector3(10000, 0, 0);
        buttonB.transform.localScale = new Vector3(0, 0, 0);
        buttonE.transform.position = new Vector3(10000, 0, 0);
        buttonF.transform.localScale = new Vector3(0, 0, 0);
    }

    public void offControls()
    {
        Button buttonA = GameObject.Find("controls_b").GetComponent<Button>();
        Button buttonB = GameObject.Find("credits_b").GetComponent<Button>();
        Button buttonE = GameObject.Find("play_b").GetComponent<Button>();
        Button buttonF = GameObject.Find("exit_b").GetComponent<Button>();
        buttonB.transform.position = new Vector3(10000, 0, 0);
        buttonA.transform.localScale = new Vector3(0, 0, 0);
        buttonE.transform.position = new Vector3(10000, 0, 0);
        buttonF.transform.localScale = new Vector3(0, 0, 0);
    }

    public void offPlay()
    {
        Button buttonA = GameObject.Find("controls_b").GetComponent<Button>();
        Button buttonB = GameObject.Find("credits_b").GetComponent<Button>();
        Button buttonE = GameObject.Find("play_b").GetComponent<Button>();
        buttonA.transform.position = new Vector3(10000, 0, 0);
        buttonB.transform.position = new Vector3(10000, 0, 0);
        buttonE.transform.localScale = new Vector3(0, 0, 0);
    }
    public void exit()
    {
        Application.Quit();
    }

}





