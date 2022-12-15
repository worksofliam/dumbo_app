**free

ctl-opt dftactgrp(*no);

dcl-pi P130;
end-pi;

dcl-s theCharVar Char(52);

/copy 'qrpgleref/P79.rpgleinc'
/copy 'qrpgleref/P31.rpgleinc'
/copy 'qrpgleref/P27.rpgleinc'

dcl-ds theTable extname('T27') qualified;
end-ds;

EXEC SQL SELECT * INTO :theTable FROM T27 LIMIT 1;

theCharVar = 'Hello from P130';
dsply theCharVar;
callp localProc();
P79();
P31();
P27();
return;
dcl-proc localProc;
  theCharVar = 'Hello from P130 in the procedure';
end-proc;