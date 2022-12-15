**free

ctl-opt dftactgrp(*no);

dcl-pi P2321;
end-pi;

dcl-s theCharVar Char(52);

/copy 'qrpgleref/P1543.rpgleinc'
/copy 'qrpgleref/P759.rpgleinc'
/copy 'qrpgleref/P802.rpgleinc'

dcl-ds theTable extname('T826') qualified;
end-ds;

EXEC SQL SELECT * INTO :theTable FROM T826 LIMIT 1;

theCharVar = 'Hello from P2321';
dsply theCharVar;
P1543();
P759();
P802();
return;