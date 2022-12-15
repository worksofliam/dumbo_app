**free

ctl-opt dftactgrp(*no);

dcl-pi P5538;
end-pi;

dcl-s theCharVar Char(52);

/copy 'qrpgleref/P1572.rpgleinc'
/copy 'qrpgleref/P3183.rpgleinc'
/copy 'qrpgleref/P1370.rpgleinc'

dcl-ds theTable extname('T1502') qualified;
end-ds;

EXEC SQL SELECT * INTO :theTable FROM T1502 LIMIT 1;

theCharVar = 'Hello from P5538';
dsply theCharVar;
P1572();
P3183();
P1370();
return;