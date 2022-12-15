**free

ctl-opt dftactgrp(*no);

dcl-pi P2319;
end-pi;

dcl-s theCharVar Char(52);

/copy 'qrpgleref/P509.rpgleinc'
/copy 'qrpgleref/P1038.rpgleinc'
/copy 'qrpgleref/P95.rpgleinc'

dcl-ds theTable extname('T110') qualified;
end-ds;

EXEC SQL SELECT * INTO :theTable FROM T110 LIMIT 1;

theCharVar = 'Hello from P2319';
dsply theCharVar;
P509();
P1038();
P95();
return;