**free

ctl-opt dftactgrp(*no);

dcl-pi P4054;
end-pi;

dcl-s theCharVar Char(52);

/copy 'qrpgleref/P2698.rpgleinc'
/copy 'qrpgleref/P736.rpgleinc'
/copy 'qrpgleref/P2607.rpgleinc'

dcl-ds T1808 ext qualified;
end-ds;

EXEC SQL SELECT * INTO :T1808 FROM T1808 LIMIT 1;

theCharVar = 'Hello from P4054';
dsply theCharVar;
callp localProc();
P2698();
P736();
P2607();
return;
dcl-proc localProc;
  theCharVar = 'Hello from P4054 in the procedure';
end-proc;