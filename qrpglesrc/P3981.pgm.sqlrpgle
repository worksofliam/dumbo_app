**free

ctl-opt dftactgrp(*no);

dcl-pi P3981;
end-pi;

dcl-s theCharVar Char(52);

/copy 'qrpgleref/P132.rpgleinc'
/copy 'qrpgleref/P41.rpgleinc'
/copy 'qrpgleref/P61.rpgleinc'

dcl-ds T478 ext qualified;
end-ds;

EXEC SQL SELECT * INTO :T478 FROM T478 LIMIT 1;

theCharVar = 'Hello from P3981';
dsply theCharVar;
callp localProc();
P132();
P41();
P61();
return;
dcl-proc localProc;
  theCharVar = 'Hello from P3981 in the procedure';
end-proc;