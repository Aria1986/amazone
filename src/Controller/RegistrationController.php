<?php

namespace App\Controller;

use App\Entity\User;
use App\Form\RegistrationFormType;
use Doctrine\ORM\EntityManagerInterface;
use Symfony\Bundle\FrameworkBundle\Controller\AbstractController;
use Symfony\Component\HttpFoundation\Request;
use Symfony\Component\HttpFoundation\Response;
use Symfony\Component\Routing\Annotation\Route;
use Symfony\Component\PasswordHasher\Hasher\UserPasswordHasherInterface;

class RegistrationController extends AbstractController
{
    #[Route('/register', name: 'app_register')]
    public function register(Request $request, UserPasswordHasherInterface $passwordHasher, EntityManagerInterface $entityManager): Response
    {
        $user = new User();
        $form = $this->createForm(RegistrationFormType::class, $user);
        $form->handleRequest($request);

        if ($form->isSubmitted() && $form->isValid()) {
            $user->setPassword(
                $passwordHasher->hashPassword(
                    $user,
                    $form->get('plainPassword')->getData()
                )
            );

            $selectedRole = $form->get('roles')->getData();
            if ($selectedRole === 'ROLE_TRADER') {
                $user->setRoles(['ROLE_TRADER']);
                $entityManager->persist($user);
                $entityManager->flush();

                // Redirect to create a new trader
                return $this->redirectToRoute('app_trader_new', ['userId' => $user->getId()]);
            } else {
                // Default role for visitors
                $user->setRoles(['ROLE_VISITOR']);
                $entityManager->persist($user);
                $entityManager->flush();

                // Redirect to create a new visitor
                return $this->redirectToRoute('app_visitor_new', ['userId' => $user->getId()]);
            }

            return $this->redirectToRoute('app_articles_index');
        }

        return $this->render('registration/register.html.twig', [
            'registrationForm' => $form->createView(),
        ]);
    }
}
