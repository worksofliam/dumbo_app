**free

ctl-opt dftactgrp(*no);

dcl-pi P3034;
end-pi;

dcl-s theCharVar Char(52);

/copy 'qrpgleref/P1851.rpgleinc'
/copy 'qrpgleref/P2601.rpgleinc'
/copy 'qrpgleref/P231.rpgleinc'

dcl-ds T390 ext qualified;
end-ds;

EXEC SQL SELECT * INTO :T390 FROM T390 LIMIT 1;

theCharVar = 'Hello from P3034';
dsply theCharVar;
callp localProc();
P1851();
P2601();
P231();
return;
dcl-proc localProc;
  theCharVar = 'Hello from P3034 in the procedure';
end-proc;