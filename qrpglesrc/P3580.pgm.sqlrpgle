**free

ctl-opt dftactgrp(*no);

dcl-pi P3580;
end-pi;

dcl-s theCharVar Char(52);

/copy 'qrpgleref/P577.rpgleinc'
/copy 'qrpgleref/P2482.rpgleinc'
/copy 'qrpgleref/P1880.rpgleinc'

dcl-ds T13 ext qualified;
end-ds;

EXEC SQL SELECT * INTO :T13 FROM T13 LIMIT 1;

theCharVar = 'Hello from P3580';
dsply theCharVar;
callp localProc();
P577();
P2482();
P1880();
return;
dcl-proc localProc;
  theCharVar = 'Hello from P3580 in the procedure';
end-proc;