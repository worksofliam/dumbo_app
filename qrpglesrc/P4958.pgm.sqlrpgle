**free

ctl-opt dftactgrp(*no);

dcl-pi P4958;
end-pi;

dcl-s theCharVar Char(52);

/copy 'qrpgleref/P60.rpgleinc'
/copy 'qrpgleref/P903.rpgleinc'
/copy 'qrpgleref/P1832.rpgleinc'

dcl-ds T1509 ext qualified;
end-ds;

EXEC SQL SELECT * INTO :T1509 FROM T1509 LIMIT 1;

theCharVar = 'Hello from P4958';
dsply theCharVar;
callp localProc();
P60();
P903();
P1832();
return;
dcl-proc localProc;
  theCharVar = 'Hello from P4958 in the procedure';
end-proc;