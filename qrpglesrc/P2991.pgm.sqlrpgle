**free

ctl-opt dftactgrp(*no);

dcl-pi P2991;
end-pi;

dcl-s theCharVar Char(52);

/copy 'qrpgleref/P1143.rpgleinc'
/copy 'qrpgleref/P1010.rpgleinc'
/copy 'qrpgleref/P1869.rpgleinc'

dcl-ds T155 ext qualified;
end-ds;

EXEC SQL SELECT * INTO :T155 FROM T155 LIMIT 1;

theCharVar = 'Hello from P2991';
dsply theCharVar;
callp localProc();
P1143();
P1010();
P1869();
return;
dcl-proc localProc;
  theCharVar = 'Hello from P2991 in the procedure';
end-proc;