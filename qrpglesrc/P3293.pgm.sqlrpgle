**free

ctl-opt dftactgrp(*no);

dcl-pi P3293;
end-pi;

dcl-s theCharVar Char(52);

/copy 'qrpgleref/P672.rpgleinc'
/copy 'qrpgleref/P1117.rpgleinc'
/copy 'qrpgleref/P1207.rpgleinc'

dcl-ds theTable extname('T87') qualified;
end-ds;

EXEC SQL SELECT * INTO :theTable FROM T87 LIMIT 1;

theCharVar = 'Hello from P3293';
dsply theCharVar;
P672();
P1117();
P1207();
return;