<?php 
namespace App\Tests\Controller;

use Symfony\Bundle\FrameworkBundle\Test\WebTestCase;
use Symfony\Component\HttpFoundation\Response;

class AuthControllerTest extends WebTestCase
{
    public function testPageCharge(){
        $client = static::createClient();
        $crawler = $client->request('GET', '/login');


        $this->assertResponseIsSuccessful();
        $this->assertResponseStatusCodeSame(expectedCode:Response::HTTP_OK);
    }
    public function testLoginForm()
    {
        $client = static::createClient();
        $crawler = $client->request('GET', '/login');
        $this->assertSelectorTextContains('form', '');
        $info = $crawler->extract(['_text', 'input']);
        return $info;
        // if ($crawler->filter('input[name="nom"]').count() > 0) {
        //     return true;
        // }
    }
    public function tesRedirection(){
        $client = static::createClient();
        $crawler = $client->request('GET', '/login');
        $this->assertResponseRedirects(expectedLocation:'app_articles_index');
        
    }
  
}