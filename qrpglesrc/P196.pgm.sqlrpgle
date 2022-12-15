**free

ctl-opt dftactgrp(*no);

dcl-pi P196;
end-pi;

dcl-s theCharVar Char(52);

/copy 'qrpgleref/P123.rpgleinc'
/copy 'qrpgleref/P108.rpgleinc'
/copy 'qrpgleref/P53.rpgleinc'

dcl-ds T21 ext qualified;
end-ds;

EXEC SQL SELECT * INTO :T21 FROM T21 LIMIT 1;

theCharVar = 'Hello from P196';
dsply theCharVar;
callp localProc();
P123();
P108();
P53();
return;
dcl-proc localProc;
  theCharVar = 'Hello from P196 in the procedure';
end-proc;