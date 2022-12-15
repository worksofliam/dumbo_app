**free

ctl-opt dftactgrp(*no);

dcl-pi P2709;
end-pi;

dcl-s theCharVar Char(52);

/copy 'qrpgleref/P246.rpgleinc'
/copy 'qrpgleref/P906.rpgleinc'
/copy 'qrpgleref/P1608.rpgleinc'

dcl-ds T27 ext qualified;
end-ds;

EXEC SQL SELECT * INTO :T27 FROM T27 LIMIT 1;

theCharVar = 'Hello from P2709';
dsply theCharVar;
callp localProc();
P246();
P906();
P1608();
return;
dcl-proc localProc;
  theCharVar = 'Hello from P2709 in the procedure';
end-proc;