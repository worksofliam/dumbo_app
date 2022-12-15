**free

ctl-opt dftactgrp(*no);

dcl-pi P1247;
end-pi;

dcl-s theCharVar Char(52);

/copy 'qrpgleref/P1160.rpgleinc'
/copy 'qrpgleref/P685.rpgleinc'
/copy 'qrpgleref/P891.rpgleinc'

dcl-ds theTable extname('T373') qualified;
end-ds;

EXEC SQL SELECT * INTO :theTable FROM T373 LIMIT 1;

theCharVar = 'Hello from P1247';
dsply theCharVar;
P1160();
P685();
P891();
return;