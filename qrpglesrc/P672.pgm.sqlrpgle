**free

ctl-opt dftactgrp(*no);

dcl-pi P672;
end-pi;

dcl-s theCharVar Char(52);

/copy 'qrpgleref/P192.rpgleinc'
/copy 'qrpgleref/P104.rpgleinc'
/copy 'qrpgleref/P88.rpgleinc'

dcl-ds theTable extname('T236') qualified;
end-ds;

EXEC SQL SELECT * INTO :theTable FROM T236 LIMIT 1;

theCharVar = 'Hello from P672';
dsply theCharVar;
P192();
P104();
P88();
return;