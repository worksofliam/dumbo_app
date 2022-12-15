**free

ctl-opt dftactgrp(*no);

dcl-pi P2885;
end-pi;

dcl-s theCharVar Char(52);

/copy 'qrpgleref/P568.rpgleinc'
/copy 'qrpgleref/P232.rpgleinc'
/copy 'qrpgleref/P1365.rpgleinc'

dcl-ds T1624 ext qualified;
end-ds;

EXEC SQL SELECT * INTO :T1624 FROM T1624 LIMIT 1;

theCharVar = 'Hello from P2885';
dsply theCharVar;
callp localProc();
P568();
P232();
P1365();
return;
dcl-proc localProc;
  theCharVar = 'Hello from P2885 in the procedure';
end-proc;