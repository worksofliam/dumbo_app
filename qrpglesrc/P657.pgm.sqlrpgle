**free

ctl-opt dftactgrp(*no);

dcl-pi P657;
end-pi;

dcl-s theCharVar Char(52);

/copy 'qrpgleref/P465.rpgleinc'
/copy 'qrpgleref/P336.rpgleinc'
/copy 'qrpgleref/P598.rpgleinc'

dcl-ds T153 ext qualified;
end-ds;

EXEC SQL SELECT * INTO :T153 FROM T153 LIMIT 1;

theCharVar = 'Hello from P657';
dsply theCharVar;
callp localProc();
P465();
P336();
P598();
return;
dcl-proc localProc;
  theCharVar = 'Hello from P657 in the procedure';
end-proc;