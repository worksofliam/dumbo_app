**free

ctl-opt dftactgrp(*no);

dcl-pi P2237;
end-pi;

dcl-s theCharVar Char(52);

/copy 'qrpgleref/P1154.rpgleinc'
/copy 'qrpgleref/P1454.rpgleinc'
/copy 'qrpgleref/P1035.rpgleinc'

dcl-ds T580 ext qualified;
end-ds;

EXEC SQL SELECT * INTO :T580 FROM T580 LIMIT 1;

theCharVar = 'Hello from P2237';
dsply theCharVar;
callp localProc();
P1154();
P1454();
P1035();
return;
dcl-proc localProc;
  theCharVar = 'Hello from P2237 in the procedure';
end-proc;