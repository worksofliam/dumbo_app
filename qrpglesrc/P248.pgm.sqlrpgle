**free

ctl-opt dftactgrp(*no);

dcl-pi P248;
end-pi;

dcl-s theCharVar Char(52);

/copy 'qrpgleref/P167.rpgleinc'
/copy 'qrpgleref/P235.rpgleinc'
/copy 'qrpgleref/P82.rpgleinc'

dcl-ds T996 ext qualified;
end-ds;

EXEC SQL SELECT * INTO :T996 FROM T996 LIMIT 1;

theCharVar = 'Hello from P248';
dsply theCharVar;
callp localProc();
P167();
P235();
P82();
return;
dcl-proc localProc;
  theCharVar = 'Hello from P248 in the procedure';
end-proc;