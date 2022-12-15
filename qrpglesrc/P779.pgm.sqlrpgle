**free

ctl-opt dftactgrp(*no);

dcl-pi P779;
end-pi;

dcl-s theCharVar Char(52);

/copy 'qrpgleref/P446.rpgleinc'
/copy 'qrpgleref/P452.rpgleinc'
/copy 'qrpgleref/P114.rpgleinc'

dcl-ds T643 ext qualified;
end-ds;

EXEC SQL SELECT * INTO :T643 FROM T643 LIMIT 1;

theCharVar = 'Hello from P779';
dsply theCharVar;
callp localProc();
P446();
P452();
P114();
return;
dcl-proc localProc;
  theCharVar = 'Hello from P779 in the procedure';
end-proc;