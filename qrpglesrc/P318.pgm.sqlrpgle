**free

ctl-opt dftactgrp(*no);

dcl-pi P318;
end-pi;

dcl-s theCharVar Char(52);

/copy 'qrpgleref/P50.rpgleinc'
/copy 'qrpgleref/P60.rpgleinc'
/copy 'qrpgleref/P40.rpgleinc'

dcl-ds theTable extname('T32') qualified;
end-ds;

EXEC SQL SELECT * INTO :theTable FROM T32 LIMIT 1;

theCharVar = 'Hello from P318';
dsply theCharVar;
P50();
P60();
P40();
return;