**free

ctl-opt dftactgrp(*no);

dcl-pi P1700;
end-pi;

dcl-s theCharVar Char(52);

/copy 'qrpgleref/P1284.rpgleinc'
/copy 'qrpgleref/P1540.rpgleinc'
/copy 'qrpgleref/P599.rpgleinc'

dcl-ds theTable extname('T282') qualified;
end-ds;

EXEC SQL SELECT * INTO :theTable FROM T282 LIMIT 1;

theCharVar = 'Hello from P1700';
dsply theCharVar;
P1284();
P1540();
P599();
return;