**free

ctl-opt dftactgrp(*no);

dcl-pi P3502;
end-pi;

dcl-s theCharVar Char(52);

/copy 'qrpgleref/P944.rpgleinc'
/copy 'qrpgleref/P3192.rpgleinc'
/copy 'qrpgleref/P408.rpgleinc'

dcl-ds theTable extname('T1857') qualified;
end-ds;

EXEC SQL SELECT * INTO :theTable FROM T1857 LIMIT 1;

theCharVar = 'Hello from P3502';
dsply theCharVar;
P944();
P3192();
P408();
return;