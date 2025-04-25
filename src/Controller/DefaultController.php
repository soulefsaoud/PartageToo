<?php

namespace App\Controller;

use App\Repository\AnnonceRepository;
use Symfony\Bundle\FrameworkBundle\Controller\AbstractController;
use Symfony\Component\HttpFoundation\Response;
use Symfony\Component\Routing\Attribute\Route;

class DefaultController extends AbstractController
{

    #[Route('/', name: 'default_home', methods: ['GET'])]
    public function home(AnnonceRepository $annonceRepository): Response
    {
        $annonces = $annonceRepository->findBy([], ['createdAt' => 'DESC']);

        return $this->render('default/home.html.twig', [
            'annonces' => $annonces,
        ]);
    }
}