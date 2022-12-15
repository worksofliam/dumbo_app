**free

ctl-opt dftactgrp(*no);

dcl-pi P4235;
end-pi;

dcl-s theCharVar Char(52);

/copy 'qrpgleref/P3588.rpgleinc'
/copy 'qrpgleref/P3008.rpgleinc'
/copy 'qrpgleref/P2831.rpgleinc'

dcl-ds theTable extname('T1313') qualified;
end-ds;

EXEC SQL SELECT * INTO :theTable FROM T1313 LIMIT 1;

theCharVar = 'Hello from P4235';
dsply theCharVar;
callp localProc();
P3588();
P3008();
P2831();
return;
dcl-proc localProc;
  theCharVar = 'Hello from P4235 in the procedure';
end-proc;