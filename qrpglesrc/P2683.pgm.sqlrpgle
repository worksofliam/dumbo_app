**free

ctl-opt dftactgrp(*no);

dcl-pi P2683;
end-pi;

dcl-s theCharVar Char(52);

/copy 'qrpgleref/P1720.rpgleinc'
/copy 'qrpgleref/P1820.rpgleinc'
/copy 'qrpgleref/P2181.rpgleinc'

dcl-ds theTable extname('T1016') qualified;
end-ds;

EXEC SQL SELECT * INTO :theTable FROM T1016 LIMIT 1;

theCharVar = 'Hello from P2683';
dsply theCharVar;
P1720();
P1820();
P2181();
return;