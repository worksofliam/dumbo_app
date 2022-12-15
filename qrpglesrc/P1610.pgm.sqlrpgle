**free

ctl-opt dftactgrp(*no);

dcl-pi P1610;
end-pi;

dcl-s theCharVar Char(52);

/copy 'qrpgleref/P1394.rpgleinc'
/copy 'qrpgleref/P85.rpgleinc'
/copy 'qrpgleref/P1145.rpgleinc'

dcl-ds theTable extname('T770') qualified;
end-ds;

EXEC SQL SELECT * INTO :theTable FROM T770 LIMIT 1;

theCharVar = 'Hello from P1610';
dsply theCharVar;
callp localProc();
P1394();
P85();
P1145();
return;
dcl-proc localProc;
  theCharVar = 'Hello from P1610 in the procedure';
end-proc;