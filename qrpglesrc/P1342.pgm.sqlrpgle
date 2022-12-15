**free

ctl-opt dftactgrp(*no);

dcl-pi P1342;
end-pi;

dcl-s theCharVar Char(52);

/copy 'qrpgleref/P289.rpgleinc'
/copy 'qrpgleref/P1224.rpgleinc'
/copy 'qrpgleref/P1245.rpgleinc'

dcl-ds T1111 ext qualified;
end-ds;

EXEC SQL SELECT * INTO :T1111 FROM T1111 LIMIT 1;

theCharVar = 'Hello from P1342';
dsply theCharVar;
callp localProc();
P289();
P1224();
P1245();
return;
dcl-proc localProc;
  theCharVar = 'Hello from P1342 in the procedure';
end-proc;