**free

ctl-opt dftactgrp(*no);

dcl-pi P4833;
end-pi;

dcl-s theCharVar Char(52);

/copy 'qrpgleref/P622.rpgleinc'
/copy 'qrpgleref/P1202.rpgleinc'
/copy 'qrpgleref/P1197.rpgleinc'

dcl-ds theTable extname('T362') qualified;
end-ds;

EXEC SQL SELECT * INTO :theTable FROM T362 LIMIT 1;

theCharVar = 'Hello from P4833';
dsply theCharVar;
callp localProc();
P622();
P1202();
P1197();
return;
dcl-proc localProc;
  theCharVar = 'Hello from P4833 in the procedure';
end-proc;