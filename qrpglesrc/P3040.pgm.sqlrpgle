**free

ctl-opt dftactgrp(*no);

dcl-pi P3040;
end-pi;

dcl-s theCharVar Char(52);

/copy 'qrpgleref/P1811.rpgleinc'
/copy 'qrpgleref/P1434.rpgleinc'
/copy 'qrpgleref/P2667.rpgleinc'

dcl-ds T513 ext qualified;
end-ds;

EXEC SQL SELECT * INTO :T513 FROM T513 LIMIT 1;

theCharVar = 'Hello from P3040';
dsply theCharVar;
callp localProc();
P1811();
P1434();
P2667();
return;
dcl-proc localProc;
  theCharVar = 'Hello from P3040 in the procedure';
end-proc;