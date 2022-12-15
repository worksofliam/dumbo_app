**free

ctl-opt dftactgrp(*no);

dcl-pi P3299;
end-pi;

dcl-s theCharVar Char(52);

/copy 'qrpgleref/P342.rpgleinc'
/copy 'qrpgleref/P2171.rpgleinc'
/copy 'qrpgleref/P2298.rpgleinc'

dcl-ds theTable extname('T30') qualified;
end-ds;

EXEC SQL SELECT * INTO :theTable FROM T30 LIMIT 1;

theCharVar = 'Hello from P3299';
dsply theCharVar;
callp localProc();
P342();
P2171();
P2298();
return;
dcl-proc localProc;
  theCharVar = 'Hello from P3299 in the procedure';
end-proc;