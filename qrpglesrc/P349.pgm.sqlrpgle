**free

ctl-opt dftactgrp(*no);

dcl-pi P349;
end-pi;

dcl-s theCharVar Char(52);

/copy 'qrpgleref/P154.rpgleinc'
/copy 'qrpgleref/P285.rpgleinc'
/copy 'qrpgleref/P252.rpgleinc'

dcl-ds theTable extname('T825') qualified;
end-ds;

EXEC SQL SELECT * INTO :theTable FROM T825 LIMIT 1;

theCharVar = 'Hello from P349';
dsply theCharVar;
P154();
P285();
P252();
return;