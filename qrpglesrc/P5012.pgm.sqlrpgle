**free

ctl-opt dftactgrp(*no);

dcl-pi P5012;
end-pi;

dcl-s theCharVar Char(52);

/copy 'qrpgleref/P4894.rpgleinc'
/copy 'qrpgleref/P1783.rpgleinc'
/copy 'qrpgleref/P1382.rpgleinc'

dcl-ds T538 ext qualified;
end-ds;

EXEC SQL SELECT * INTO :T538 FROM T538 LIMIT 1;

theCharVar = 'Hello from P5012';
dsply theCharVar;
callp localProc();
P4894();
P1783();
P1382();
return;
dcl-proc localProc;
  theCharVar = 'Hello from P5012 in the procedure';
end-proc;