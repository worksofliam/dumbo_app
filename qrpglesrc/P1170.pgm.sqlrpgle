**free

ctl-opt dftactgrp(*no);

dcl-pi P1170;
end-pi;

dcl-s theCharVar Char(52);

/copy 'qrpgleref/P371.rpgleinc'
/copy 'qrpgleref/P430.rpgleinc'
/copy 'qrpgleref/P595.rpgleinc'

dcl-ds theTable extname('T1112') qualified;
end-ds;

EXEC SQL SELECT * INTO :theTable FROM T1112 LIMIT 1;

theCharVar = 'Hello from P1170';
dsply theCharVar;
callp localProc();
P371();
P430();
P595();
return;
dcl-proc localProc;
  theCharVar = 'Hello from P1170 in the procedure';
end-proc;