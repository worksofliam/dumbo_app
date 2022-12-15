**free

ctl-opt dftactgrp(*no);

dcl-pi P5040;
end-pi;

dcl-s theCharVar Char(52);

/copy 'qrpgleref/P1688.rpgleinc'
/copy 'qrpgleref/P1313.rpgleinc'
/copy 'qrpgleref/P1254.rpgleinc'

dcl-ds T564 ext qualified;
end-ds;

EXEC SQL SELECT * INTO :T564 FROM T564 LIMIT 1;

theCharVar = 'Hello from P5040';
dsply theCharVar;
callp localProc();
P1688();
P1313();
P1254();
return;
dcl-proc localProc;
  theCharVar = 'Hello from P5040 in the procedure';
end-proc;