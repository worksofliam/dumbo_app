**free

ctl-opt dftactgrp(*no);

dcl-pi P590;
end-pi;

dcl-s theCharVar Char(52);

/copy 'qrpgleref/P382.rpgleinc'
/copy 'qrpgleref/P46.rpgleinc'
/copy 'qrpgleref/P393.rpgleinc'

dcl-ds T875 ext qualified;
end-ds;

EXEC SQL SELECT * INTO :T875 FROM T875 LIMIT 1;

theCharVar = 'Hello from P590';
dsply theCharVar;
callp localProc();
P382();
P46();
P393();
return;
dcl-proc localProc;
  theCharVar = 'Hello from P590 in the procedure';
end-proc;