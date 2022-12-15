**free

ctl-opt dftactgrp(*no);

dcl-pi P3302;
end-pi;

dcl-s theCharVar Char(52);

/copy 'qrpgleref/P159.rpgleinc'
/copy 'qrpgleref/P2657.rpgleinc'
/copy 'qrpgleref/P1023.rpgleinc'

dcl-ds theTable extname('T693') qualified;
end-ds;

EXEC SQL SELECT * INTO :theTable FROM T693 LIMIT 1;

theCharVar = 'Hello from P3302';
dsply theCharVar;
P159();
P2657();
P1023();
return;