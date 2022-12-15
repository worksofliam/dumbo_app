**free

ctl-opt dftactgrp(*no);

dcl-pi P1294;
end-pi;

dcl-s theCharVar Char(52);

/copy 'qrpgleref/P162.rpgleinc'
/copy 'qrpgleref/P199.rpgleinc'
/copy 'qrpgleref/P467.rpgleinc'

dcl-ds T633 ext qualified;
end-ds;

EXEC SQL SELECT * INTO :T633 FROM T633 LIMIT 1;

theCharVar = 'Hello from P1294';
dsply theCharVar;
callp localProc();
P162();
P199();
P467();
return;
dcl-proc localProc;
  theCharVar = 'Hello from P1294 in the procedure';
end-proc;