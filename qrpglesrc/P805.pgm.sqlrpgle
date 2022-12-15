**free

ctl-opt dftactgrp(*no);

dcl-pi P805;
end-pi;

dcl-s theCharVar Char(52);

/copy 'qrpgleref/P553.rpgleinc'
/copy 'qrpgleref/P224.rpgleinc'
/copy 'qrpgleref/P238.rpgleinc'

dcl-ds T1072 ext qualified;
end-ds;

EXEC SQL SELECT * INTO :T1072 FROM T1072 LIMIT 1;

theCharVar = 'Hello from P805';
dsply theCharVar;
callp localProc();
P553();
P224();
P238();
return;
dcl-proc localProc;
  theCharVar = 'Hello from P805 in the procedure';
end-proc;