**free

ctl-opt dftactgrp(*no);

dcl-pi P4830;
end-pi;

dcl-s theCharVar Char(52);

/copy 'qrpgleref/P2748.rpgleinc'
/copy 'qrpgleref/P4634.rpgleinc'
/copy 'qrpgleref/P3203.rpgleinc'

dcl-ds T601 ext qualified;
end-ds;

EXEC SQL SELECT * INTO :T601 FROM T601 LIMIT 1;

theCharVar = 'Hello from P4830';
dsply theCharVar;
callp localProc();
P2748();
P4634();
P3203();
return;
dcl-proc localProc;
  theCharVar = 'Hello from P4830 in the procedure';
end-proc;