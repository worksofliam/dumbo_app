**free

ctl-opt dftactgrp(*no);

dcl-pi P2594;
end-pi;

dcl-s theCharVar Char(52);

/copy 'qrpgleref/P26.rpgleinc'
/copy 'qrpgleref/P1926.rpgleinc'
/copy 'qrpgleref/P2514.rpgleinc'

dcl-ds T900 ext qualified;
end-ds;

EXEC SQL SELECT * INTO :T900 FROM T900 LIMIT 1;

theCharVar = 'Hello from P2594';
dsply theCharVar;
callp localProc();
P26();
P1926();
P2514();
return;
dcl-proc localProc;
  theCharVar = 'Hello from P2594 in the procedure';
end-proc;