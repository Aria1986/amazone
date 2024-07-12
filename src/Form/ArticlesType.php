<?php

namespace App\Form;

use App\Entity\Articles;
use App\Entity\Categories;
use App\Entity\Orders;
use App\Entity\Trader;
use Symfony\Bridge\Doctrine\Form\Type\EntityType;
use Symfony\Component\Form\AbstractType;
use Symfony\Component\Form\FormBuilderInterface;
use Symfony\Component\OptionsResolver\OptionsResolver;

class ArticlesType extends AbstractType
{
    public function buildForm(FormBuilderInterface $builder, array $options): void
    {
        $builder
            ->add('name')
            ->add('description')
            ->add('price')
            ->add('image')
            ->add('stocks')
            ->add('trader', EntityType::class, [
                'class' => Trader::class,
                'choice_label' => 'id',
            ])
            ->add('category', EntityType::class, [
                'class' => Categories::class,
                'choice_label' => 'id',
            ])
            ->add('orders', EntityType::class, [
                'class' => Orders::class,
                'choice_label' => 'id',
                'multiple' => true,
            ])
        ;
    }

    public function configureOptions(OptionsResolver $resolver): void
    {
        $resolver->setDefaults([
            'data_class' => Articles::class,
        ]);
    }
}
