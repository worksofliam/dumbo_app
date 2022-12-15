**free

ctl-opt dftactgrp(*no);

dcl-pi P1597;
end-pi;

dcl-s theCharVar Char(52);

/copy 'qrpgleref/P347.rpgleinc'
/copy 'qrpgleref/P1469.rpgleinc'
/copy 'qrpgleref/P403.rpgleinc'

dcl-ds T731 ext qualified;
end-ds;

EXEC SQL SELECT * INTO :T731 FROM T731 LIMIT 1;

theCharVar = 'Hello from P1597';
dsply theCharVar;
callp localProc();
P347();
P1469();
P403();
return;
dcl-proc localProc;
  theCharVar = 'Hello from P1597 in the procedure';
end-proc;