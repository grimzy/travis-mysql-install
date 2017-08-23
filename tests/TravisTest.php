<?php
use PHPUnit\Framework\TestCase;

final class TravisTest extends TestCase
{
    public function testAssertiveTest()
    {
        $this->assertTrue(! false);
    }
}