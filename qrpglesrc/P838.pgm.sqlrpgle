**free

ctl-opt dftactgrp(*no);

dcl-pi P838;
end-pi;

dcl-s theCharVar Char(52);

/copy 'qrpgleref/P334.rpgleinc'
/copy 'qrpgleref/P331.rpgleinc'
/copy 'qrpgleref/P6.rpgleinc'

dcl-ds theTable extname('T148') qualified;
end-ds;

EXEC SQL SELECT * INTO :theTable FROM T148 LIMIT 1;

theCharVar = 'Hello from P838';
dsply theCharVar;
P334();
P331();
P6();
return;