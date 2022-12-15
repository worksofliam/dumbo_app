**free

ctl-opt dftactgrp(*no);

dcl-pi P908;
end-pi;

dcl-s theCharVar Char(52);

/copy 'qrpgleref/P29.rpgleinc'
/copy 'qrpgleref/P219.rpgleinc'
/copy 'qrpgleref/P862.rpgleinc'

dcl-ds theTable extname('T137') qualified;
end-ds;

EXEC SQL SELECT * INTO :theTable FROM T137 LIMIT 1;

theCharVar = 'Hello from P908';
dsply theCharVar;
P29();
P219();
P862();
return;