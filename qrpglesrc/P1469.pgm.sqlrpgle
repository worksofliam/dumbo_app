**free

ctl-opt dftactgrp(*no);

dcl-pi P1469;
end-pi;

dcl-s theCharVar Char(52);

/copy 'qrpgleref/P117.rpgleinc'
/copy 'qrpgleref/P158.rpgleinc'
/copy 'qrpgleref/P237.rpgleinc'

dcl-ds T1809 ext qualified;
end-ds;

EXEC SQL SELECT * INTO :T1809 FROM T1809 LIMIT 1;

theCharVar = 'Hello from P1469';
dsply theCharVar;
callp localProc();
P117();
P158();
P237();
return;
dcl-proc localProc;
  theCharVar = 'Hello from P1469 in the procedure';
end-proc;