**free

ctl-opt dftactgrp(*no);

dcl-pi P1481;
end-pi;

dcl-s theCharVar Char(52);

/copy 'qrpgleref/P611.rpgleinc'
/copy 'qrpgleref/P1352.rpgleinc'
/copy 'qrpgleref/P1275.rpgleinc'

dcl-ds T1849 ext qualified;
end-ds;

EXEC SQL SELECT * INTO :T1849 FROM T1849 LIMIT 1;

theCharVar = 'Hello from P1481';
dsply theCharVar;
callp localProc();
P611();
P1352();
P1275();
return;
dcl-proc localProc;
  theCharVar = 'Hello from P1481 in the procedure';
end-proc;