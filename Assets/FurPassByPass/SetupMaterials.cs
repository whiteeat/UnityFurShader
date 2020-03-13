using System.Collections;
using System.Collections.Generic;
using UnityEngine;

public class SetupMaterials : MonoBehaviour
{
    public int numPasses = 20;

    void Start()
    {
        Renderer rend = GetComponent<Renderer>();

        float step = 1.0f / numPasses;
        float currentStep = 0.0f;
        print("Materials " + Resources.FindObjectsOfTypeAll(typeof(Material)).Length);
        Material[] oldMats = rend.sharedMaterials;

        Material[] newMaterials = new Material[numPasses + 1];
        newMaterials[0] = oldMats[0];

        for (int i = 1; i != numPasses + 1; ++i)
        {
            currentStep += step;
            newMaterials[i] = new Material(oldMats[1]);
            newMaterials[i].SetFloat("_FurStep", currentStep);
            newMaterials[i].renderQueue += i;
        }
        rend.materials = newMaterials;
    }
}
