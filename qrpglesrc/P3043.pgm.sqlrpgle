**free

ctl-opt dftactgrp(*no);

dcl-pi P3043;
end-pi;

dcl-s theCharVar Char(52);

/copy 'qrpgleref/P2571.rpgleinc'
/copy 'qrpgleref/P1836.rpgleinc'
/copy 'qrpgleref/P2333.rpgleinc'

dcl-ds theTable extname('T406') qualified;
end-ds;

EXEC SQL SELECT * INTO :theTable FROM T406 LIMIT 1;

theCharVar = 'Hello from P3043';
dsply theCharVar;
P2571();
P1836();
P2333();
return;