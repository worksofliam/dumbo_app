**free

ctl-opt dftactgrp(*no);

dcl-pi P202;
end-pi;

dcl-s theCharVar Char(52);

/copy 'qrpgleref/P22.rpgleinc'
/copy 'qrpgleref/P2.rpgleinc'
/copy 'qrpgleref/P114.rpgleinc'

dcl-ds T340 ext qualified;
end-ds;

EXEC SQL SELECT * INTO :T340 FROM T340 LIMIT 1;

theCharVar = 'Hello from P202';
dsply theCharVar;
callp localProc();
P22();
P2();
P114();
return;
dcl-proc localProc;
  theCharVar = 'Hello from P202 in the procedure';
end-proc;