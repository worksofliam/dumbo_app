**free

ctl-opt dftactgrp(*no);

dcl-pi P76;
end-pi;

dcl-s theCharVar Char(52);

/copy 'qrpgleref/P65.rpgleinc'
/copy 'qrpgleref/P2.rpgleinc'
/copy 'qrpgleref/P22.rpgleinc'

dcl-ds T1074 ext qualified;
end-ds;

EXEC SQL SELECT * INTO :T1074 FROM T1074 LIMIT 1;

theCharVar = 'Hello from P76';
dsply theCharVar;
callp localProc();
P65();
P2();
P22();
return;
dcl-proc localProc;
  theCharVar = 'Hello from P76 in the procedure';
end-proc;