**free

ctl-opt dftactgrp(*no);

dcl-pi P4707;
end-pi;

dcl-s theCharVar Char(52);

/copy 'qrpgleref/P3338.rpgleinc'
/copy 'qrpgleref/P1878.rpgleinc'
/copy 'qrpgleref/P3971.rpgleinc'

dcl-ds T784 ext qualified;
end-ds;

EXEC SQL SELECT * INTO :T784 FROM T784 LIMIT 1;

theCharVar = 'Hello from P4707';
dsply theCharVar;
callp localProc();
P3338();
P1878();
P3971();
return;
dcl-proc localProc;
  theCharVar = 'Hello from P4707 in the procedure';
end-proc;