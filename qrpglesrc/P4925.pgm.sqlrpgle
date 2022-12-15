**free

ctl-opt dftactgrp(*no);

dcl-pi P4925;
end-pi;

dcl-s theCharVar Char(52);

/copy 'qrpgleref/P1873.rpgleinc'
/copy 'qrpgleref/P3974.rpgleinc'
/copy 'qrpgleref/P3631.rpgleinc'

dcl-ds T1467 ext qualified;
end-ds;

EXEC SQL SELECT * INTO :T1467 FROM T1467 LIMIT 1;

theCharVar = 'Hello from P4925';
dsply theCharVar;
callp localProc();
P1873();
P3974();
P3631();
return;
dcl-proc localProc;
  theCharVar = 'Hello from P4925 in the procedure';
end-proc;