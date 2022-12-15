**free

ctl-opt dftactgrp(*no);

dcl-pi P940;
end-pi;

dcl-s theCharVar Char(52);

/copy 'qrpgleref/P821.rpgleinc'
/copy 'qrpgleref/P715.rpgleinc'
/copy 'qrpgleref/P880.rpgleinc'

dcl-ds T579 ext qualified;
end-ds;

EXEC SQL SELECT * INTO :T579 FROM T579 LIMIT 1;

theCharVar = 'Hello from P940';
dsply theCharVar;
callp localProc();
P821();
P715();
P880();
return;
dcl-proc localProc;
  theCharVar = 'Hello from P940 in the procedure';
end-proc;