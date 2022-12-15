**free

ctl-opt dftactgrp(*no);

dcl-pi P2342;
end-pi;

dcl-s theCharVar Char(52);

/copy 'qrpgleref/P1593.rpgleinc'
/copy 'qrpgleref/P1388.rpgleinc'
/copy 'qrpgleref/P503.rpgleinc'

dcl-ds T871 ext qualified;
end-ds;

EXEC SQL SELECT * INTO :T871 FROM T871 LIMIT 1;

theCharVar = 'Hello from P2342';
dsply theCharVar;
callp localProc();
P1593();
P1388();
P503();
return;
dcl-proc localProc;
  theCharVar = 'Hello from P2342 in the procedure';
end-proc;