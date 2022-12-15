**free

ctl-opt dftactgrp(*no);

dcl-pi P1328;
end-pi;

dcl-s theCharVar Char(52);

/copy 'qrpgleref/P973.rpgleinc'
/copy 'qrpgleref/P465.rpgleinc'
/copy 'qrpgleref/P673.rpgleinc'

dcl-ds T140 ext qualified;
end-ds;

EXEC SQL SELECT * INTO :T140 FROM T140 LIMIT 1;

theCharVar = 'Hello from P1328';
dsply theCharVar;
callp localProc();
P973();
P465();
P673();
return;
dcl-proc localProc;
  theCharVar = 'Hello from P1328 in the procedure';
end-proc;