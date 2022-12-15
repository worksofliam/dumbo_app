**free

ctl-opt dftactgrp(*no);

dcl-pi P704;
end-pi;

dcl-s theCharVar Char(52);

/copy 'qrpgleref/P132.rpgleinc'
/copy 'qrpgleref/P44.rpgleinc'
/copy 'qrpgleref/P399.rpgleinc'

dcl-ds T85 ext qualified;
end-ds;

EXEC SQL SELECT * INTO :T85 FROM T85 LIMIT 1;

theCharVar = 'Hello from P704';
dsply theCharVar;
callp localProc();
P132();
P44();
P399();
return;
dcl-proc localProc;
  theCharVar = 'Hello from P704 in the procedure';
end-proc;