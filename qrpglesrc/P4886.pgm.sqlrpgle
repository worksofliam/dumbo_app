**free

ctl-opt dftactgrp(*no);

dcl-pi P4886;
end-pi;

dcl-s theCharVar Char(52);

/copy 'qrpgleref/P1987.rpgleinc'
/copy 'qrpgleref/P2719.rpgleinc'
/copy 'qrpgleref/P358.rpgleinc'

dcl-ds theTable extname('T368') qualified;
end-ds;

EXEC SQL SELECT * INTO :theTable FROM T368 LIMIT 1;

theCharVar = 'Hello from P4886';
dsply theCharVar;
P1987();
P2719();
P358();
return;