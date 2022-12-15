**free

ctl-opt dftactgrp(*no);

dcl-pi P4363;
end-pi;

dcl-s theCharVar Char(52);

/copy 'qrpgleref/P3962.rpgleinc'
/copy 'qrpgleref/P477.rpgleinc'
/copy 'qrpgleref/P3430.rpgleinc'

dcl-ds theTable extname('T1338') qualified;
end-ds;

EXEC SQL SELECT * INTO :theTable FROM T1338 LIMIT 1;

theCharVar = 'Hello from P4363';
dsply theCharVar;
P3962();
P477();
P3430();
return;