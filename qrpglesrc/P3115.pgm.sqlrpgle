**free

ctl-opt dftactgrp(*no);

dcl-pi P3115;
end-pi;

dcl-s theCharVar Char(52);

/copy 'qrpgleref/P488.rpgleinc'
/copy 'qrpgleref/P2000.rpgleinc'
/copy 'qrpgleref/P2621.rpgleinc'

dcl-ds T536 ext qualified;
end-ds;

EXEC SQL SELECT * INTO :T536 FROM T536 LIMIT 1;

theCharVar = 'Hello from P3115';
dsply theCharVar;
callp localProc();
P488();
P2000();
P2621();
return;
dcl-proc localProc;
  theCharVar = 'Hello from P3115 in the procedure';
end-proc;