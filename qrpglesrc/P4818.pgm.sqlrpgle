**free

ctl-opt dftactgrp(*no);

dcl-pi P4818;
end-pi;

dcl-s theCharVar Char(52);

/copy 'qrpgleref/P4367.rpgleinc'
/copy 'qrpgleref/P4112.rpgleinc'
/copy 'qrpgleref/P4068.rpgleinc'

dcl-ds theTable extname('T184') qualified;
end-ds;

EXEC SQL SELECT * INTO :theTable FROM T184 LIMIT 1;

theCharVar = 'Hello from P4818';
dsply theCharVar;
callp localProc();
P4367();
P4112();
P4068();
return;
dcl-proc localProc;
  theCharVar = 'Hello from P4818 in the procedure';
end-proc;