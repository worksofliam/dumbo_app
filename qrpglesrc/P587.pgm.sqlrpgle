**free

ctl-opt dftactgrp(*no);

dcl-pi P587;
end-pi;

dcl-s theCharVar Char(52);

/copy 'qrpgleref/P318.rpgleinc'
/copy 'qrpgleref/P177.rpgleinc'
/copy 'qrpgleref/P386.rpgleinc'

dcl-ds theTable extname('T489') qualified;
end-ds;

EXEC SQL SELECT * INTO :theTable FROM T489 LIMIT 1;

theCharVar = 'Hello from P587';
dsply theCharVar;
callp localProc();
P318();
P177();
P386();
return;
dcl-proc localProc;
  theCharVar = 'Hello from P587 in the procedure';
end-proc;