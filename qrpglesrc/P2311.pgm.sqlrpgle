**free

ctl-opt dftactgrp(*no);

dcl-pi P2311;
end-pi;

dcl-s theCharVar Char(52);

/copy 'qrpgleref/P920.rpgleinc'
/copy 'qrpgleref/P148.rpgleinc'
/copy 'qrpgleref/P1317.rpgleinc'

dcl-ds theTable extname('T333') qualified;
end-ds;

EXEC SQL SELECT * INTO :theTable FROM T333 LIMIT 1;

theCharVar = 'Hello from P2311';
dsply theCharVar;
P920();
P148();
P1317();
return;