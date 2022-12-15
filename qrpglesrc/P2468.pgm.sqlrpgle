**free

ctl-opt dftactgrp(*no);

dcl-pi P2468;
end-pi;

dcl-s theCharVar Char(52);

/copy 'qrpgleref/P1138.rpgleinc'
/copy 'qrpgleref/P404.rpgleinc'
/copy 'qrpgleref/P1183.rpgleinc'

dcl-ds T343 ext qualified;
end-ds;

EXEC SQL SELECT * INTO :T343 FROM T343 LIMIT 1;

theCharVar = 'Hello from P2468';
dsply theCharVar;
callp localProc();
P1138();
P404();
P1183();
return;
dcl-proc localProc;
  theCharVar = 'Hello from P2468 in the procedure';
end-proc;