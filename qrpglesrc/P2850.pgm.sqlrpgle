**free

ctl-opt dftactgrp(*no);

dcl-pi P2850;
end-pi;

dcl-s theCharVar Char(52);

/copy 'qrpgleref/P685.rpgleinc'
/copy 'qrpgleref/P1307.rpgleinc'
/copy 'qrpgleref/P762.rpgleinc'

dcl-ds theTable extname('T416') qualified;
end-ds;

EXEC SQL SELECT * INTO :theTable FROM T416 LIMIT 1;

theCharVar = 'Hello from P2850';
dsply theCharVar;
P685();
P1307();
P762();
return;