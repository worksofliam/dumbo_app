**free

ctl-opt dftactgrp(*no);

dcl-pi P1052;
end-pi;

dcl-s theCharVar Char(52);

/copy 'qrpgleref/P545.rpgleinc'
/copy 'qrpgleref/P371.rpgleinc'
/copy 'qrpgleref/P1042.rpgleinc'

dcl-ds theTable extname('T1092') qualified;
end-ds;

EXEC SQL SELECT * INTO :theTable FROM T1092 LIMIT 1;

theCharVar = 'Hello from P1052';
dsply theCharVar;
callp localProc();
P545();
P371();
P1042();
return;
dcl-proc localProc;
  theCharVar = 'Hello from P1052 in the procedure';
end-proc;