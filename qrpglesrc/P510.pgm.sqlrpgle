**free

ctl-opt dftactgrp(*no);

dcl-pi P510;
end-pi;

dcl-s theCharVar Char(52);

/copy 'qrpgleref/P87.rpgleinc'
/copy 'qrpgleref/P224.rpgleinc'
/copy 'qrpgleref/P197.rpgleinc'

dcl-ds theTable extname('T186') qualified;
end-ds;

EXEC SQL SELECT * INTO :theTable FROM T186 LIMIT 1;

theCharVar = 'Hello from P510';
dsply theCharVar;
callp localProc();
P87();
P224();
P197();
return;
dcl-proc localProc;
  theCharVar = 'Hello from P510 in the procedure';
end-proc;