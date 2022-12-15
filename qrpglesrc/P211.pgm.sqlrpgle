**free

ctl-opt dftactgrp(*no);

dcl-pi P211;
end-pi;

dcl-s theCharVar Char(52);

/copy 'qrpgleref/P208.rpgleinc'
/copy 'qrpgleref/P50.rpgleinc'
/copy 'qrpgleref/P69.rpgleinc'

dcl-ds theTable extname('T166') qualified;
end-ds;

EXEC SQL SELECT * INTO :theTable FROM T166 LIMIT 1;

theCharVar = 'Hello from P211';
dsply theCharVar;
callp localProc();
P208();
P50();
P69();
return;
dcl-proc localProc;
  theCharVar = 'Hello from P211 in the procedure';
end-proc;