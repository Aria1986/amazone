<?php

namespace App\Controller;

use App\Entity\Trader;
use App\Form\TraderType;
use App\Repository\CategoriesRepository;
use App\Repository\TraderRepository;
use Doctrine\ORM\EntityManagerInterface;
use Symfony\Bundle\FrameworkBundle\Controller\AbstractController;
use Symfony\Component\HttpFoundation\Request;
use Symfony\Component\HttpFoundation\Response;
use Symfony\Component\Routing\Attribute\Route;
use Symfony\Component\Security\Http\Attribute\IsGranted;

#[Route('/trader')]
// #[IsGranted('ROLE_ADMIN')]
class TraderController extends AbstractController
{
    #[Route('/', name: 'app_trader_index', methods: ['GET'])]
    public function index(TraderRepository $traderRepository): Response
    {
        return $this->render('trader/index.html.twig', [
            'traders' => $traderRepository->findAll(),
        ]);
    }

    #[Route('/new', name: 'app_trader_new', methods: ['GET', 'POST'])]
    public function new(Request $request, EntityManagerInterface $entityManager): Response
    {
        $trader = new Trader();
        $form = $this->createForm(TraderType::class, $trader);
        $form->handleRequest($request);

        if ($form->isSubmitted() && $form->isValid()) {
            $entityManager->persist($trader);
            $entityManager->flush();

            return $this->redirectToRoute('app_trader_index', [], Response::HTTP_SEE_OTHER);
        }

        return $this->render('trader/new.html.twig', [
            'trader' => $trader,
            'form' => $form,
        ]);
    }

    #[Route('/{id}', name: 'app_trader_show', methods: ['GET'])]
    public function show(Trader $trader): Response
    {
        return $this->render('trader/show.html.twig', [
            'trader' => $trader,
        ]);
    }

    #[Route('/{id}/edit', name: 'app_trader_edit', methods: ['GET', 'POST'])]
    public function edit(Request $request, Trader $trader, EntityManagerInterface $entityManager): Response
    {
        $form = $this->createForm(TraderType::class, $trader);
        $form->handleRequest($request);

        if ($form->isSubmitted() && $form->isValid()) {
            $entityManager->flush();

            return $this->redirectToRoute('app_trader_index', [], Response::HTTP_SEE_OTHER);
        }

        return $this->render('trader/edit.html.twig', [
            'trader' => $trader,
            'form' => $form,
        ]);
    }

    #[Route('/{id}', name: 'app_trader_delete', methods: ['POST'])]
    public function delete(Request $request, Trader $trader, EntityManagerInterface $entityManager): Response
    {
        if ($this->isCsrfTokenValid('delete'.$trader->getId(), $request->getPayload()->getString('_token'))) {
            $entityManager->remove($trader);
            $entityManager->flush();
        }

        return $this->redirectToRoute('app_trader_index', [], Response::HTTP_SEE_OTHER);
    }
    #[Route('/{id}/articles', name: 'app_trader_articles', methods: ['GET'])]
    public function showTraderArticles(Trader $trader, CategoriesRepository $categoriesRepository ): Response
    {
        return $this->render('trader/showArticles.html.twig', [
            'trader' => $trader,
            'categories' => $categoriesRepository->findAllCategories()
        ]);
    }
}
