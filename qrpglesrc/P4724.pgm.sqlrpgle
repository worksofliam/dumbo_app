**free

ctl-opt dftactgrp(*no);

dcl-pi P4724;
end-pi;

dcl-s theCharVar Char(52);

/copy 'qrpgleref/P4311.rpgleinc'
/copy 'qrpgleref/P3076.rpgleinc'
/copy 'qrpgleref/P3219.rpgleinc'

dcl-ds T1146 ext qualified;
end-ds;

EXEC SQL SELECT * INTO :T1146 FROM T1146 LIMIT 1;

theCharVar = 'Hello from P4724';
dsply theCharVar;
callp localProc();
P4311();
P3076();
P3219();
return;
dcl-proc localProc;
  theCharVar = 'Hello from P4724 in the procedure';
end-proc;