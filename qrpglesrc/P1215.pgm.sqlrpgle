**free

ctl-opt dftactgrp(*no);

dcl-pi P1215;
end-pi;

dcl-s theCharVar Char(52);

/copy 'qrpgleref/P341.rpgleinc'
/copy 'qrpgleref/P55.rpgleinc'
/copy 'qrpgleref/P1125.rpgleinc'

dcl-ds theTable extname('T768') qualified;
end-ds;

EXEC SQL SELECT * INTO :theTable FROM T768 LIMIT 1;

theCharVar = 'Hello from P1215';
dsply theCharVar;
callp localProc();
P341();
P55();
P1125();
return;
dcl-proc localProc;
  theCharVar = 'Hello from P1215 in the procedure';
end-proc;