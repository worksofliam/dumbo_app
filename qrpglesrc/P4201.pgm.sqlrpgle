**free

ctl-opt dftactgrp(*no);

dcl-pi P4201;
end-pi;

dcl-s theCharVar Char(52);

/copy 'qrpgleref/P459.rpgleinc'
/copy 'qrpgleref/P1438.rpgleinc'
/copy 'qrpgleref/P1970.rpgleinc'

dcl-ds T381 ext qualified;
end-ds;

EXEC SQL SELECT * INTO :T381 FROM T381 LIMIT 1;

theCharVar = 'Hello from P4201';
dsply theCharVar;
callp localProc();
P459();
P1438();
P1970();
return;
dcl-proc localProc;
  theCharVar = 'Hello from P4201 in the procedure';
end-proc;