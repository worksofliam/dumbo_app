**free

ctl-opt dftactgrp(*no);

dcl-pi P3371;
end-pi;

dcl-s theCharVar Char(52);

/copy 'qrpgleref/P1594.rpgleinc'
/copy 'qrpgleref/P313.rpgleinc'
/copy 'qrpgleref/P2640.rpgleinc'

dcl-ds theTable extname('T983') qualified;
end-ds;

EXEC SQL SELECT * INTO :theTable FROM T983 LIMIT 1;

theCharVar = 'Hello from P3371';
dsply theCharVar;
P1594();
P313();
P2640();
return;