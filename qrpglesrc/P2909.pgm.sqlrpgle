**free

ctl-opt dftactgrp(*no);

dcl-pi P2909;
end-pi;

dcl-s theCharVar Char(52);

/copy 'qrpgleref/P348.rpgleinc'
/copy 'qrpgleref/P353.rpgleinc'
/copy 'qrpgleref/P2804.rpgleinc'

dcl-ds theTable extname('T1204') qualified;
end-ds;

EXEC SQL SELECT * INTO :theTable FROM T1204 LIMIT 1;

theCharVar = 'Hello from P2909';
dsply theCharVar;
P348();
P353();
P2804();
return;