**free

ctl-opt dftactgrp(*no);

dcl-pi P1223;
end-pi;

dcl-s theCharVar Char(52);

/copy 'qrpgleref/P1033.rpgleinc'
/copy 'qrpgleref/P654.rpgleinc'
/copy 'qrpgleref/P261.rpgleinc'

dcl-ds theTable extname('T66') qualified;
end-ds;

EXEC SQL SELECT * INTO :theTable FROM T66 LIMIT 1;

theCharVar = 'Hello from P1223';
dsply theCharVar;
P1033();
P654();
P261();
return;