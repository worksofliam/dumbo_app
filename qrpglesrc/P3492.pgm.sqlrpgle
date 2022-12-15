**free

ctl-opt dftactgrp(*no);

dcl-pi P3492;
end-pi;

dcl-s theCharVar Char(52);

/copy 'qrpgleref/P600.rpgleinc'
/copy 'qrpgleref/P268.rpgleinc'
/copy 'qrpgleref/P1414.rpgleinc'

dcl-ds T1589 ext qualified;
end-ds;

EXEC SQL SELECT * INTO :T1589 FROM T1589 LIMIT 1;

theCharVar = 'Hello from P3492';
dsply theCharVar;
callp localProc();
P600();
P268();
P1414();
return;
dcl-proc localProc;
  theCharVar = 'Hello from P3492 in the procedure';
end-proc;