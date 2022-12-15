**free

ctl-opt dftactgrp(*no);

dcl-pi P3680;
end-pi;

dcl-s theCharVar Char(52);

/copy 'qrpgleref/P967.rpgleinc'
/copy 'qrpgleref/P886.rpgleinc'
/copy 'qrpgleref/P2205.rpgleinc'

dcl-ds T533 ext qualified;
end-ds;

EXEC SQL SELECT * INTO :T533 FROM T533 LIMIT 1;

theCharVar = 'Hello from P3680';
dsply theCharVar;
callp localProc();
P967();
P886();
P2205();
return;
dcl-proc localProc;
  theCharVar = 'Hello from P3680 in the procedure';
end-proc;