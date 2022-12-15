**free

ctl-opt dftactgrp(*no);

dcl-pi P3515;
end-pi;

dcl-s theCharVar Char(52);

/copy 'qrpgleref/P658.rpgleinc'
/copy 'qrpgleref/P3000.rpgleinc'
/copy 'qrpgleref/P3212.rpgleinc'

dcl-ds theTable extname('T461') qualified;
end-ds;

EXEC SQL SELECT * INTO :theTable FROM T461 LIMIT 1;

theCharVar = 'Hello from P3515';
dsply theCharVar;
callp localProc();
P658();
P3000();
P3212();
return;
dcl-proc localProc;
  theCharVar = 'Hello from P3515 in the procedure';
end-proc;