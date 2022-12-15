**free

ctl-opt dftactgrp(*no);

dcl-pi P1209;
end-pi;

dcl-s theCharVar Char(52);

/copy 'qrpgleref/P994.rpgleinc'
/copy 'qrpgleref/P985.rpgleinc'
/copy 'qrpgleref/P713.rpgleinc'

dcl-ds theTable extname('T30') qualified;
end-ds;

EXEC SQL SELECT * INTO :theTable FROM T30 LIMIT 1;

theCharVar = 'Hello from P1209';
dsply theCharVar;
callp localProc();
P994();
P985();
P713();
return;
dcl-proc localProc;
  theCharVar = 'Hello from P1209 in the procedure';
end-proc;