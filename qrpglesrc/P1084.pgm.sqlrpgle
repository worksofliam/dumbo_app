**free

ctl-opt dftactgrp(*no);

dcl-pi P1084;
end-pi;

dcl-s theCharVar Char(52);

/copy 'qrpgleref/P92.rpgleinc'
/copy 'qrpgleref/P774.rpgleinc'
/copy 'qrpgleref/P211.rpgleinc'

dcl-ds T751 ext qualified;
end-ds;

EXEC SQL SELECT * INTO :T751 FROM T751 LIMIT 1;

theCharVar = 'Hello from P1084';
dsply theCharVar;
callp localProc();
P92();
P774();
P211();
return;
dcl-proc localProc;
  theCharVar = 'Hello from P1084 in the procedure';
end-proc;