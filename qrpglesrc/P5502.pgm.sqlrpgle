**free

ctl-opt dftactgrp(*no);

dcl-pi P5502;
end-pi;

dcl-s theCharVar Char(52);

/copy 'qrpgleref/P4678.rpgleinc'
/copy 'qrpgleref/P5007.rpgleinc'
/copy 'qrpgleref/P1480.rpgleinc'

dcl-ds theTable extname('T307') qualified;
end-ds;

EXEC SQL SELECT * INTO :theTable FROM T307 LIMIT 1;

theCharVar = 'Hello from P5502';
dsply theCharVar;
P4678();
P5007();
P1480();
return;