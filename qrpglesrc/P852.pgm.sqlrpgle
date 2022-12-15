**free

ctl-opt dftactgrp(*no);

dcl-pi P852;
end-pi;

dcl-s theCharVar Char(52);

/copy 'qrpgleref/P202.rpgleinc'
/copy 'qrpgleref/P318.rpgleinc'
/copy 'qrpgleref/P336.rpgleinc'

dcl-ds T1070 ext qualified;
end-ds;

EXEC SQL SELECT * INTO :T1070 FROM T1070 LIMIT 1;

theCharVar = 'Hello from P852';
dsply theCharVar;
callp localProc();
P202();
P318();
P336();
return;
dcl-proc localProc;
  theCharVar = 'Hello from P852 in the procedure';
end-proc;