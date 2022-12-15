**free

ctl-opt dftactgrp(*no);

dcl-pi P1537;
end-pi;

dcl-s theCharVar Char(52);

/copy 'qrpgleref/P331.rpgleinc'
/copy 'qrpgleref/P397.rpgleinc'
/copy 'qrpgleref/P1159.rpgleinc'

dcl-ds T1488 ext qualified;
end-ds;

EXEC SQL SELECT * INTO :T1488 FROM T1488 LIMIT 1;

theCharVar = 'Hello from P1537';
dsply theCharVar;
callp localProc();
P331();
P397();
P1159();
return;
dcl-proc localProc;
  theCharVar = 'Hello from P1537 in the procedure';
end-proc;