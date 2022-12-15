**free

ctl-opt dftactgrp(*no);

dcl-pi P1096;
end-pi;

dcl-s theCharVar Char(52);

/copy 'qrpgleref/P539.rpgleinc'
/copy 'qrpgleref/P117.rpgleinc'
/copy 'qrpgleref/P169.rpgleinc'

dcl-ds T87 ext qualified;
end-ds;

EXEC SQL SELECT * INTO :T87 FROM T87 LIMIT 1;

theCharVar = 'Hello from P1096';
dsply theCharVar;
callp localProc();
P539();
P117();
P169();
return;
dcl-proc localProc;
  theCharVar = 'Hello from P1096 in the procedure';
end-proc;