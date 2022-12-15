**free

ctl-opt dftactgrp(*no);

dcl-pi P3814;
end-pi;

dcl-s theCharVar Char(52);

/copy 'qrpgleref/P3508.rpgleinc'
/copy 'qrpgleref/P3487.rpgleinc'
/copy 'qrpgleref/P2488.rpgleinc'

dcl-ds T1317 ext qualified;
end-ds;

EXEC SQL SELECT * INTO :T1317 FROM T1317 LIMIT 1;

theCharVar = 'Hello from P3814';
dsply theCharVar;
callp localProc();
P3508();
P3487();
P2488();
return;
dcl-proc localProc;
  theCharVar = 'Hello from P3814 in the procedure';
end-proc;