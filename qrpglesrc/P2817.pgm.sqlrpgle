**free

ctl-opt dftactgrp(*no);

dcl-pi P2817;
end-pi;

dcl-s theCharVar Char(52);

/copy 'qrpgleref/P1567.rpgleinc'
/copy 'qrpgleref/P1038.rpgleinc'
/copy 'qrpgleref/P1980.rpgleinc'

dcl-ds T606 ext qualified;
end-ds;

EXEC SQL SELECT * INTO :T606 FROM T606 LIMIT 1;

theCharVar = 'Hello from P2817';
dsply theCharVar;
callp localProc();
P1567();
P1038();
P1980();
return;
dcl-proc localProc;
  theCharVar = 'Hello from P2817 in the procedure';
end-proc;