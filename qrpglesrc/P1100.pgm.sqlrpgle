**free

ctl-opt dftactgrp(*no);

dcl-pi P1100;
end-pi;

dcl-s theCharVar Char(52);

/copy 'qrpgleref/P465.rpgleinc'
/copy 'qrpgleref/P500.rpgleinc'
/copy 'qrpgleref/P621.rpgleinc'

dcl-ds T1156 ext qualified;
end-ds;

EXEC SQL SELECT * INTO :T1156 FROM T1156 LIMIT 1;

theCharVar = 'Hello from P1100';
dsply theCharVar;
callp localProc();
P465();
P500();
P621();
return;
dcl-proc localProc;
  theCharVar = 'Hello from P1100 in the procedure';
end-proc;