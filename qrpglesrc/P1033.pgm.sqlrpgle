**free

ctl-opt dftactgrp(*no);

dcl-pi P1033;
end-pi;

dcl-s theCharVar Char(52);

/copy 'qrpgleref/P22.rpgleinc'
/copy 'qrpgleref/P583.rpgleinc'
/copy 'qrpgleref/P525.rpgleinc'

dcl-ds T279 ext qualified;
end-ds;

EXEC SQL SELECT * INTO :T279 FROM T279 LIMIT 1;

theCharVar = 'Hello from P1033';
dsply theCharVar;
callp localProc();
P22();
P583();
P525();
return;
dcl-proc localProc;
  theCharVar = 'Hello from P1033 in the procedure';
end-proc;