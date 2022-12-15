**free

ctl-opt dftactgrp(*no);

dcl-pi P1460;
end-pi;

dcl-s theCharVar Char(52);

/copy 'qrpgleref/P923.rpgleinc'
/copy 'qrpgleref/P1350.rpgleinc'
/copy 'qrpgleref/P944.rpgleinc'

dcl-ds theTable extname('T873') qualified;
end-ds;

EXEC SQL SELECT * INTO :theTable FROM T873 LIMIT 1;

theCharVar = 'Hello from P1460';
dsply theCharVar;
P923();
P1350();
P944();
return;