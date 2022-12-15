**free

ctl-opt dftactgrp(*no);

dcl-pi P4414;
end-pi;

dcl-s theCharVar Char(52);

/copy 'qrpgleref/P3766.rpgleinc'
/copy 'qrpgleref/P3388.rpgleinc'
/copy 'qrpgleref/P3984.rpgleinc'

dcl-ds T1710 ext qualified;
end-ds;

EXEC SQL SELECT * INTO :T1710 FROM T1710 LIMIT 1;

theCharVar = 'Hello from P4414';
dsply theCharVar;
callp localProc();
P3766();
P3388();
P3984();
return;
dcl-proc localProc;
  theCharVar = 'Hello from P4414 in the procedure';
end-proc;