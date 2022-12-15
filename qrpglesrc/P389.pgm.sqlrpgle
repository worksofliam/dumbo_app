**free

ctl-opt dftactgrp(*no);

dcl-pi P389;
end-pi;

dcl-s theCharVar Char(52);

/copy 'qrpgleref/P242.rpgleinc'
/copy 'qrpgleref/P356.rpgleinc'
/copy 'qrpgleref/P204.rpgleinc'

dcl-ds T162 ext qualified;
end-ds;

EXEC SQL SELECT * INTO :T162 FROM T162 LIMIT 1;

theCharVar = 'Hello from P389';
dsply theCharVar;
callp localProc();
P242();
P356();
P204();
return;
dcl-proc localProc;
  theCharVar = 'Hello from P389 in the procedure';
end-proc;