**free

ctl-opt dftactgrp(*no);

dcl-pi P1914;
end-pi;

dcl-s theCharVar Char(52);

/copy 'qrpgleref/P1011.rpgleinc'
/copy 'qrpgleref/P1220.rpgleinc'
/copy 'qrpgleref/P1679.rpgleinc'

dcl-ds theTable extname('T1065') qualified;
end-ds;

EXEC SQL SELECT * INTO :theTable FROM T1065 LIMIT 1;

theCharVar = 'Hello from P1914';
dsply theCharVar;
P1011();
P1220();
P1679();
return;