**free

ctl-opt dftactgrp(*no);

dcl-pi P399;
end-pi;

dcl-s theCharVar Char(52);

/copy 'qrpgleref/P189.rpgleinc'
/copy 'qrpgleref/P306.rpgleinc'
/copy 'qrpgleref/P285.rpgleinc'

dcl-ds T81 ext qualified;
end-ds;

EXEC SQL SELECT * INTO :T81 FROM T81 LIMIT 1;

theCharVar = 'Hello from P399';
dsply theCharVar;
callp localProc();
P189();
P306();
P285();
return;
dcl-proc localProc;
  theCharVar = 'Hello from P399 in the procedure';
end-proc;