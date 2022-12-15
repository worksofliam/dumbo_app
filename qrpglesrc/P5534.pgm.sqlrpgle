**free

ctl-opt dftactgrp(*no);

dcl-pi P5534;
end-pi;

dcl-s theCharVar Char(52);

/copy 'qrpgleref/P3905.rpgleinc'
/copy 'qrpgleref/P2749.rpgleinc'
/copy 'qrpgleref/P5241.rpgleinc'

dcl-ds theTable extname('T1715') qualified;
end-ds;

EXEC SQL SELECT * INTO :theTable FROM T1715 LIMIT 1;

theCharVar = 'Hello from P5534';
dsply theCharVar;
P3905();
P2749();
P5241();
return;