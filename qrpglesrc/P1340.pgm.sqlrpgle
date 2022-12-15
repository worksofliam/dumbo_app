**free

ctl-opt dftactgrp(*no);

dcl-pi P1340;
end-pi;

dcl-s theCharVar Char(52);

/copy 'qrpgleref/P673.rpgleinc'
/copy 'qrpgleref/P259.rpgleinc'
/copy 'qrpgleref/P756.rpgleinc'

dcl-ds theTable extname('T332') qualified;
end-ds;

EXEC SQL SELECT * INTO :theTable FROM T332 LIMIT 1;

theCharVar = 'Hello from P1340';
dsply theCharVar;
P673();
P259();
P756();
return;