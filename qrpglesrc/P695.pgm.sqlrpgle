**free

ctl-opt dftactgrp(*no);

dcl-pi P695;
end-pi;

dcl-s theCharVar Char(52);

/copy 'qrpgleref/P70.rpgleinc'
/copy 'qrpgleref/P495.rpgleinc'
/copy 'qrpgleref/P265.rpgleinc'

dcl-ds theTable extname('T195') qualified;
end-ds;

EXEC SQL SELECT * INTO :theTable FROM T195 LIMIT 1;

theCharVar = 'Hello from P695';
dsply theCharVar;
P70();
P495();
P265();
return;