**free

ctl-opt dftactgrp(*no);

dcl-pi P2714;
end-pi;

dcl-s theCharVar Char(52);

/copy 'qrpgleref/P2515.rpgleinc'
/copy 'qrpgleref/P1636.rpgleinc'
/copy 'qrpgleref/P322.rpgleinc'

dcl-ds theTable extname('T1140') qualified;
end-ds;

EXEC SQL SELECT * INTO :theTable FROM T1140 LIMIT 1;

theCharVar = 'Hello from P2714';
dsply theCharVar;
P2515();
P1636();
P322();
return;