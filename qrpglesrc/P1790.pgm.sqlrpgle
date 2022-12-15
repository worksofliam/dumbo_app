**free

ctl-opt dftactgrp(*no);

dcl-pi P1790;
end-pi;

dcl-s theCharVar Char(52);

/copy 'qrpgleref/P1474.rpgleinc'
/copy 'qrpgleref/P1183.rpgleinc'
/copy 'qrpgleref/P235.rpgleinc'

dcl-ds theTable extname('T173') qualified;
end-ds;

EXEC SQL SELECT * INTO :theTable FROM T173 LIMIT 1;

theCharVar = 'Hello from P1790';
dsply theCharVar;
P1474();
P1183();
P235();
return;