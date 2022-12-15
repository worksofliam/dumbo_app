**free

ctl-opt dftactgrp(*no);

dcl-pi P4738;
end-pi;

dcl-s theCharVar Char(52);

/copy 'qrpgleref/P249.rpgleinc'
/copy 'qrpgleref/P257.rpgleinc'
/copy 'qrpgleref/P3271.rpgleinc'

dcl-ds T248 ext qualified;
end-ds;

EXEC SQL SELECT * INTO :T248 FROM T248 LIMIT 1;

theCharVar = 'Hello from P4738';
dsply theCharVar;
callp localProc();
P249();
P257();
P3271();
return;
dcl-proc localProc;
  theCharVar = 'Hello from P4738 in the procedure';
end-proc;