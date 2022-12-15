**free

ctl-opt dftactgrp(*no);

dcl-pi P930;
end-pi;

dcl-s theCharVar Char(52);

/copy 'qrpgleref/P604.rpgleinc'
/copy 'qrpgleref/P236.rpgleinc'
/copy 'qrpgleref/P898.rpgleinc'

dcl-ds theTable extname('T101') qualified;
end-ds;

EXEC SQL SELECT * INTO :theTable FROM T101 LIMIT 1;

theCharVar = 'Hello from P930';
dsply theCharVar;
callp localProc();
P604();
P236();
P898();
return;
dcl-proc localProc;
  theCharVar = 'Hello from P930 in the procedure';
end-proc;