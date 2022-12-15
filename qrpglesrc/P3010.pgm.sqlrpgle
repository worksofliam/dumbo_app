**free

ctl-opt dftactgrp(*no);

dcl-pi P3010;
end-pi;

dcl-s theCharVar Char(52);

/copy 'qrpgleref/P2274.rpgleinc'
/copy 'qrpgleref/P2009.rpgleinc'
/copy 'qrpgleref/P2681.rpgleinc'

dcl-ds theTable extname('T1124') qualified;
end-ds;

EXEC SQL SELECT * INTO :theTable FROM T1124 LIMIT 1;

theCharVar = 'Hello from P3010';
dsply theCharVar;
P2274();
P2009();
P2681();
return;