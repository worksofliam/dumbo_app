**free

ctl-opt dftactgrp(*no);

dcl-pi P4879;
end-pi;

dcl-s theCharVar Char(52);

/copy 'qrpgleref/P3288.rpgleinc'
/copy 'qrpgleref/P516.rpgleinc'
/copy 'qrpgleref/P2294.rpgleinc'

dcl-ds theTable extname('T1013') qualified;
end-ds;

EXEC SQL SELECT * INTO :theTable FROM T1013 LIMIT 1;

theCharVar = 'Hello from P4879';
dsply theCharVar;
P3288();
P516();
P2294();
return;