<?php

namespace App\DataFixtures;

use App\Entity\Annonce;
use Doctrine\Bundle\FixturesBundle\Fixture;
use Doctrine\Persistence\ObjectManager;

use Faker\Factory;

class AppFixtures extends Fixture
{
    public function load(ObjectManager $manager): void
    {
        $faker = Factory::create('fr_FR'); // Utiliser la locale française

        // Créer 10 exemples d'annonces
        for ($i = 0; $i < 10; $i++) {
            $annonce = new Annonce();
            $annonce->setTitle($faker->sentence(3)) // Générer un titre aléatoire
            ->setDescription($faker->paragraph(3)) // Générer une description aléatoire
            ->setCreatedAt(new \DateTimeImmutable()) // Définir la date de création actuelle
            ->setUpdatedAt(new \DateTimeImmutable()); // Définir la date de mise à jour actuelle

            // Générer une date de suppression aléatoire (optionnelle)
            if ($faker->boolean(20)) { // 20% de chances que l'annonce soit supprimée
                $annonce->setDeletedAt(new \DateTimeImmutable('-' . $faker->numberBetween(1, 30) . ' days'));
            }

            $manager->persist($annonce);
            // Sauvegarder les annonces dans la base de données
            $manager->flush();
        }

    }
}
