**free

ctl-opt dftactgrp(*no);

dcl-pi P257;
end-pi;

dcl-s theCharVar Char(52);

/copy 'qrpgleref/P146.rpgleinc'
/copy 'qrpgleref/P162.rpgleinc'
/copy 'qrpgleref/P167.rpgleinc'

dcl-ds T113 ext qualified;
end-ds;

EXEC SQL SELECT * INTO :T113 FROM T113 LIMIT 1;

theCharVar = 'Hello from P257';
dsply theCharVar;
callp localProc();
P146();
P162();
P167();
return;
dcl-proc localProc;
  theCharVar = 'Hello from P257 in the procedure';
end-proc;