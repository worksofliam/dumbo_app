**free

ctl-opt dftactgrp(*no);

dcl-pi P3632;
end-pi;

dcl-s theCharVar Char(52);

/copy 'qrpgleref/P1757.rpgleinc'
/copy 'qrpgleref/P3557.rpgleinc'
/copy 'qrpgleref/P3298.rpgleinc'

dcl-ds theTable extname('T151') qualified;
end-ds;

EXEC SQL SELECT * INTO :theTable FROM T151 LIMIT 1;

theCharVar = 'Hello from P3632';
dsply theCharVar;
P1757();
P3557();
P3298();
return;