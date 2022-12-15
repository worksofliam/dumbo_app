**free

ctl-opt dftactgrp(*no);

dcl-pi P1293;
end-pi;

dcl-s theCharVar Char(52);

/copy 'qrpgleref/P146.rpgleinc'
/copy 'qrpgleref/P298.rpgleinc'
/copy 'qrpgleref/P1020.rpgleinc'

dcl-ds T252 ext qualified;
end-ds;

EXEC SQL SELECT * INTO :T252 FROM T252 LIMIT 1;

theCharVar = 'Hello from P1293';
dsply theCharVar;
callp localProc();
P146();
P298();
P1020();
return;
dcl-proc localProc;
  theCharVar = 'Hello from P1293 in the procedure';
end-proc;