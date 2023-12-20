<?php

namespace App\Entity;

use App\Repository\RubriqueRepository;
use Doctrine\ORM\Mapping as ORM;

#[ORM\Entity(repositoryClass: RubriqueRepository::class)]
class Rubrique
{
    #[ORM\Id]
    #[ORM\GeneratedValue]
    #[ORM\Column]
    private ?int $id = null;

    #[ORM\Column(length: 255)]
    private ?string $nom_rubrique = null;

    #[ORM\Column(length: 255)]
    private ?string $img = null;

    public function getId(): ?int
    {
        return $this->id;
    }

    public function getNomRubrique(): ?string
    {
        return $this->nom_rubrique;
    }

    public function setNomRubrique(string $nom_rubrique): static
    {
        $this->nom_rubrique = $nom_rubrique;

        return $this;
    }

    public function getImg(): ?string
    {
        return $this->img;
    }

    public function setImg(string $img): static
    {
        $this->img = $img;

        return $this;
    }
}
