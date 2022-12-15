**free

ctl-opt dftactgrp(*no);

dcl-pi P2517;
end-pi;

dcl-s theCharVar Char(52);

/copy 'qrpgleref/P2472.rpgleinc'
/copy 'qrpgleref/P1949.rpgleinc'
/copy 'qrpgleref/P842.rpgleinc'

dcl-ds T416 ext qualified;
end-ds;

EXEC SQL SELECT * INTO :T416 FROM T416 LIMIT 1;

theCharVar = 'Hello from P2517';
dsply theCharVar;
callp localProc();
P2472();
P1949();
P842();
return;
dcl-proc localProc;
  theCharVar = 'Hello from P2517 in the procedure';
end-proc;