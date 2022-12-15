**free

ctl-opt dftactgrp(*no);

dcl-pi P1276;
end-pi;

dcl-s theCharVar Char(52);

/copy 'qrpgleref/P254.rpgleinc'
/copy 'qrpgleref/P625.rpgleinc'
/copy 'qrpgleref/P71.rpgleinc'

dcl-ds theTable extname('T358') qualified;
end-ds;

EXEC SQL SELECT * INTO :theTable FROM T358 LIMIT 1;

theCharVar = 'Hello from P1276';
dsply theCharVar;
P254();
P625();
P71();
return;