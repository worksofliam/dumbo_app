**free

ctl-opt dftactgrp(*no);

dcl-pi P1485;
end-pi;

dcl-s theCharVar Char(52);

/copy 'qrpgleref/P650.rpgleinc'
/copy 'qrpgleref/P107.rpgleinc'
/copy 'qrpgleref/P683.rpgleinc'

dcl-ds T1039 ext qualified;
end-ds;

EXEC SQL SELECT * INTO :T1039 FROM T1039 LIMIT 1;

theCharVar = 'Hello from P1485';
dsply theCharVar;
callp localProc();
P650();
P107();
P683();
return;
dcl-proc localProc;
  theCharVar = 'Hello from P1485 in the procedure';
end-proc;