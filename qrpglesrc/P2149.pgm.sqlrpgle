**free

ctl-opt dftactgrp(*no);

dcl-pi P2149;
end-pi;

dcl-s theCharVar Char(52);

/copy 'qrpgleref/P1816.rpgleinc'
/copy 'qrpgleref/P1556.rpgleinc'
/copy 'qrpgleref/P507.rpgleinc'

dcl-ds T31 ext qualified;
end-ds;

EXEC SQL SELECT * INTO :T31 FROM T31 LIMIT 1;

theCharVar = 'Hello from P2149';
dsply theCharVar;
callp localProc();
P1816();
P1556();
P507();
return;
dcl-proc localProc;
  theCharVar = 'Hello from P2149 in the procedure';
end-proc;