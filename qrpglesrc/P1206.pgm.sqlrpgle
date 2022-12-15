**free

ctl-opt dftactgrp(*no);

dcl-pi P1206;
end-pi;

dcl-s theCharVar Char(52);

/copy 'qrpgleref/P1194.rpgleinc'
/copy 'qrpgleref/P818.rpgleinc'
/copy 'qrpgleref/P247.rpgleinc'

dcl-ds theTable extname('T201') qualified;
end-ds;

EXEC SQL SELECT * INTO :theTable FROM T201 LIMIT 1;

theCharVar = 'Hello from P1206';
dsply theCharVar;
P1194();
P818();
P247();
return;