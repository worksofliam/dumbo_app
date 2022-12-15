**free

ctl-opt dftactgrp(*no);

dcl-pi P563;
end-pi;

dcl-s theCharVar Char(52);

/copy 'qrpgleref/P543.rpgleinc'
/copy 'qrpgleref/P359.rpgleinc'
/copy 'qrpgleref/P199.rpgleinc'

dcl-ds theTable extname('T246') qualified;
end-ds;

EXEC SQL SELECT * INTO :theTable FROM T246 LIMIT 1;

theCharVar = 'Hello from P563';
dsply theCharVar;
P543();
P359();
P199();
return;