**free

ctl-opt dftactgrp(*no);

dcl-pi P2542;
end-pi;

dcl-s theCharVar Char(52);

/copy 'qrpgleref/P1546.rpgleinc'
/copy 'qrpgleref/P1886.rpgleinc'
/copy 'qrpgleref/P1617.rpgleinc'

dcl-ds T267 ext qualified;
end-ds;

EXEC SQL SELECT * INTO :T267 FROM T267 LIMIT 1;

theCharVar = 'Hello from P2542';
dsply theCharVar;
callp localProc();
P1546();
P1886();
P1617();
return;
dcl-proc localProc;
  theCharVar = 'Hello from P2542 in the procedure';
end-proc;