**free

ctl-opt dftactgrp(*no);

dcl-pi P557;
end-pi;

dcl-s theCharVar Char(52);

/copy 'qrpgleref/P408.rpgleinc'
/copy 'qrpgleref/P43.rpgleinc'
/copy 'qrpgleref/P244.rpgleinc'

dcl-ds T1868 ext qualified;
end-ds;

EXEC SQL SELECT * INTO :T1868 FROM T1868 LIMIT 1;

theCharVar = 'Hello from P557';
dsply theCharVar;
callp localProc();
P408();
P43();
P244();
return;
dcl-proc localProc;
  theCharVar = 'Hello from P557 in the procedure';
end-proc;