<?php


declare (strict_types=1);

namespace App\Controller;

class ErroController extends AbstractController
{
  public function notfoundAction():void
  {
     parent:: render ('error/notFound');

  }

}