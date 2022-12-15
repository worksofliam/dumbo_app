**free

ctl-opt dftactgrp(*no);

dcl-pi P2191;
end-pi;

dcl-s theCharVar Char(52);

/copy 'qrpgleref/P1250.rpgleinc'
/copy 'qrpgleref/P2035.rpgleinc'
/copy 'qrpgleref/P1208.rpgleinc'

dcl-ds T606 ext qualified;
end-ds;

EXEC SQL SELECT * INTO :T606 FROM T606 LIMIT 1;

theCharVar = 'Hello from P2191';
dsply theCharVar;
callp localProc();
P1250();
P2035();
P1208();
return;
dcl-proc localProc;
  theCharVar = 'Hello from P2191 in the procedure';
end-proc;