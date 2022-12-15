**free

ctl-opt dftactgrp(*no);

dcl-pi P2656;
end-pi;

dcl-s theCharVar Char(52);

/copy 'qrpgleref/P674.rpgleinc'
/copy 'qrpgleref/P338.rpgleinc'
/copy 'qrpgleref/P1523.rpgleinc'

dcl-ds T1670 ext qualified;
end-ds;

EXEC SQL SELECT * INTO :T1670 FROM T1670 LIMIT 1;

theCharVar = 'Hello from P2656';
dsply theCharVar;
callp localProc();
P674();
P338();
P1523();
return;
dcl-proc localProc;
  theCharVar = 'Hello from P2656 in the procedure';
end-proc;