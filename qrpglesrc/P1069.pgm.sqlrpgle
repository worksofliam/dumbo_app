**free

ctl-opt dftactgrp(*no);

dcl-pi P1069;
end-pi;

dcl-s theCharVar Char(52);

/copy 'qrpgleref/P86.rpgleinc'
/copy 'qrpgleref/P159.rpgleinc'
/copy 'qrpgleref/P130.rpgleinc'

dcl-ds theTable extname('T1126') qualified;
end-ds;

EXEC SQL SELECT * INTO :theTable FROM T1126 LIMIT 1;

theCharVar = 'Hello from P1069';
dsply theCharVar;
P86();
P159();
P130();
return;