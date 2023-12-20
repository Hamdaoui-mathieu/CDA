<?php

namespace App\Entity;

use App\Repository\FournisseurRepository;
use Doctrine\ORM\Mapping as ORM;

#[ORM\Entity(repositoryClass: FournisseurRepository::class)]
class Fournisseur
{
    #[ORM\Id]
    #[ORM\GeneratedValue]
    #[ORM\Column]
    private ?int $id = null;

    #[ORM\Column(length: 255)]
    private ?string $four_nom = null;

    #[ORM\Column(length: 255)]
    private ?string $four_adresse = null;

    #[ORM\Column(length: 255)]
    private ?string $four_mail = null;

    #[ORM\Column(length: 255)]
    private ?string $four_ent = null;

    #[ORM\Column]
    private ?int $four_tel = null;

    #[ORM\Column(length: 255)]
    private ?string $four_prenom = null;

    #[ORM\Column(length: 255)]
    private ?string $four_ref = null;

    public function getId(): ?int
    {
        return $this->id;
    }

    public function getFourNom(): ?string
    {
        return $this->four_nom;
    }

    public function setFourNom(string $four_nom): static
    {
        $this->four_nom = $four_nom;

        return $this;
    }

    public function getFourAdresse(): ?string
    {
        return $this->four_adresse;
    }

    public function setFourAdresse(string $four_adresse): static
    {
        $this->four_adresse = $four_adresse;

        return $this;
    }

    public function getFourMail(): ?string
    {
        return $this->four_mail;
    }

    public function setFourMail(string $four_mail): static
    {
        $this->four_mail = $four_mail;

        return $this;
    }

    public function getFourEnt(): ?string
    {
        return $this->four_ent;
    }

    public function setFourEnt(string $four_ent): static
    {
        $this->four_ent = $four_ent;

        return $this;
    }

    public function getFourTel(): ?int
    {
        return $this->four_tel;
    }

    public function setFourTel(int $four_tel): static
    {
        $this->four_tel = $four_tel;

        return $this;
    }

    public function getFourPrenom(): ?string
    {
        return $this->four_prenom;
    }

    public function setFourPrenom(string $four_prenom): static
    {
        $this->four_prenom = $four_prenom;

        return $this;
    }

    public function getFourRef(): ?string
    {
        return $this->four_ref;
    }

    public function setFourRef(string $four_ref): static
    {
        $this->four_ref = $four_ref;

        return $this;
    }
}
