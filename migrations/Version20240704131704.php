<?php

declare(strict_types=1);

namespace DoctrineMigrations;

use Doctrine\DBAL\Schema\Schema;
use Doctrine\Migrations\AbstractMigration;

/**
 * Auto-generated Migration: Please modify to your needs!
 */
final class Version20240704131704 extends AbstractMigration
{
    public function getDescription(): string
    {
        return '';
    }

    public function up(Schema $schema): void
    {
        // this up() migration is auto-generated, please modify it to your needs
        $this->addSql('CREATE TABLE articles (id INT AUTO_INCREMENT NOT NULL, name VARCHAR(255) NOT NULL, description VARCHAR(255) NOT NULL, price INT NOT NULL, image VARCHAR(255) DEFAULT NULL, stocks INT NOT NULL, trader_id INT DEFAULT NULL, category_id INT NOT NULL, INDEX IDX_BFDD31681273968F (trader_id), INDEX IDX_BFDD316812469DE2 (category_id), PRIMARY KEY(id)) DEFAULT CHARACTER SET utf8mb4');
        $this->addSql('CREATE TABLE categories (id INT AUTO_INCREMENT NOT NULL, name VARCHAR(255) NOT NULL, PRIMARY KEY(id)) DEFAULT CHARACTER SET utf8mb4');
        $this->addSql('CREATE TABLE order_invoice (id INT AUTO_INCREMENT NOT NULL, price DOUBLE PRECISION NOT NULL, date DATE NOT NULL, user_id INT NOT NULL, orders_id INT NOT NULL, INDEX IDX_661FBE0FA76ED395 (user_id), UNIQUE INDEX UNIQ_661FBE0FCFFE9AD6 (orders_id), PRIMARY KEY(id)) DEFAULT CHARACTER SET utf8mb4');
        $this->addSql('CREATE TABLE orders (id INT AUTO_INCREMENT NOT NULL, title VARCHAR(255) NOT NULL, status VARCHAR(55) NOT NULL, date DATE NOT NULL, user_id INT NOT NULL, INDEX IDX_E52FFDEEA76ED395 (user_id), PRIMARY KEY(id)) DEFAULT CHARACTER SET utf8mb4');
        $this->addSql('CREATE TABLE orders_articles (orders_id INT NOT NULL, articles_id INT NOT NULL, INDEX IDX_78FBECAECFFE9AD6 (orders_id), INDEX IDX_78FBECAE1EBAF6CC (articles_id), PRIMARY KEY(orders_id, articles_id)) DEFAULT CHARACTER SET utf8mb4');
        $this->addSql('CREATE TABLE trader (id INT AUTO_INCREMENT NOT NULL, name VARCHAR(255) NOT NULL, lastname VARCHAR(255) NOT NULL, phone VARCHAR(255) NOT NULL, password VARCHAR(255) NOT NULL, PRIMARY KEY(id)) DEFAULT CHARACTER SET utf8mb4');
        $this->addSql('CREATE TABLE user (id INT AUTO_INCREMENT NOT NULL, email VARCHAR(180) NOT NULL, roles JSON NOT NULL, password VARCHAR(255) NOT NULL, trader_id INT NOT NULL, visitor_id INT NOT NULL, UNIQUE INDEX UNIQ_8D93D6491273968F (trader_id), UNIQUE INDEX UNIQ_8D93D64970BEE6D (visitor_id), UNIQUE INDEX UNIQ_IDENTIFIER_EMAIL (email), PRIMARY KEY(id)) DEFAULT CHARACTER SET utf8mb4');
        $this->addSql('CREATE TABLE visitor (id INT AUTO_INCREMENT NOT NULL, name VARCHAR(255) NOT NULL, adress VARCHAR(255) DEFAULT NULL, phone INT DEFAULT NULL, PRIMARY KEY(id)) DEFAULT CHARACTER SET utf8mb4');
        $this->addSql('ALTER TABLE articles ADD CONSTRAINT FK_BFDD31681273968F FOREIGN KEY (trader_id) REFERENCES trader (id)');
        $this->addSql('ALTER TABLE articles ADD CONSTRAINT FK_BFDD316812469DE2 FOREIGN KEY (category_id) REFERENCES categories (id)');
        $this->addSql('ALTER TABLE order_invoice ADD CONSTRAINT FK_661FBE0FA76ED395 FOREIGN KEY (user_id) REFERENCES user (id)');
        $this->addSql('ALTER TABLE order_invoice ADD CONSTRAINT FK_661FBE0FCFFE9AD6 FOREIGN KEY (orders_id) REFERENCES orders (id)');
        $this->addSql('ALTER TABLE orders ADD CONSTRAINT FK_E52FFDEEA76ED395 FOREIGN KEY (user_id) REFERENCES user (id)');
        $this->addSql('ALTER TABLE orders_articles ADD CONSTRAINT FK_78FBECAECFFE9AD6 FOREIGN KEY (orders_id) REFERENCES orders (id) ON DELETE CASCADE');
        $this->addSql('ALTER TABLE orders_articles ADD CONSTRAINT FK_78FBECAE1EBAF6CC FOREIGN KEY (articles_id) REFERENCES articles (id) ON DELETE CASCADE');
        $this->addSql('ALTER TABLE user ADD CONSTRAINT FK_8D93D6491273968F FOREIGN KEY (trader_id) REFERENCES trader (id)');
        $this->addSql('ALTER TABLE user ADD CONSTRAINT FK_8D93D64970BEE6D FOREIGN KEY (visitor_id) REFERENCES visitor (id)');
    }

    public function down(Schema $schema): void
    {
        // this down() migration is auto-generated, please modify it to your needs
        $this->addSql('ALTER TABLE articles DROP FOREIGN KEY FK_BFDD31681273968F');
        $this->addSql('ALTER TABLE articles DROP FOREIGN KEY FK_BFDD316812469DE2');
        $this->addSql('ALTER TABLE order_invoice DROP FOREIGN KEY FK_661FBE0FA76ED395');
        $this->addSql('ALTER TABLE order_invoice DROP FOREIGN KEY FK_661FBE0FCFFE9AD6');
        $this->addSql('ALTER TABLE orders DROP FOREIGN KEY FK_E52FFDEEA76ED395');
        $this->addSql('ALTER TABLE orders_articles DROP FOREIGN KEY FK_78FBECAECFFE9AD6');
        $this->addSql('ALTER TABLE orders_articles DROP FOREIGN KEY FK_78FBECAE1EBAF6CC');
        $this->addSql('ALTER TABLE user DROP FOREIGN KEY FK_8D93D6491273968F');
        $this->addSql('ALTER TABLE user DROP FOREIGN KEY FK_8D93D64970BEE6D');
        $this->addSql('DROP TABLE articles');
        $this->addSql('DROP TABLE categories');
        $this->addSql('DROP TABLE order_invoice');
        $this->addSql('DROP TABLE orders');
        $this->addSql('DROP TABLE orders_articles');
        $this->addSql('DROP TABLE trader');
        $this->addSql('DROP TABLE user');
        $this->addSql('DROP TABLE visitor');
    }
}
