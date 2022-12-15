**free

ctl-opt dftactgrp(*no);

dcl-pi P3459;
end-pi;

dcl-s theCharVar Char(52);

/copy 'qrpgleref/P606.rpgleinc'
/copy 'qrpgleref/P989.rpgleinc'
/copy 'qrpgleref/P766.rpgleinc'

dcl-ds theTable extname('T501') qualified;
end-ds;

EXEC SQL SELECT * INTO :theTable FROM T501 LIMIT 1;

theCharVar = 'Hello from P3459';
dsply theCharVar;
callp localProc();
P606();
P989();
P766();
return;
dcl-proc localProc;
  theCharVar = 'Hello from P3459 in the procedure';
end-proc;