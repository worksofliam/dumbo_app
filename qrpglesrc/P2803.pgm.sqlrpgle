**free

ctl-opt dftactgrp(*no);

dcl-pi P2803;
end-pi;

dcl-s theCharVar Char(52);

/copy 'qrpgleref/P2568.rpgleinc'
/copy 'qrpgleref/P1999.rpgleinc'
/copy 'qrpgleref/P2419.rpgleinc'

dcl-ds theTable extname('T1363') qualified;
end-ds;

EXEC SQL SELECT * INTO :theTable FROM T1363 LIMIT 1;

theCharVar = 'Hello from P2803';
dsply theCharVar;
P2568();
P1999();
P2419();
return;