**free

ctl-opt dftactgrp(*no);

dcl-pi P906;
end-pi;

dcl-s theCharVar Char(52);

/copy 'qrpgleref/P259.rpgleinc'
/copy 'qrpgleref/P41.rpgleinc'
/copy 'qrpgleref/P818.rpgleinc'

dcl-ds theTable extname('T477') qualified;
end-ds;

EXEC SQL SELECT * INTO :theTable FROM T477 LIMIT 1;

theCharVar = 'Hello from P906';
dsply theCharVar;
P259();
P41();
P818();
return;