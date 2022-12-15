**free

ctl-opt dftactgrp(*no);

dcl-pi P2689;
end-pi;

dcl-s theCharVar Char(52);

/copy 'qrpgleref/P2534.rpgleinc'
/copy 'qrpgleref/P1982.rpgleinc'
/copy 'qrpgleref/P432.rpgleinc'

dcl-ds T1759 ext qualified;
end-ds;

EXEC SQL SELECT * INTO :T1759 FROM T1759 LIMIT 1;

theCharVar = 'Hello from P2689';
dsply theCharVar;
callp localProc();
P2534();
P1982();
P432();
return;
dcl-proc localProc;
  theCharVar = 'Hello from P2689 in the procedure';
end-proc;