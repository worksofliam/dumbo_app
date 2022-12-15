**free

ctl-opt dftactgrp(*no);

dcl-pi P2937;
end-pi;

dcl-s theCharVar Char(52);

/copy 'qrpgleref/P2827.rpgleinc'
/copy 'qrpgleref/P266.rpgleinc'
/copy 'qrpgleref/P2142.rpgleinc'

dcl-ds T1729 ext qualified;
end-ds;

EXEC SQL SELECT * INTO :T1729 FROM T1729 LIMIT 1;

theCharVar = 'Hello from P2937';
dsply theCharVar;
callp localProc();
P2827();
P266();
P2142();
return;
dcl-proc localProc;
  theCharVar = 'Hello from P2937 in the procedure';
end-proc;