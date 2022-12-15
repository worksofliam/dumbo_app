**free

ctl-opt dftactgrp(*no);

dcl-pi P4208;
end-pi;

dcl-s theCharVar Char(52);

/copy 'qrpgleref/P1980.rpgleinc'
/copy 'qrpgleref/P2154.rpgleinc'
/copy 'qrpgleref/P2129.rpgleinc'

dcl-ds T523 ext qualified;
end-ds;

EXEC SQL SELECT * INTO :T523 FROM T523 LIMIT 1;

theCharVar = 'Hello from P4208';
dsply theCharVar;
callp localProc();
P1980();
P2154();
P2129();
return;
dcl-proc localProc;
  theCharVar = 'Hello from P4208 in the procedure';
end-proc;