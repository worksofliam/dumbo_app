**free

ctl-opt dftactgrp(*no);

dcl-pi P5194;
end-pi;

dcl-s theCharVar Char(52);

/copy 'qrpgleref/P4867.rpgleinc'
/copy 'qrpgleref/P1099.rpgleinc'
/copy 'qrpgleref/P709.rpgleinc'

dcl-ds T1550 ext qualified;
end-ds;

EXEC SQL SELECT * INTO :T1550 FROM T1550 LIMIT 1;

theCharVar = 'Hello from P5194';
dsply theCharVar;
callp localProc();
P4867();
P1099();
P709();
return;
dcl-proc localProc;
  theCharVar = 'Hello from P5194 in the procedure';
end-proc;