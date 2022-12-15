**free

ctl-opt dftactgrp(*no);

dcl-pi P2499;
end-pi;

dcl-s theCharVar Char(52);

/copy 'qrpgleref/P809.rpgleinc'
/copy 'qrpgleref/P1630.rpgleinc'
/copy 'qrpgleref/P620.rpgleinc'

dcl-ds theTable extname('T678') qualified;
end-ds;

EXEC SQL SELECT * INTO :theTable FROM T678 LIMIT 1;

theCharVar = 'Hello from P2499';
dsply theCharVar;
P809();
P1630();
P620();
return;