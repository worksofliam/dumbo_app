**free

ctl-opt dftactgrp(*no);

dcl-pi P2677;
end-pi;

dcl-s theCharVar Char(52);

/copy 'qrpgleref/P2570.rpgleinc'
/copy 'qrpgleref/P532.rpgleinc'
/copy 'qrpgleref/P1208.rpgleinc'

dcl-ds T941 ext qualified;
end-ds;

EXEC SQL SELECT * INTO :T941 FROM T941 LIMIT 1;

theCharVar = 'Hello from P2677';
dsply theCharVar;
callp localProc();
P2570();
P532();
P1208();
return;
dcl-proc localProc;
  theCharVar = 'Hello from P2677 in the procedure';
end-proc;