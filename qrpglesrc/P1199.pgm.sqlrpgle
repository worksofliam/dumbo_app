**free

ctl-opt dftactgrp(*no);

dcl-pi P1199;
end-pi;

dcl-s theCharVar Char(52);

/copy 'qrpgleref/P388.rpgleinc'
/copy 'qrpgleref/P1127.rpgleinc'
/copy 'qrpgleref/P3.rpgleinc'

dcl-ds T798 ext qualified;
end-ds;

EXEC SQL SELECT * INTO :T798 FROM T798 LIMIT 1;

theCharVar = 'Hello from P1199';
dsply theCharVar;
callp localProc();
P388();
P1127();
P3();
return;
dcl-proc localProc;
  theCharVar = 'Hello from P1199 in the procedure';
end-proc;