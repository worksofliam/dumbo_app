**free

ctl-opt dftactgrp(*no);

dcl-pi P557;
end-pi;

dcl-s theCharVar Char(52);

/copy 'qrpgleref/P497.rpgleinc'
/copy 'qrpgleref/P96.rpgleinc'
/copy 'qrpgleref/P192.rpgleinc'

dcl-ds theTable extname('T9') qualified;
end-ds;

EXEC SQL SELECT * INTO :theTable FROM T9 LIMIT 1;

theCharVar = 'Hello from P557';
dsply theCharVar;
P497();
P96();
P192();
return;