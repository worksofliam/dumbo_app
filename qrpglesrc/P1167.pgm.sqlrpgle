**free

ctl-opt dftactgrp(*no);

dcl-pi P1167;
end-pi;

dcl-s theCharVar Char(52);

/copy 'qrpgleref/P167.rpgleinc'
/copy 'qrpgleref/P581.rpgleinc'
/copy 'qrpgleref/P214.rpgleinc'

dcl-ds theTable extname('T1044') qualified;
end-ds;

EXEC SQL SELECT * INTO :theTable FROM T1044 LIMIT 1;

theCharVar = 'Hello from P1167';
dsply theCharVar;
P167();
P581();
P214();
return;