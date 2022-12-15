**free

ctl-opt dftactgrp(*no);

dcl-pi P4918;
end-pi;

dcl-s theCharVar Char(52);

/copy 'qrpgleref/P3007.rpgleinc'
/copy 'qrpgleref/P4398.rpgleinc'
/copy 'qrpgleref/P2321.rpgleinc'

dcl-ds T1626 ext qualified;
end-ds;

EXEC SQL SELECT * INTO :T1626 FROM T1626 LIMIT 1;

theCharVar = 'Hello from P4918';
dsply theCharVar;
callp localProc();
P3007();
P4398();
P2321();
return;
dcl-proc localProc;
  theCharVar = 'Hello from P4918 in the procedure';
end-proc;