<?php

namespace App\Controller;

use Symfony\Bundle\FrameworkBundle\Controller\AbstractController;
use Symfony\Component\HttpFoundation\Response;
use Symfony\Component\Routing\Annotation\Route;

class AccueilController extends AbstractController
{
    #[Route('/', name: 'app_accueil')]
    public function index(): Response
    {
        return $this->render('accueil/index.html.twig', [
            'controller_name' => 'AccueilController',
        ]);
    }
    #[Route('/politique_de_confidentialite', name: 'app_politique_confidentialite')]
    public function politique_confidentialite(): Response
    {
        return $this->render('accueil/politiques_confidentialite.html.twig', [
            'controller_name' => 'AccueilController',
        ]);
    }

    #[Route('/mentions_legales', name: 'app_mentions_legales')]
    public function mentions_legales(): Response
    {
        return $this->render('accueil/mentions_legales.html.twig', [
            'controller_name' => 'AccueilController',
        ]);
    }

}
