**free

ctl-opt dftactgrp(*no);

dcl-pi P5445;
end-pi;

dcl-s theCharVar Char(52);

/copy 'qrpgleref/P1300.rpgleinc'
/copy 'qrpgleref/P3679.rpgleinc'
/copy 'qrpgleref/P5164.rpgleinc'

dcl-ds theTable extname('T759') qualified;
end-ds;

EXEC SQL SELECT * INTO :theTable FROM T759 LIMIT 1;

theCharVar = 'Hello from P5445';
dsply theCharVar;
P1300();
P3679();
P5164();
return;