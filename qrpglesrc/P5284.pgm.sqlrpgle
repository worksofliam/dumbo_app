**free

ctl-opt dftactgrp(*no);

dcl-pi P5284;
end-pi;

dcl-s theCharVar Char(52);

/copy 'qrpgleref/P954.rpgleinc'
/copy 'qrpgleref/P1256.rpgleinc'
/copy 'qrpgleref/P2168.rpgleinc'

dcl-ds T418 ext qualified;
end-ds;

EXEC SQL SELECT * INTO :T418 FROM T418 LIMIT 1;

theCharVar = 'Hello from P5284';
dsply theCharVar;
callp localProc();
P954();
P1256();
P2168();
return;
dcl-proc localProc;
  theCharVar = 'Hello from P5284 in the procedure';
end-proc;