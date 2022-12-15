**free

ctl-opt dftactgrp(*no);

dcl-pi P2230;
end-pi;

dcl-s theCharVar Char(52);

/copy 'qrpgleref/P459.rpgleinc'
/copy 'qrpgleref/P203.rpgleinc'
/copy 'qrpgleref/P1572.rpgleinc'

dcl-ds T1045 ext qualified;
end-ds;

EXEC SQL SELECT * INTO :T1045 FROM T1045 LIMIT 1;

theCharVar = 'Hello from P2230';
dsply theCharVar;
callp localProc();
P459();
P203();
P1572();
return;
dcl-proc localProc;
  theCharVar = 'Hello from P2230 in the procedure';
end-proc;