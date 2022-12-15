**free

ctl-opt dftactgrp(*no);

dcl-pi P770;
end-pi;

dcl-s theCharVar Char(52);

/copy 'qrpgleref/P371.rpgleinc'
/copy 'qrpgleref/P527.rpgleinc'
/copy 'qrpgleref/P591.rpgleinc'

dcl-ds theTable extname('T764') qualified;
end-ds;

EXEC SQL SELECT * INTO :theTable FROM T764 LIMIT 1;

theCharVar = 'Hello from P770';
dsply theCharVar;
P371();
P527();
P591();
return;