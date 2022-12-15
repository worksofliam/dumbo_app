**free

ctl-opt dftactgrp(*no);

dcl-pi P660;
end-pi;

dcl-s theCharVar Char(52);

/copy 'qrpgleref/P182.rpgleinc'
/copy 'qrpgleref/P571.rpgleinc'
/copy 'qrpgleref/P288.rpgleinc'

dcl-ds theTable extname('T1848') qualified;
end-ds;

EXEC SQL SELECT * INTO :theTable FROM T1848 LIMIT 1;

theCharVar = 'Hello from P660';
dsply theCharVar;
P182();
P571();
P288();
return;