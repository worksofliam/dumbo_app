**free

ctl-opt dftactgrp(*no);

dcl-pi P2385;
end-pi;

dcl-s theCharVar Char(52);

/copy 'qrpgleref/P1522.rpgleinc'
/copy 'qrpgleref/P399.rpgleinc'
/copy 'qrpgleref/P148.rpgleinc'

dcl-ds theTable extname('T387') qualified;
end-ds;

EXEC SQL SELECT * INTO :theTable FROM T387 LIMIT 1;

theCharVar = 'Hello from P2385';
dsply theCharVar;
P1522();
P399();
P148();
return;