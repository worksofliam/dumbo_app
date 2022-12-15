**free

ctl-opt dftactgrp(*no);

dcl-pi P5219;
end-pi;

dcl-s theCharVar Char(52);

/copy 'qrpgleref/P863.rpgleinc'
/copy 'qrpgleref/P3692.rpgleinc'
/copy 'qrpgleref/P4472.rpgleinc'

dcl-ds T1381 ext qualified;
end-ds;

EXEC SQL SELECT * INTO :T1381 FROM T1381 LIMIT 1;

theCharVar = 'Hello from P5219';
dsply theCharVar;
callp localProc();
P863();
P3692();
P4472();
return;
dcl-proc localProc;
  theCharVar = 'Hello from P5219 in the procedure';
end-proc;