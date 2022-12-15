**free

ctl-opt dftactgrp(*no);

dcl-pi P2388;
end-pi;

dcl-s theCharVar Char(52);

/copy 'qrpgleref/P1239.rpgleinc'
/copy 'qrpgleref/P624.rpgleinc'
/copy 'qrpgleref/P2348.rpgleinc'

dcl-ds T682 ext qualified;
end-ds;

EXEC SQL SELECT * INTO :T682 FROM T682 LIMIT 1;

theCharVar = 'Hello from P2388';
dsply theCharVar;
callp localProc();
P1239();
P624();
P2348();
return;
dcl-proc localProc;
  theCharVar = 'Hello from P2388 in the procedure';
end-proc;