**free

ctl-opt dftactgrp(*no);

dcl-pi P3497;
end-pi;

dcl-s theCharVar Char(52);

/copy 'qrpgleref/P3368.rpgleinc'
/copy 'qrpgleref/P867.rpgleinc'
/copy 'qrpgleref/P3315.rpgleinc'

dcl-ds T51 ext qualified;
end-ds;

EXEC SQL SELECT * INTO :T51 FROM T51 LIMIT 1;

theCharVar = 'Hello from P3497';
dsply theCharVar;
callp localProc();
P3368();
P867();
P3315();
return;
dcl-proc localProc;
  theCharVar = 'Hello from P3497 in the procedure';
end-proc;