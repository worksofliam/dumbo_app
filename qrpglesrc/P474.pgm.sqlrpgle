**free

ctl-opt dftactgrp(*no);

dcl-pi P474;
end-pi;

dcl-s theCharVar Char(52);

/copy 'qrpgleref/P330.rpgleinc'
/copy 'qrpgleref/P278.rpgleinc'
/copy 'qrpgleref/P460.rpgleinc'

dcl-ds T646 ext qualified;
end-ds;

EXEC SQL SELECT * INTO :T646 FROM T646 LIMIT 1;

theCharVar = 'Hello from P474';
dsply theCharVar;
callp localProc();
P330();
P278();
P460();
return;
dcl-proc localProc;
  theCharVar = 'Hello from P474 in the procedure';
end-proc;