**free

ctl-opt dftactgrp(*no);

dcl-pi P1943;
end-pi;

dcl-s theCharVar Char(52);

/copy 'qrpgleref/P1073.rpgleinc'
/copy 'qrpgleref/P759.rpgleinc'
/copy 'qrpgleref/P377.rpgleinc'

dcl-ds T108 ext qualified;
end-ds;

EXEC SQL SELECT * INTO :T108 FROM T108 LIMIT 1;

theCharVar = 'Hello from P1943';
dsply theCharVar;
callp localProc();
P1073();
P759();
P377();
return;
dcl-proc localProc;
  theCharVar = 'Hello from P1943 in the procedure';
end-proc;