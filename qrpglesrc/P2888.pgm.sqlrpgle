**free

ctl-opt dftactgrp(*no);

dcl-pi P2888;
end-pi;

dcl-s theCharVar Char(52);

/copy 'qrpgleref/P157.rpgleinc'
/copy 'qrpgleref/P231.rpgleinc'
/copy 'qrpgleref/P127.rpgleinc'

dcl-ds T125 ext qualified;
end-ds;

EXEC SQL SELECT * INTO :T125 FROM T125 LIMIT 1;

theCharVar = 'Hello from P2888';
dsply theCharVar;
callp localProc();
P157();
P231();
P127();
return;
dcl-proc localProc;
  theCharVar = 'Hello from P2888 in the procedure';
end-proc;