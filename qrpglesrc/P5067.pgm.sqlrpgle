**free

ctl-opt dftactgrp(*no);

dcl-pi P5067;
end-pi;

dcl-s theCharVar Char(52);

/copy 'qrpgleref/P2919.rpgleinc'
/copy 'qrpgleref/P4608.rpgleinc'
/copy 'qrpgleref/P5024.rpgleinc'

dcl-ds T1206 ext qualified;
end-ds;

EXEC SQL SELECT * INTO :T1206 FROM T1206 LIMIT 1;

theCharVar = 'Hello from P5067';
dsply theCharVar;
callp localProc();
P2919();
P4608();
P5024();
return;
dcl-proc localProc;
  theCharVar = 'Hello from P5067 in the procedure';
end-proc;