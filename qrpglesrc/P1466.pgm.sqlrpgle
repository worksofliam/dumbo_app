**free

ctl-opt dftactgrp(*no);

dcl-pi P1466;
end-pi;

dcl-s theCharVar Char(52);

/copy 'qrpgleref/P1269.rpgleinc'
/copy 'qrpgleref/P763.rpgleinc'
/copy 'qrpgleref/P765.rpgleinc'

dcl-ds T390 ext qualified;
end-ds;

EXEC SQL SELECT * INTO :T390 FROM T390 LIMIT 1;

theCharVar = 'Hello from P1466';
dsply theCharVar;
callp localProc();
P1269();
P763();
P765();
return;
dcl-proc localProc;
  theCharVar = 'Hello from P1466 in the procedure';
end-proc;