**free

ctl-opt dftactgrp(*no);

dcl-pi P1303;
end-pi;

dcl-s theCharVar Char(52);

/copy 'qrpgleref/P713.rpgleinc'
/copy 'qrpgleref/P1198.rpgleinc'
/copy 'qrpgleref/P267.rpgleinc'

dcl-ds theTable extname('T240') qualified;
end-ds;

EXEC SQL SELECT * INTO :theTable FROM T240 LIMIT 1;

theCharVar = 'Hello from P1303';
dsply theCharVar;
callp localProc();
P713();
P1198();
P267();
return;
dcl-proc localProc;
  theCharVar = 'Hello from P1303 in the procedure';
end-proc;