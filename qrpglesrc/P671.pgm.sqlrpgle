**free

ctl-opt dftactgrp(*no);

dcl-pi P671;
end-pi;

dcl-s theCharVar Char(52);

/copy 'qrpgleref/P406.rpgleinc'
/copy 'qrpgleref/P657.rpgleinc'
/copy 'qrpgleref/P174.rpgleinc'

dcl-ds theTable extname('T1560') qualified;
end-ds;

EXEC SQL SELECT * INTO :theTable FROM T1560 LIMIT 1;

theCharVar = 'Hello from P671';
dsply theCharVar;
callp localProc();
P406();
P657();
P174();
return;
dcl-proc localProc;
  theCharVar = 'Hello from P671 in the procedure';
end-proc;