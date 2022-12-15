**free

ctl-opt dftactgrp(*no);

dcl-pi P4801;
end-pi;

dcl-s theCharVar Char(52);

/copy 'qrpgleref/P2613.rpgleinc'
/copy 'qrpgleref/P3665.rpgleinc'
/copy 'qrpgleref/P3043.rpgleinc'

dcl-ds theTable extname('T1439') qualified;
end-ds;

EXEC SQL SELECT * INTO :theTable FROM T1439 LIMIT 1;

theCharVar = 'Hello from P4801';
dsply theCharVar;
callp localProc();
P2613();
P3665();
P3043();
return;
dcl-proc localProc;
  theCharVar = 'Hello from P4801 in the procedure';
end-proc;