**free

ctl-opt dftactgrp(*no);

dcl-pi P515;
end-pi;

dcl-s theCharVar Char(52);

/copy 'qrpgleref/P125.rpgleinc'
/copy 'qrpgleref/P465.rpgleinc'
/copy 'qrpgleref/P358.rpgleinc'

dcl-ds theTable extname('T421') qualified;
end-ds;

EXEC SQL SELECT * INTO :theTable FROM T421 LIMIT 1;

theCharVar = 'Hello from P515';
dsply theCharVar;
P125();
P465();
P358();
return;