**free

ctl-opt dftactgrp(*no);

dcl-pi P5168;
end-pi;

dcl-s theCharVar Char(52);

/copy 'qrpgleref/P2257.rpgleinc'
/copy 'qrpgleref/P4573.rpgleinc'
/copy 'qrpgleref/P3239.rpgleinc'

dcl-ds theTable extname('T847') qualified;
end-ds;

EXEC SQL SELECT * INTO :theTable FROM T847 LIMIT 1;

theCharVar = 'Hello from P5168';
dsply theCharVar;
callp localProc();
P2257();
P4573();
P3239();
return;
dcl-proc localProc;
  theCharVar = 'Hello from P5168 in the procedure';
end-proc;