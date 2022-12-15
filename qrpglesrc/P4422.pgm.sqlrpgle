**free

ctl-opt dftactgrp(*no);

dcl-pi P4422;
end-pi;

dcl-s theCharVar Char(52);

/copy 'qrpgleref/P3549.rpgleinc'
/copy 'qrpgleref/P4267.rpgleinc'
/copy 'qrpgleref/P2889.rpgleinc'

dcl-ds T1862 ext qualified;
end-ds;

EXEC SQL SELECT * INTO :T1862 FROM T1862 LIMIT 1;

theCharVar = 'Hello from P4422';
dsply theCharVar;
callp localProc();
P3549();
P4267();
P2889();
return;
dcl-proc localProc;
  theCharVar = 'Hello from P4422 in the procedure';
end-proc;