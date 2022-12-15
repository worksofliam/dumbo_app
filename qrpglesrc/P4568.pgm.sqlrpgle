**free

ctl-opt dftactgrp(*no);

dcl-pi P4568;
end-pi;

dcl-s theCharVar Char(52);

/copy 'qrpgleref/P2280.rpgleinc'
/copy 'qrpgleref/P852.rpgleinc'
/copy 'qrpgleref/P2257.rpgleinc'

dcl-ds T1198 ext qualified;
end-ds;

EXEC SQL SELECT * INTO :T1198 FROM T1198 LIMIT 1;

theCharVar = 'Hello from P4568';
dsply theCharVar;
callp localProc();
P2280();
P852();
P2257();
return;
dcl-proc localProc;
  theCharVar = 'Hello from P4568 in the procedure';
end-proc;