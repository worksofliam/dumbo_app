**free

ctl-opt dftactgrp(*no);

dcl-pi P2187;
end-pi;

dcl-s theCharVar Char(52);

/copy 'qrpgleref/P289.rpgleinc'
/copy 'qrpgleref/P1229.rpgleinc'
/copy 'qrpgleref/P976.rpgleinc'

dcl-ds theTable extname('T387') qualified;
end-ds;

EXEC SQL SELECT * INTO :theTable FROM T387 LIMIT 1;

theCharVar = 'Hello from P2187';
dsply theCharVar;
P289();
P1229();
P976();
return;