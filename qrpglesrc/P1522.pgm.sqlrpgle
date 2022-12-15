**free

ctl-opt dftactgrp(*no);

dcl-pi P1522;
end-pi;

dcl-s theCharVar Char(52);

/copy 'qrpgleref/P609.rpgleinc'
/copy 'qrpgleref/P618.rpgleinc'
/copy 'qrpgleref/P356.rpgleinc'

dcl-ds theTable extname('T536') qualified;
end-ds;

EXEC SQL SELECT * INTO :theTable FROM T536 LIMIT 1;

theCharVar = 'Hello from P1522';
dsply theCharVar;
P609();
P618();
P356();
return;