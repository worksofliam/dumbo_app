**free

ctl-opt dftactgrp(*no);

dcl-pi P3630;
end-pi;

dcl-s theCharVar Char(52);

/copy 'qrpgleref/P3610.rpgleinc'
/copy 'qrpgleref/P1820.rpgleinc'
/copy 'qrpgleref/P2158.rpgleinc'

dcl-ds theTable extname('T1754') qualified;
end-ds;

EXEC SQL SELECT * INTO :theTable FROM T1754 LIMIT 1;

theCharVar = 'Hello from P3630';
dsply theCharVar;
P3610();
P1820();
P2158();
return;