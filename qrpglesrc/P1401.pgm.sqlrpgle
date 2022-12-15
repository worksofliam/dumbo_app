**free

ctl-opt dftactgrp(*no);

dcl-pi P1401;
end-pi;

dcl-s theCharVar Char(52);

/copy 'qrpgleref/P1026.rpgleinc'
/copy 'qrpgleref/P1199.rpgleinc'
/copy 'qrpgleref/P1391.rpgleinc'

dcl-ds theTable extname('T90') qualified;
end-ds;

EXEC SQL SELECT * INTO :theTable FROM T90 LIMIT 1;

theCharVar = 'Hello from P1401';
dsply theCharVar;
P1026();
P1199();
P1391();
return;