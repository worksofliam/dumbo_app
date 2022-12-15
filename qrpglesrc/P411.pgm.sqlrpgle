**free

ctl-opt dftactgrp(*no);

dcl-pi P411;
end-pi;

dcl-s theCharVar Char(52);

/copy 'qrpgleref/P267.rpgleinc'
/copy 'qrpgleref/P305.rpgleinc'
/copy 'qrpgleref/P207.rpgleinc'

dcl-ds theTable extname('T4') qualified;
end-ds;

EXEC SQL SELECT * INTO :theTable FROM T4 LIMIT 1;

theCharVar = 'Hello from P411';
dsply theCharVar;
callp localProc();
P267();
P305();
P207();
return;
dcl-proc localProc;
  theCharVar = 'Hello from P411 in the procedure';
end-proc;