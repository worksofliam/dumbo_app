**free

ctl-opt dftactgrp(*no);

dcl-pi P371;
end-pi;

dcl-s theCharVar Char(52);

/copy 'qrpgleref/P84.rpgleinc'
/copy 'qrpgleref/P369.rpgleinc'
/copy 'qrpgleref/P313.rpgleinc'

dcl-ds theTable extname('T1485') qualified;
end-ds;

EXEC SQL SELECT * INTO :theTable FROM T1485 LIMIT 1;

theCharVar = 'Hello from P371';
dsply theCharVar;
P84();
P369();
P313();
return;