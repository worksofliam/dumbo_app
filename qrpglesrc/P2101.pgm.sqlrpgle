**free

ctl-opt dftactgrp(*no);

dcl-pi P2101;
end-pi;

dcl-s theCharVar Char(52);

/copy 'qrpgleref/P1635.rpgleinc'
/copy 'qrpgleref/P1869.rpgleinc'
/copy 'qrpgleref/P1032.rpgleinc'

dcl-ds T516 ext qualified;
end-ds;

EXEC SQL SELECT * INTO :T516 FROM T516 LIMIT 1;

theCharVar = 'Hello from P2101';
dsply theCharVar;
callp localProc();
P1635();
P1869();
P1032();
return;
dcl-proc localProc;
  theCharVar = 'Hello from P2101 in the procedure';
end-proc;