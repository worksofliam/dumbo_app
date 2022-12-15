**free

ctl-opt dftactgrp(*no);

dcl-pi P674;
end-pi;

dcl-s theCharVar Char(52);

/copy 'qrpgleref/P383.rpgleinc'
/copy 'qrpgleref/P20.rpgleinc'
/copy 'qrpgleref/P61.rpgleinc'

dcl-ds T1832 ext qualified;
end-ds;

EXEC SQL SELECT * INTO :T1832 FROM T1832 LIMIT 1;

theCharVar = 'Hello from P674';
dsply theCharVar;
callp localProc();
P383();
P20();
P61();
return;
dcl-proc localProc;
  theCharVar = 'Hello from P674 in the procedure';
end-proc;