**free

ctl-opt dftactgrp(*no);

dcl-pi P461;
end-pi;

dcl-s theCharVar Char(52);

/copy 'qrpgleref/P342.rpgleinc'
/copy 'qrpgleref/P107.rpgleinc'
/copy 'qrpgleref/P278.rpgleinc'

dcl-ds T669 ext qualified;
end-ds;

EXEC SQL SELECT * INTO :T669 FROM T669 LIMIT 1;

theCharVar = 'Hello from P461';
dsply theCharVar;
callp localProc();
P342();
P107();
P278();
return;
dcl-proc localProc;
  theCharVar = 'Hello from P461 in the procedure';
end-proc;