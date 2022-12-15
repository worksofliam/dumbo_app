**free

ctl-opt dftactgrp(*no);

dcl-pi P2219;
end-pi;

dcl-s theCharVar Char(52);

/copy 'qrpgleref/P1441.rpgleinc'
/copy 'qrpgleref/P586.rpgleinc'
/copy 'qrpgleref/P443.rpgleinc'

dcl-ds theTable extname('T135') qualified;
end-ds;

EXEC SQL SELECT * INTO :theTable FROM T135 LIMIT 1;

theCharVar = 'Hello from P2219';
dsply theCharVar;
callp localProc();
P1441();
P586();
P443();
return;
dcl-proc localProc;
  theCharVar = 'Hello from P2219 in the procedure';
end-proc;