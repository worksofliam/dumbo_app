**free

ctl-opt dftactgrp(*no);

dcl-pi P2804;
end-pi;

dcl-s theCharVar Char(52);

/copy 'qrpgleref/P347.rpgleinc'
/copy 'qrpgleref/P659.rpgleinc'
/copy 'qrpgleref/P2293.rpgleinc'

dcl-ds T210 ext qualified;
end-ds;

EXEC SQL SELECT * INTO :T210 FROM T210 LIMIT 1;

theCharVar = 'Hello from P2804';
dsply theCharVar;
callp localProc();
P347();
P659();
P2293();
return;
dcl-proc localProc;
  theCharVar = 'Hello from P2804 in the procedure';
end-proc;