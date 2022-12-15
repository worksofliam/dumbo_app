**free

ctl-opt dftactgrp(*no);

dcl-pi P1400;
end-pi;

dcl-s theCharVar Char(52);

/copy 'qrpgleref/P1103.rpgleinc'
/copy 'qrpgleref/P838.rpgleinc'
/copy 'qrpgleref/P845.rpgleinc'

dcl-ds T377 ext qualified;
end-ds;

EXEC SQL SELECT * INTO :T377 FROM T377 LIMIT 1;

theCharVar = 'Hello from P1400';
dsply theCharVar;
callp localProc();
P1103();
P838();
P845();
return;
dcl-proc localProc;
  theCharVar = 'Hello from P1400 in the procedure';
end-proc;