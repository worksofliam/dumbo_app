**free

ctl-opt dftactgrp(*no);

dcl-pi P2828;
end-pi;

dcl-s theCharVar Char(52);

/copy 'qrpgleref/P70.rpgleinc'
/copy 'qrpgleref/P98.rpgleinc'
/copy 'qrpgleref/P2708.rpgleinc'

dcl-ds T121 ext qualified;
end-ds;

EXEC SQL SELECT * INTO :T121 FROM T121 LIMIT 1;

theCharVar = 'Hello from P2828';
dsply theCharVar;
callp localProc();
P70();
P98();
P2708();
return;
dcl-proc localProc;
  theCharVar = 'Hello from P2828 in the procedure';
end-proc;