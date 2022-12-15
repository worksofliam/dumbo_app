**free

ctl-opt dftactgrp(*no);

dcl-pi P3259;
end-pi;

dcl-s theCharVar Char(52);

/copy 'qrpgleref/P2668.rpgleinc'
/copy 'qrpgleref/P934.rpgleinc'
/copy 'qrpgleref/P3100.rpgleinc'

dcl-ds theTable extname('T234') qualified;
end-ds;

EXEC SQL SELECT * INTO :theTable FROM T234 LIMIT 1;

theCharVar = 'Hello from P3259';
dsply theCharVar;
P2668();
P934();
P3100();
return;