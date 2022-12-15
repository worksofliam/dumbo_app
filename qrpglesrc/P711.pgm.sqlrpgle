**free

ctl-opt dftactgrp(*no);

dcl-pi P711;
end-pi;

dcl-s theCharVar Char(52);

/copy 'qrpgleref/P392.rpgleinc'
/copy 'qrpgleref/P362.rpgleinc'
/copy 'qrpgleref/P79.rpgleinc'

dcl-ds theTable extname('T1109') qualified;
end-ds;

EXEC SQL SELECT * INTO :theTable FROM T1109 LIMIT 1;

theCharVar = 'Hello from P711';
dsply theCharVar;
P392();
P362();
P79();
return;