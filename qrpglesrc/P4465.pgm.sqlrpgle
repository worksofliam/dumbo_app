**free

ctl-opt dftactgrp(*no);

dcl-pi P4465;
end-pi;

dcl-s theCharVar Char(52);

/copy 'qrpgleref/P3728.rpgleinc'
/copy 'qrpgleref/P1935.rpgleinc'
/copy 'qrpgleref/P2592.rpgleinc'

dcl-ds theTable extname('T1562') qualified;
end-ds;

EXEC SQL SELECT * INTO :theTable FROM T1562 LIMIT 1;

theCharVar = 'Hello from P4465';
dsply theCharVar;
P3728();
P1935();
P2592();
return;