**free

ctl-opt dftactgrp(*no);

dcl-pi P2590;
end-pi;

dcl-s theCharVar Char(52);

/copy 'qrpgleref/P2538.rpgleinc'
/copy 'qrpgleref/P326.rpgleinc'
/copy 'qrpgleref/P1899.rpgleinc'

dcl-ds T807 ext qualified;
end-ds;

EXEC SQL SELECT * INTO :T807 FROM T807 LIMIT 1;

theCharVar = 'Hello from P2590';
dsply theCharVar;
callp localProc();
P2538();
P326();
P1899();
return;
dcl-proc localProc;
  theCharVar = 'Hello from P2590 in the procedure';
end-proc;