**free

ctl-opt dftactgrp(*no);

dcl-pi P249;
end-pi;

dcl-s theCharVar Char(52);

/copy 'qrpgleref/P137.rpgleinc'
/copy 'qrpgleref/P162.rpgleinc'
/copy 'qrpgleref/P175.rpgleinc'

dcl-ds T69 ext qualified;
end-ds;

EXEC SQL SELECT * INTO :T69 FROM T69 LIMIT 1;

theCharVar = 'Hello from P249';
dsply theCharVar;
callp localProc();
P137();
P162();
P175();
return;
dcl-proc localProc;
  theCharVar = 'Hello from P249 in the procedure';
end-proc;