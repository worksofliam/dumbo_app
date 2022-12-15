**free

ctl-opt dftactgrp(*no);

dcl-pi P4917;
end-pi;

dcl-s theCharVar Char(52);

/copy 'qrpgleref/P4817.rpgleinc'
/copy 'qrpgleref/P281.rpgleinc'
/copy 'qrpgleref/P3202.rpgleinc'

dcl-ds theTable extname('T857') qualified;
end-ds;

EXEC SQL SELECT * INTO :theTable FROM T857 LIMIT 1;

theCharVar = 'Hello from P4917';
dsply theCharVar;
callp localProc();
P4817();
P281();
P3202();
return;
dcl-proc localProc;
  theCharVar = 'Hello from P4917 in the procedure';
end-proc;