**free

ctl-opt dftactgrp(*no);

dcl-pi P1210;
end-pi;

dcl-s theCharVar Char(52);

/copy 'qrpgleref/P1203.rpgleinc'
/copy 'qrpgleref/P227.rpgleinc'
/copy 'qrpgleref/P224.rpgleinc'

dcl-ds T133 ext qualified;
end-ds;

EXEC SQL SELECT * INTO :T133 FROM T133 LIMIT 1;

theCharVar = 'Hello from P1210';
dsply theCharVar;
callp localProc();
P1203();
P227();
P224();
return;
dcl-proc localProc;
  theCharVar = 'Hello from P1210 in the procedure';
end-proc;