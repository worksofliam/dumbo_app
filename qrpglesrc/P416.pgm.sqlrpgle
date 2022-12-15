**free

ctl-opt dftactgrp(*no);

dcl-pi P416;
end-pi;

dcl-s theCharVar Char(52);

/copy 'qrpgleref/P41.rpgleinc'
/copy 'qrpgleref/P14.rpgleinc'
/copy 'qrpgleref/P302.rpgleinc'

dcl-ds T221 ext qualified;
end-ds;

EXEC SQL SELECT * INTO :T221 FROM T221 LIMIT 1;

theCharVar = 'Hello from P416';
dsply theCharVar;
callp localProc();
P41();
P14();
P302();
return;
dcl-proc localProc;
  theCharVar = 'Hello from P416 in the procedure';
end-proc;