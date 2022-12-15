**free

ctl-opt dftactgrp(*no);

dcl-pi P1972;
end-pi;

dcl-s theCharVar Char(52);

/copy 'qrpgleref/P1965.rpgleinc'
/copy 'qrpgleref/P376.rpgleinc'
/copy 'qrpgleref/P1427.rpgleinc'

dcl-ds T723 ext qualified;
end-ds;

EXEC SQL SELECT * INTO :T723 FROM T723 LIMIT 1;

theCharVar = 'Hello from P1972';
dsply theCharVar;
callp localProc();
P1965();
P376();
P1427();
return;
dcl-proc localProc;
  theCharVar = 'Hello from P1972 in the procedure';
end-proc;