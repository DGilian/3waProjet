<?php

namespace Src\Controller;

use Symfony\Component\HttpFoundation\Request;

class PanierController
{

    public function update(Request $request)
    {
        $success = false;
        // decode POST content
        $cartContent = json_decode($request->getContent());
        // check format, should be an array
        if (is_array($cartContent)) {
            setcookie("cart", json_encode($cartContent), time() + 3600);  /* expire dans 1 heure */
            $success = true;
        }

        return json_encode($success);
    }

}
