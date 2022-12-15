**free

ctl-opt dftactgrp(*no);

dcl-pi P2470;
end-pi;

dcl-s theCharVar Char(52);

/copy 'qrpgleref/P1643.rpgleinc'
/copy 'qrpgleref/P743.rpgleinc'
/copy 'qrpgleref/P672.rpgleinc'

dcl-ds theTable extname('T1131') qualified;
end-ds;

EXEC SQL SELECT * INTO :theTable FROM T1131 LIMIT 1;

theCharVar = 'Hello from P2470';
dsply theCharVar;
P1643();
P743();
P672();
return;