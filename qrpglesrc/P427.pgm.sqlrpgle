**free

ctl-opt dftactgrp(*no);

dcl-pi P427;
end-pi;

dcl-s theCharVar Char(52);

/copy 'qrpgleref/P235.rpgleinc'
/copy 'qrpgleref/P299.rpgleinc'
/copy 'qrpgleref/P71.rpgleinc'

dcl-ds T767 ext qualified;
end-ds;

EXEC SQL SELECT * INTO :T767 FROM T767 LIMIT 1;

theCharVar = 'Hello from P427';
dsply theCharVar;
callp localProc();
P235();
P299();
P71();
return;
dcl-proc localProc;
  theCharVar = 'Hello from P427 in the procedure';
end-proc;