package com.mercadinho.model;


@Entity
@Table(name = "categorias")
public class Categoria {

    @Id
    @GeneratedValue(strategy = GenerationType.IDENTITY)
    private Long id;

    @NotBlank(message = "O nome da categoria eh obrigatorio")
    @Size(max = 80, message = "O nome deve ter no maximo 80 caracteres")
    @Column(nullable = false, length = 80)
    private String nome;

    @Size(max = 200, message = "A descricao deve ter no mximo 200 caracteres")
    @Column(length = 200)
    private String descricao;

    public Long getId() { return id; }
    public void setId(Long id) { this.id = id; }

    public String getNome() { return nome; }
    public void setNome(String nome) { this.nome = nome; }

    public String getDescricao() { return descricao; }
    public void setDescricao(String descricao) { this.descricao = descricao; }
}
