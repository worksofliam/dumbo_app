**free

ctl-opt dftactgrp(*no);

dcl-pi P4433;
end-pi;

dcl-s theCharVar Char(52);

/copy 'qrpgleref/P1642.rpgleinc'
/copy 'qrpgleref/P2662.rpgleinc'
/copy 'qrpgleref/P754.rpgleinc'

dcl-ds T866 ext qualified;
end-ds;

EXEC SQL SELECT * INTO :T866 FROM T866 LIMIT 1;

theCharVar = 'Hello from P4433';
dsply theCharVar;
callp localProc();
P1642();
P2662();
P754();
return;
dcl-proc localProc;
  theCharVar = 'Hello from P4433 in the procedure';
end-proc;