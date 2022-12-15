**free

ctl-opt dftactgrp(*no);

dcl-pi P2468;
end-pi;

dcl-s theCharVar Char(52);

/copy 'qrpgleref/P1285.rpgleinc'
/copy 'qrpgleref/P1404.rpgleinc'
/copy 'qrpgleref/P930.rpgleinc'

dcl-ds theTable extname('T578') qualified;
end-ds;

EXEC SQL SELECT * INTO :theTable FROM T578 LIMIT 1;

theCharVar = 'Hello from P2468';
dsply theCharVar;
P1285();
P1404();
P930();
return;