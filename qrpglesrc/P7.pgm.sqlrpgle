**free

ctl-opt dftactgrp(*no);

dcl-pi P7;
end-pi;

dcl-s theCharVar Char(52);

/copy 'qrpgleref/P4.rpgleinc'

dcl-ds theTable extname('T105') qualified;
end-ds;

EXEC SQL SELECT * INTO :theTable FROM T105 LIMIT 1;

theCharVar = 'Hello from P7';
dsply theCharVar;
P4();
return;