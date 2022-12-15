**free

ctl-opt dftactgrp(*no);

dcl-pi P2619;
end-pi;

dcl-s theCharVar Char(52);

/copy 'qrpgleref/P2417.rpgleinc'
/copy 'qrpgleref/P511.rpgleinc'
/copy 'qrpgleref/P343.rpgleinc'

dcl-ds T1220 ext qualified;
end-ds;

EXEC SQL SELECT * INTO :T1220 FROM T1220 LIMIT 1;

theCharVar = 'Hello from P2619';
dsply theCharVar;
callp localProc();
P2417();
P511();
P343();
return;
dcl-proc localProc;
  theCharVar = 'Hello from P2619 in the procedure';
end-proc;