**free

ctl-opt dftactgrp(*no);

dcl-pi P2461;
end-pi;

dcl-s theCharVar Char(52);

/copy 'qrpgleref/P1556.rpgleinc'
/copy 'qrpgleref/P1996.rpgleinc'
/copy 'qrpgleref/P2442.rpgleinc'

dcl-ds T249 ext qualified;
end-ds;

EXEC SQL SELECT * INTO :T249 FROM T249 LIMIT 1;

theCharVar = 'Hello from P2461';
dsply theCharVar;
callp localProc();
P1556();
P1996();
P2442();
return;
dcl-proc localProc;
  theCharVar = 'Hello from P2461 in the procedure';
end-proc;