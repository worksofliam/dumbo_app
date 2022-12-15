**free

ctl-opt dftactgrp(*no);

dcl-pi P2204;
end-pi;

dcl-s theCharVar Char(52);

/copy 'qrpgleref/P852.rpgleinc'
/copy 'qrpgleref/P969.rpgleinc'
/copy 'qrpgleref/P1488.rpgleinc'

dcl-ds theTable extname('T644') qualified;
end-ds;

EXEC SQL SELECT * INTO :theTable FROM T644 LIMIT 1;

theCharVar = 'Hello from P2204';
dsply theCharVar;
P852();
P969();
P1488();
return;