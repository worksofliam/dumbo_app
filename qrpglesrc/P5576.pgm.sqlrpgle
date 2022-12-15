**free

ctl-opt dftactgrp(*no);

dcl-pi P5576;
end-pi;

dcl-s theCharVar Char(52);

/copy 'qrpgleref/P2216.rpgleinc'
/copy 'qrpgleref/P2509.rpgleinc'
/copy 'qrpgleref/P3288.rpgleinc'

dcl-ds T260 ext qualified;
end-ds;

EXEC SQL SELECT * INTO :T260 FROM T260 LIMIT 1;

theCharVar = 'Hello from P5576';
dsply theCharVar;
callp localProc();
P2216();
P2509();
P3288();
return;
dcl-proc localProc;
  theCharVar = 'Hello from P5576 in the procedure';
end-proc;