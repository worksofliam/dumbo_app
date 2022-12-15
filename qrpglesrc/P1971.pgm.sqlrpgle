**free

ctl-opt dftactgrp(*no);

dcl-pi P1971;
end-pi;

dcl-s theCharVar Char(52);

/copy 'qrpgleref/P1190.rpgleinc'
/copy 'qrpgleref/P443.rpgleinc'
/copy 'qrpgleref/P64.rpgleinc'

dcl-ds T617 ext qualified;
end-ds;

EXEC SQL SELECT * INTO :T617 FROM T617 LIMIT 1;

theCharVar = 'Hello from P1971';
dsply theCharVar;
callp localProc();
P1190();
P443();
P64();
return;
dcl-proc localProc;
  theCharVar = 'Hello from P1971 in the procedure';
end-proc;