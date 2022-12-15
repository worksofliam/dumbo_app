**free

ctl-opt dftactgrp(*no);

dcl-pi P4107;
end-pi;

dcl-s theCharVar Char(52);

/copy 'qrpgleref/P711.rpgleinc'
/copy 'qrpgleref/P882.rpgleinc'
/copy 'qrpgleref/P2544.rpgleinc'

dcl-ds theTable extname('T1353') qualified;
end-ds;

EXEC SQL SELECT * INTO :theTable FROM T1353 LIMIT 1;

theCharVar = 'Hello from P4107';
dsply theCharVar;
P711();
P882();
P2544();
return;