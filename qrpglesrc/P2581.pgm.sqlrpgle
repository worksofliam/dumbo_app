**free

ctl-opt dftactgrp(*no);

dcl-pi P2581;
end-pi;

dcl-s theCharVar Char(52);

/copy 'qrpgleref/P1606.rpgleinc'
/copy 'qrpgleref/P2046.rpgleinc'
/copy 'qrpgleref/P2385.rpgleinc'

dcl-ds theTable extname('T1436') qualified;
end-ds;

EXEC SQL SELECT * INTO :theTable FROM T1436 LIMIT 1;

theCharVar = 'Hello from P2581';
dsply theCharVar;
P1606();
P2046();
P2385();
return;