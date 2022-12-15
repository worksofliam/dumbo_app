**free

ctl-opt dftactgrp(*no);

dcl-pi P2969;
end-pi;

dcl-s theCharVar Char(52);

/copy 'qrpgleref/P2149.rpgleinc'
/copy 'qrpgleref/P652.rpgleinc'
/copy 'qrpgleref/P486.rpgleinc'

dcl-ds theTable extname('T1211') qualified;
end-ds;

EXEC SQL SELECT * INTO :theTable FROM T1211 LIMIT 1;

theCharVar = 'Hello from P2969';
dsply theCharVar;
P2149();
P652();
P486();
return;