**free

ctl-opt dftactgrp(*no);

dcl-pi P2280;
end-pi;

dcl-s theCharVar Char(52);

/copy 'qrpgleref/P108.rpgleinc'
/copy 'qrpgleref/P1388.rpgleinc'
/copy 'qrpgleref/P586.rpgleinc'

dcl-ds T254 ext qualified;
end-ds;

EXEC SQL SELECT * INTO :T254 FROM T254 LIMIT 1;

theCharVar = 'Hello from P2280';
dsply theCharVar;
callp localProc();
P108();
P1388();
P586();
return;
dcl-proc localProc;
  theCharVar = 'Hello from P2280 in the procedure';
end-proc;