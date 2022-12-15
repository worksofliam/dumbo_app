**free

ctl-opt dftactgrp(*no);

dcl-pi P846;
end-pi;

dcl-s theCharVar Char(52);

/copy 'qrpgleref/P760.rpgleinc'
/copy 'qrpgleref/P142.rpgleinc'
/copy 'qrpgleref/P279.rpgleinc'

dcl-ds theTable extname('T37') qualified;
end-ds;

EXEC SQL SELECT * INTO :theTable FROM T37 LIMIT 1;

theCharVar = 'Hello from P846';
dsply theCharVar;
P760();
P142();
P279();
return;