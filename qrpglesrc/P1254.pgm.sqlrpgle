**free

ctl-opt dftactgrp(*no);

dcl-pi P1254;
end-pi;

dcl-s theCharVar Char(52);

/copy 'qrpgleref/P982.rpgleinc'
/copy 'qrpgleref/P1223.rpgleinc'
/copy 'qrpgleref/P162.rpgleinc'

dcl-ds T111 ext qualified;
end-ds;

EXEC SQL SELECT * INTO :T111 FROM T111 LIMIT 1;

theCharVar = 'Hello from P1254';
dsply theCharVar;
callp localProc();
P982();
P1223();
P162();
return;
dcl-proc localProc;
  theCharVar = 'Hello from P1254 in the procedure';
end-proc;