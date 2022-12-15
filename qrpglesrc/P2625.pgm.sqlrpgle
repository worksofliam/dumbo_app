**free

ctl-opt dftactgrp(*no);

dcl-pi P2625;
end-pi;

dcl-s theCharVar Char(52);

/copy 'qrpgleref/P1095.rpgleinc'
/copy 'qrpgleref/P2081.rpgleinc'
/copy 'qrpgleref/P534.rpgleinc'

dcl-ds T224 ext qualified;
end-ds;

EXEC SQL SELECT * INTO :T224 FROM T224 LIMIT 1;

theCharVar = 'Hello from P2625';
dsply theCharVar;
callp localProc();
P1095();
P2081();
P534();
return;
dcl-proc localProc;
  theCharVar = 'Hello from P2625 in the procedure';
end-proc;