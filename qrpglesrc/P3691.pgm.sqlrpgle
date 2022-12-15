**free

ctl-opt dftactgrp(*no);

dcl-pi P3691;
end-pi;

dcl-s theCharVar Char(52);

/copy 'qrpgleref/P1356.rpgleinc'
/copy 'qrpgleref/P1158.rpgleinc'
/copy 'qrpgleref/P63.rpgleinc'

dcl-ds T815 ext qualified;
end-ds;

EXEC SQL SELECT * INTO :T815 FROM T815 LIMIT 1;

theCharVar = 'Hello from P3691';
dsply theCharVar;
callp localProc();
P1356();
P1158();
P63();
return;
dcl-proc localProc;
  theCharVar = 'Hello from P3691 in the procedure';
end-proc;