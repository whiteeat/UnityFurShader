using System.Collections;
using System.Collections.Generic;
using UnityEngine;

public class SetTransparencySortMode : MonoBehaviour
{
    public TransparencySortMode transparencySortMode;

    // Start is called before the first frame update
    void Start()
    {
        Camera camera  = GetComponent<Camera>();
        camera.transparencySortMode = transparencySortMode;
    }
}
