**free

ctl-opt dftactgrp(*no);

dcl-pi P3465;
end-pi;

dcl-s theCharVar Char(52);

/copy 'qrpgleref/P3125.rpgleinc'
/copy 'qrpgleref/P2140.rpgleinc'
/copy 'qrpgleref/P1920.rpgleinc'

dcl-ds theTable extname('T1172') qualified;
end-ds;

EXEC SQL SELECT * INTO :theTable FROM T1172 LIMIT 1;

theCharVar = 'Hello from P3465';
dsply theCharVar;
P3125();
P2140();
P1920();
return;