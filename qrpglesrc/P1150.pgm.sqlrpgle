**free

ctl-opt dftactgrp(*no);

dcl-pi P1150;
end-pi;

dcl-s theCharVar Char(52);

/copy 'qrpgleref/P368.rpgleinc'
/copy 'qrpgleref/P838.rpgleinc'
/copy 'qrpgleref/P894.rpgleinc'

dcl-ds theTable extname('T255') qualified;
end-ds;

EXEC SQL SELECT * INTO :theTable FROM T255 LIMIT 1;

theCharVar = 'Hello from P1150';
dsply theCharVar;
callp localProc();
P368();
P838();
P894();
return;
dcl-proc localProc;
  theCharVar = 'Hello from P1150 in the procedure';
end-proc;