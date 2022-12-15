**free

ctl-opt dftactgrp(*no);

dcl-pi P226;
end-pi;

dcl-s theCharVar Char(52);

/copy 'qrpgleref/P8.rpgleinc'
/copy 'qrpgleref/P218.rpgleinc'
/copy 'qrpgleref/P204.rpgleinc'

dcl-ds T99 ext qualified;
end-ds;

EXEC SQL SELECT * INTO :T99 FROM T99 LIMIT 1;

theCharVar = 'Hello from P226';
dsply theCharVar;
callp localProc();
P8();
P218();
P204();
return;
dcl-proc localProc;
  theCharVar = 'Hello from P226 in the procedure';
end-proc;