**free

ctl-opt dftactgrp(*no);

dcl-pi P598;
end-pi;

dcl-s theCharVar Char(52);

/copy 'qrpgleref/P8.rpgleinc'
/copy 'qrpgleref/P383.rpgleinc'
/copy 'qrpgleref/P250.rpgleinc'

dcl-ds T234 ext qualified;
end-ds;

EXEC SQL SELECT * INTO :T234 FROM T234 LIMIT 1;

theCharVar = 'Hello from P598';
dsply theCharVar;
callp localProc();
P8();
P383();
P250();
return;
dcl-proc localProc;
  theCharVar = 'Hello from P598 in the procedure';
end-proc;