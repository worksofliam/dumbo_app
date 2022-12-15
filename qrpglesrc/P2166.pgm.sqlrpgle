**free

ctl-opt dftactgrp(*no);

dcl-pi P2166;
end-pi;

dcl-s theCharVar Char(52);

/copy 'qrpgleref/P535.rpgleinc'
/copy 'qrpgleref/P1122.rpgleinc'
/copy 'qrpgleref/P594.rpgleinc'

dcl-ds T1127 ext qualified;
end-ds;

EXEC SQL SELECT * INTO :T1127 FROM T1127 LIMIT 1;

theCharVar = 'Hello from P2166';
dsply theCharVar;
callp localProc();
P535();
P1122();
P594();
return;
dcl-proc localProc;
  theCharVar = 'Hello from P2166 in the procedure';
end-proc;