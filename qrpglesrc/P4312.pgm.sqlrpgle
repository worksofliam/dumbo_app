**free

ctl-opt dftactgrp(*no);

dcl-pi P4312;
end-pi;

dcl-s theCharVar Char(52);

/copy 'qrpgleref/P433.rpgleinc'
/copy 'qrpgleref/P167.rpgleinc'
/copy 'qrpgleref/P2533.rpgleinc'

dcl-ds theTable extname('T1696') qualified;
end-ds;

EXEC SQL SELECT * INTO :theTable FROM T1696 LIMIT 1;

theCharVar = 'Hello from P4312';
dsply theCharVar;
P433();
P167();
P2533();
return;