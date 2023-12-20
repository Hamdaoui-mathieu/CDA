<?php

namespace App\Entity;

use App\Repository\CommandeRepository;
use Doctrine\Common\Collections\ArrayCollection;
use Doctrine\Common\Collections\Collection;
use Doctrine\DBAL\Types\Types;
use Doctrine\ORM\Mapping as ORM;

#[ORM\Entity(repositoryClass: CommandeRepository::class)]
class Commande
{
    #[ORM\Id]
    #[ORM\GeneratedValue]
    #[ORM\Column]
    private ?int $id = null;

    #[ORM\Column]
    private ?int $qte = null;

    #[ORM\Column(type: Types::DATE_MUTABLE)]
    private ?\DateTimeInterface $date_com = null;

    #[ORM\Column(length: 255)]
    private ?string $cli_nom = null;

    #[ORM\Column(length: 255)]
    private ?string $cli_prenom = null;

    #[ORM\Column(length: 255)]
    private ?string $cli_adresse = null;

    #[ORM\Column(type: Types::DECIMAL, precision: 10, scale: '0')]
    private ?string $total = null;

    #[ORM\ManyToOne(inversedBy: 'commande')]
    private ?Utilisateur $utilisateur = null;

    #[ORM\OneToMany(mappedBy: 'commande', targetEntity: Facture::class)]
    private Collection $facture;

    public function __construct()
    {
        $this->facture = new ArrayCollection();
    }

    public function getId(): ?int
    {
        return $this->id;
    }

    public function getQte(): ?int
    {
        return $this->qte;
    }

    public function setQte(int $qte): static
    {
        $this->qte = $qte;

        return $this;
    }

    public function getDateCom(): ?\DateTimeInterface
    {
        return $this->date_com;
    }

    public function setDateCom(\DateTimeInterface $date_com): static
    {
        $this->date_com = $date_com;

        return $this;
    }

    public function getCliNom(): ?string
    {
        return $this->cli_nom;
    }

    public function setCliNom(string $cli_nom): static
    {
        $this->cli_nom = $cli_nom;

        return $this;
    }

    public function getCliPrenom(): ?string
    {
        return $this->cli_prenom;
    }

    public function setCliPrenom(string $cli_prenom): static
    {
        $this->cli_prenom = $cli_prenom;

        return $this;
    }

    public function getCliAdresse(): ?string
    {
        return $this->cli_adresse;
    }

    public function setCliAdresse(string $cli_adresse): static
    {
        $this->cli_adresse = $cli_adresse;

        return $this;
    }

    public function getTotal(): ?string
    {
        return $this->total;
    }

    public function setTotal(string $total): static
    {
        $this->total = $total;

        return $this;
    }

    public function getUtilisateur(): ?Utilisateur
    {
        return $this->utilisateur;
    }

    public function setUtilisateur(?Utilisateur $utilisateur): static
    {
        $this->utilisateur = $utilisateur;

        return $this;
    }

    /**
     * @return Collection<int, Facture>
     */
    public function getFacture(): Collection
    {
        return $this->facture;
    }

    public function addFacture(Facture $facture): static
    {
        if (!$this->facture->contains($facture)) {
            $this->facture->add($facture);
            $facture->setCommande($this);
        }

        return $this;
    }

    public function removeFacture(Facture $facture): static
    {
        if ($this->facture->removeElement($facture)) {
            // set the owning side to null (unless already changed)
            if ($facture->getCommande() === $this) {
                $facture->setCommande(null);
            }
        }

        return $this;
    }
}
