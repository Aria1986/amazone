<?php 
namespace App\Tests\Controller;

use App\Entity\Trader as EntityTrader;
use Symfony\Bundle\FrameworkBundle\Test\WebTestCase;
use App\Controller\TraderController;
use PHPUnit\Framework\TestCase;
use App\Repository\TraderRepository;
use App\Entity\Trader;
use Symfony\Component\DependencyInjection\ContainerInterface;
use Symfony\Component\HttpFoundation\Response;

class TraderControllerTest extends WebTestCase
{
    // function testGetTraders(){
    //     $traderRepositoryMock = $this->createMock(TraderRepository::class);
    //     $traderRepositoryMock ->method('findAll')
    //                 ->willReturn([
    //                     new Trader('name1', 'lastname1','phone1'),
    //                     new Trader('name2', 'lastname2','phone2'),
    //                     new Trader('name3', 'lastname3','phone3')
    //                 ]);
    //     $containerMock = $this->createMock(ContainerInterface::class);
    //     $traderController = new TraderController($containerMock); // Inject mock container (if needed)
    //     $traderController->setContainer($containerMock); // Set container (if needed)

    //     $this->assertEquals([
    //         new Trader('name1', 'lastname1','phone1'),
    //         new Trader('name2', 'lastname2','phone2'),
    //         new Trader('name3', 'lastname3','phone3')
    //     ],$traderController->index( $traderRepositoryMock));         
    // } 
    function testrenderIndexTraders(){
        $client = static::createClient();
        $client->request('GET', '/trader');
        $this->assertResponseIsSuccessful();
        $this->assertResponseStatusCodeSame(expectedCode:Response::HTTP_OK);
        $this->assertResponseRedirects(expectedLocation: 'trader/');
    }
    
}