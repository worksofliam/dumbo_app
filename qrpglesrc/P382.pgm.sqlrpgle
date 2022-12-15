**free

ctl-opt dftactgrp(*no);

dcl-pi P382;
end-pi;

dcl-s theCharVar Char(52);

/copy 'qrpgleref/P71.rpgleinc'
/copy 'qrpgleref/P298.rpgleinc'
/copy 'qrpgleref/P376.rpgleinc'

dcl-ds T493 ext qualified;
end-ds;

EXEC SQL SELECT * INTO :T493 FROM T493 LIMIT 1;

theCharVar = 'Hello from P382';
dsply theCharVar;
callp localProc();
P71();
P298();
P376();
return;
dcl-proc localProc;
  theCharVar = 'Hello from P382 in the procedure';
end-proc;