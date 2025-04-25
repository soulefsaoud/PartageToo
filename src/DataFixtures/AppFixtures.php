<?php

namespace App\DataFixtures;

use App\Entity\Annonce;
use DateTimeImmutable;
use Doctrine\Bundle\FixturesBundle\Fixture;
use Doctrine\Persistence\ObjectManager;

use Faker\Factory;

class AppFixtures extends Fixture
{
       public function load(ObjectManager $manager): void
        {
            // Création d'une instance Faker avec la locale française
            $faker = Factory::create('fr_FR');

            // Types de logements et caractéristiques pour créer des titres réalistes
            $typeLogements = ['Appartement', 'Maison', 'Studio', 'Loft', 'T2', 'T3', 'T4'];
            $caracteristiques = ['lumineux', 'rénové', 'spacieux', 'moderne', 'calme', 'meublé'];
            $emplacements = ['centre-ville', 'proche gare', 'quartier résidentiel', 'proche commerces'];

            // Créer 40 exemples d'annonces
            for ($i = 0; $i < 40; $i++) {
                $annonce = new Annonce();

                // Générer un titre réaliste
                $typeLogement = $faker->randomElement($typeLogements);
                $caracteristique = $faker->randomElement($caracteristiques);
                $emplacement = $faker->randomElement($emplacements);
                $superficie = $faker->numberBetween(20, 150);

                $titre = "$typeLogement $caracteristique de $superficie m² $emplacement";
                $annonce->setTitle($titre);

                // Générer une description cohérente avec le titre
                $description = "Découvrez ce $typeLogement $caracteristique situé $emplacement. ";
                $description .= "D'une superficie de $superficie m², ce bien offre un cadre de vie agréable. ";

                if (in_array($typeLogement, ['T2', 'T3', 'T4', 'Appartement', 'Maison'])) {
                    $nbChambres = $faker->numberBetween(1, 3);
                    $description .= "Il dispose de $nbChambres chambre" . ($nbChambres > 1 ? 's' : '') . ". ";
                }

                $description .= $faker->paragraph(3);
                $annonce->setDescription($description);

                // Générer des dates de création variées
                if ($i < 7) {
                    // 35% des annonces dans le dernier mois
                    $dateTime = $faker->dateTimeBetween('-1 month', 'now');
                } elseif ($i < 14) {
                    // 35% dans les 6 derniers mois
                    $dateTime = $faker->dateTimeBetween('-6 months', '-1 month');
                } else {
                    // 30% dans les 2 dernières années
                    $dateTime = $faker->dateTimeBetween('-2 years', '-6 months');
                }

                $createdAt = DateTimeImmutable::createFromMutable($dateTime);
                $annonce->setCreatedAt($createdAt);

                // Date de mise à jour (entre la date de création et maintenant)
                $updatedAtDateTime = $faker->dateTimeBetween($dateTime, 'now');
                $updatedAt = DateTimeImmutable::createFromMutable($updatedAtDateTime);
                $annonce->setUpdatedAt($updatedAt);

                // 20% de chances que l'annonce soit supprimée
                if ($faker->boolean(20)) {
                    $deletedAtDateTime = $faker->dateTimeBetween($updatedAtDateTime, 'now');
                    $deletedAt = DateTimeImmutable::createFromMutable($deletedAtDateTime);
                    $annonce->setDeletedAt($deletedAt);
                }

                $manager->persist($annonce);
            }

            // Sauvegarder toutes les annonces dans la base de données
            $manager->flush();
        }
    }

