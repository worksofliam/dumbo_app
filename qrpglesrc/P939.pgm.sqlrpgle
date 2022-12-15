**free

ctl-opt dftactgrp(*no);

dcl-pi P939;
end-pi;

dcl-s theCharVar Char(52);

/copy 'qrpgleref/P157.rpgleinc'
/copy 'qrpgleref/P553.rpgleinc'
/copy 'qrpgleref/P788.rpgleinc'

dcl-ds T152 ext qualified;
end-ds;

EXEC SQL SELECT * INTO :T152 FROM T152 LIMIT 1;

theCharVar = 'Hello from P939';
dsply theCharVar;
callp localProc();
P157();
P553();
P788();
return;
dcl-proc localProc;
  theCharVar = 'Hello from P939 in the procedure';
end-proc;