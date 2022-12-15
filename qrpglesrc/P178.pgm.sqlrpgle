**free

ctl-opt dftactgrp(*no);

dcl-pi P178;
end-pi;

dcl-s theCharVar Char(52);

/copy 'qrpgleref/P48.rpgleinc'
/copy 'qrpgleref/P109.rpgleinc'
/copy 'qrpgleref/P168.rpgleinc'

dcl-ds T124 ext qualified;
end-ds;

EXEC SQL SELECT * INTO :T124 FROM T124 LIMIT 1;

theCharVar = 'Hello from P178';
dsply theCharVar;
callp localProc();
P48();
P109();
P168();
return;
dcl-proc localProc;
  theCharVar = 'Hello from P178 in the procedure';
end-proc;