**free

ctl-opt dftactgrp(*no);

dcl-pi P1687;
end-pi;

dcl-s theCharVar Char(52);

/copy 'qrpgleref/P1204.rpgleinc'
/copy 'qrpgleref/P687.rpgleinc'
/copy 'qrpgleref/P514.rpgleinc'

dcl-ds T1797 ext qualified;
end-ds;

EXEC SQL SELECT * INTO :T1797 FROM T1797 LIMIT 1;

theCharVar = 'Hello from P1687';
dsply theCharVar;
callp localProc();
P1204();
P687();
P514();
return;
dcl-proc localProc;
  theCharVar = 'Hello from P1687 in the procedure';
end-proc;