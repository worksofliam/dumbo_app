**free

ctl-opt dftactgrp(*no);

dcl-pi P1048;
end-pi;

dcl-s theCharVar Char(52);

/copy 'qrpgleref/P854.rpgleinc'
/copy 'qrpgleref/P754.rpgleinc'
/copy 'qrpgleref/P888.rpgleinc'

dcl-ds T331 ext qualified;
end-ds;

EXEC SQL SELECT * INTO :T331 FROM T331 LIMIT 1;

theCharVar = 'Hello from P1048';
dsply theCharVar;
callp localProc();
P854();
P754();
P888();
return;
dcl-proc localProc;
  theCharVar = 'Hello from P1048 in the procedure';
end-proc;