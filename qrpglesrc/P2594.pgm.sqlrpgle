**free

ctl-opt dftactgrp(*no);

dcl-pi P2594;
end-pi;

dcl-s theCharVar Char(52);

/copy 'qrpgleref/P463.rpgleinc'
/copy 'qrpgleref/P2477.rpgleinc'
/copy 'qrpgleref/P1786.rpgleinc'

dcl-ds theTable extname('T1228') qualified;
end-ds;

EXEC SQL SELECT * INTO :theTable FROM T1228 LIMIT 1;

theCharVar = 'Hello from P2594';
dsply theCharVar;
P463();
P2477();
P1786();
return;