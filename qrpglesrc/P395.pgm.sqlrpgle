**free

ctl-opt dftactgrp(*no);

dcl-pi P395;
end-pi;

dcl-s theCharVar Char(52);

/copy 'qrpgleref/P116.rpgleinc'
/copy 'qrpgleref/P352.rpgleinc'
/copy 'qrpgleref/P348.rpgleinc'

dcl-ds T3 ext qualified;
end-ds;

EXEC SQL SELECT * INTO :T3 FROM T3 LIMIT 1;

theCharVar = 'Hello from P395';
dsply theCharVar;
callp localProc();
P116();
P352();
P348();
return;
dcl-proc localProc;
  theCharVar = 'Hello from P395 in the procedure';
end-proc;