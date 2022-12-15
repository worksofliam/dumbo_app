**free

ctl-opt dftactgrp(*no);

dcl-pi P1468;
end-pi;

dcl-s theCharVar Char(52);

/copy 'qrpgleref/P887.rpgleinc'
/copy 'qrpgleref/P687.rpgleinc'
/copy 'qrpgleref/P855.rpgleinc'

dcl-ds theTable extname('T743') qualified;
end-ds;

EXEC SQL SELECT * INTO :theTable FROM T743 LIMIT 1;

theCharVar = 'Hello from P1468';
dsply theCharVar;
callp localProc();
P887();
P687();
P855();
return;
dcl-proc localProc;
  theCharVar = 'Hello from P1468 in the procedure';
end-proc;