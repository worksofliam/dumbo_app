**free

ctl-opt dftactgrp(*no);

dcl-pi P365;
end-pi;

dcl-s theCharVar Char(52);

/copy 'qrpgleref/P285.rpgleinc'
/copy 'qrpgleref/P151.rpgleinc'
/copy 'qrpgleref/P206.rpgleinc'

dcl-ds theTable extname('T107') qualified;
end-ds;

EXEC SQL SELECT * INTO :theTable FROM T107 LIMIT 1;

theCharVar = 'Hello from P365';
dsply theCharVar;
P285();
P151();
P206();
return;