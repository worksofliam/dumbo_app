**free

ctl-opt dftactgrp(*no);

dcl-pi P3084;
end-pi;

dcl-s theCharVar Char(52);

/copy 'qrpgleref/P1988.rpgleinc'
/copy 'qrpgleref/P2609.rpgleinc'
/copy 'qrpgleref/P158.rpgleinc'

dcl-ds theTable extname('T478') qualified;
end-ds;

EXEC SQL SELECT * INTO :theTable FROM T478 LIMIT 1;

theCharVar = 'Hello from P3084';
dsply theCharVar;
P1988();
P2609();
P158();
return;