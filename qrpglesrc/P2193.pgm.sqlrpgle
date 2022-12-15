**free

ctl-opt dftactgrp(*no);

dcl-pi P2193;
end-pi;

dcl-s theCharVar Char(52);

/copy 'qrpgleref/P2162.rpgleinc'
/copy 'qrpgleref/P1286.rpgleinc'
/copy 'qrpgleref/P1596.rpgleinc'

dcl-ds T329 ext qualified;
end-ds;

EXEC SQL SELECT * INTO :T329 FROM T329 LIMIT 1;

theCharVar = 'Hello from P2193';
dsply theCharVar;
callp localProc();
P2162();
P1286();
P1596();
return;
dcl-proc localProc;
  theCharVar = 'Hello from P2193 in the procedure';
end-proc;