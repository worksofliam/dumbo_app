**free

ctl-opt dftactgrp(*no);

dcl-pi P1680;
end-pi;

dcl-s theCharVar Char(52);

/copy 'qrpgleref/P916.rpgleinc'
/copy 'qrpgleref/P1652.rpgleinc'
/copy 'qrpgleref/P516.rpgleinc'

dcl-ds T1188 ext qualified;
end-ds;

EXEC SQL SELECT * INTO :T1188 FROM T1188 LIMIT 1;

theCharVar = 'Hello from P1680';
dsply theCharVar;
callp localProc();
P916();
P1652();
P516();
return;
dcl-proc localProc;
  theCharVar = 'Hello from P1680 in the procedure';
end-proc;