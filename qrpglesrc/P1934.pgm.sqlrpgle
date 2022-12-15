**free

ctl-opt dftactgrp(*no);

dcl-pi P1934;
end-pi;

dcl-s theCharVar Char(52);

/copy 'qrpgleref/P1197.rpgleinc'
/copy 'qrpgleref/P693.rpgleinc'
/copy 'qrpgleref/P930.rpgleinc'

dcl-ds theTable extname('T1164') qualified;
end-ds;

EXEC SQL SELECT * INTO :theTable FROM T1164 LIMIT 1;

theCharVar = 'Hello from P1934';
dsply theCharVar;
P1197();
P693();
P930();
return;