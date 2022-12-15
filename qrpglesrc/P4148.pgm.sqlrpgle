**free

ctl-opt dftactgrp(*no);

dcl-pi P4148;
end-pi;

dcl-s theCharVar Char(52);

/copy 'qrpgleref/P4000.rpgleinc'
/copy 'qrpgleref/P2411.rpgleinc'
/copy 'qrpgleref/P2552.rpgleinc'

dcl-ds T851 ext qualified;
end-ds;

EXEC SQL SELECT * INTO :T851 FROM T851 LIMIT 1;

theCharVar = 'Hello from P4148';
dsply theCharVar;
callp localProc();
P4000();
P2411();
P2552();
return;
dcl-proc localProc;
  theCharVar = 'Hello from P4148 in the procedure';
end-proc;