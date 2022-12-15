**free

ctl-opt dftactgrp(*no);

dcl-pi P1747;
end-pi;

dcl-s theCharVar Char(52);

/copy 'qrpgleref/P913.rpgleinc'
/copy 'qrpgleref/P1685.rpgleinc'
/copy 'qrpgleref/P1656.rpgleinc'

dcl-ds T1039 ext qualified;
end-ds;

EXEC SQL SELECT * INTO :T1039 FROM T1039 LIMIT 1;

theCharVar = 'Hello from P1747';
dsply theCharVar;
callp localProc();
P913();
P1685();
P1656();
return;
dcl-proc localProc;
  theCharVar = 'Hello from P1747 in the procedure';
end-proc;