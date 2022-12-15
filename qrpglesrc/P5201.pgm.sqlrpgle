**free

ctl-opt dftactgrp(*no);

dcl-pi P5201;
end-pi;

dcl-s theCharVar Char(52);

/copy 'qrpgleref/P514.rpgleinc'
/copy 'qrpgleref/P1645.rpgleinc'
/copy 'qrpgleref/P3935.rpgleinc'

dcl-ds theTable extname('T205') qualified;
end-ds;

EXEC SQL SELECT * INTO :theTable FROM T205 LIMIT 1;

theCharVar = 'Hello from P5201';
dsply theCharVar;
P514();
P1645();
P3935();
return;