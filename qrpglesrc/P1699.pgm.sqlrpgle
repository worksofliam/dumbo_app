**free

ctl-opt dftactgrp(*no);

dcl-pi P1699;
end-pi;

dcl-s theCharVar Char(52);

/copy 'qrpgleref/P1174.rpgleinc'
/copy 'qrpgleref/P1696.rpgleinc'
/copy 'qrpgleref/P61.rpgleinc'

dcl-ds T881 ext qualified;
end-ds;

EXEC SQL SELECT * INTO :T881 FROM T881 LIMIT 1;

theCharVar = 'Hello from P1699';
dsply theCharVar;
callp localProc();
P1174();
P1696();
P61();
return;
dcl-proc localProc;
  theCharVar = 'Hello from P1699 in the procedure';
end-proc;