**free

ctl-opt dftactgrp(*no);

dcl-pi P5266;
end-pi;

dcl-s theCharVar Char(52);

/copy 'qrpgleref/P3632.rpgleinc'
/copy 'qrpgleref/P1448.rpgleinc'
/copy 'qrpgleref/P4493.rpgleinc'

dcl-ds T323 ext qualified;
end-ds;

EXEC SQL SELECT * INTO :T323 FROM T323 LIMIT 1;

theCharVar = 'Hello from P5266';
dsply theCharVar;
callp localProc();
P3632();
P1448();
P4493();
return;
dcl-proc localProc;
  theCharVar = 'Hello from P5266 in the procedure';
end-proc;