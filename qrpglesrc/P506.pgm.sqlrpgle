**free

ctl-opt dftactgrp(*no);

dcl-pi P506;
end-pi;

dcl-s theCharVar Char(52);

/copy 'qrpgleref/P320.rpgleinc'
/copy 'qrpgleref/P42.rpgleinc'
/copy 'qrpgleref/P103.rpgleinc'

dcl-ds theTable extname('T1320') qualified;
end-ds;

EXEC SQL SELECT * INTO :theTable FROM T1320 LIMIT 1;

theCharVar = 'Hello from P506';
dsply theCharVar;
P320();
P42();
P103();
return;