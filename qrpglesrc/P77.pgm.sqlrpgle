**free

ctl-opt dftactgrp(*no);

dcl-pi P77;
end-pi;

dcl-s theCharVar Char(52);

/copy 'qrpgleref/P36.rpgleinc'
/copy 'qrpgleref/P64.rpgleinc'
/copy 'qrpgleref/P23.rpgleinc'

dcl-ds theTable extname('T694') qualified;
end-ds;

EXEC SQL SELECT * INTO :theTable FROM T694 LIMIT 1;

theCharVar = 'Hello from P77';
dsply theCharVar;
callp localProc();
P36();
P64();
P23();
return;
dcl-proc localProc;
  theCharVar = 'Hello from P77 in the procedure';
end-proc;