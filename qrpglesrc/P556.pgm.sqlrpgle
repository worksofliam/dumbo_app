**free

ctl-opt dftactgrp(*no);

dcl-pi P556;
end-pi;

dcl-s theCharVar Char(52);

/copy 'qrpgleref/P478.rpgleinc'
/copy 'qrpgleref/P82.rpgleinc'
/copy 'qrpgleref/P78.rpgleinc'

dcl-ds T63 ext qualified;
end-ds;

EXEC SQL SELECT * INTO :T63 FROM T63 LIMIT 1;

theCharVar = 'Hello from P556';
dsply theCharVar;
callp localProc();
P478();
P82();
P78();
return;
dcl-proc localProc;
  theCharVar = 'Hello from P556 in the procedure';
end-proc;