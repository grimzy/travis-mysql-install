<?php
use PHPUnit\Framework\TestCase;

final class TravisTest extends TestCase
{
    public function testAssertiveTest()
    {
        $this->assertTrue(! false);
    }

    public function testConnection()
    {
        $pdo = new PDO('mysql:dbname=test_db;host=172.17.0.2', 'root', '');
        $this->assertInstanceOf(PDO::class, $pdo);
    }
}