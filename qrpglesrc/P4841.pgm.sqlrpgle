**free

ctl-opt dftactgrp(*no);

dcl-pi P4841;
end-pi;

dcl-s theCharVar Char(52);

/copy 'qrpgleref/P815.rpgleinc'
/copy 'qrpgleref/P2748.rpgleinc'
/copy 'qrpgleref/P3508.rpgleinc'

dcl-ds theTable extname('T376') qualified;
end-ds;

EXEC SQL SELECT * INTO :theTable FROM T376 LIMIT 1;

theCharVar = 'Hello from P4841';
dsply theCharVar;
P815();
P2748();
P3508();
return;