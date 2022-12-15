**free

ctl-opt dftactgrp(*no);

dcl-pi P3920;
end-pi;

dcl-s theCharVar Char(52);

/copy 'qrpgleref/P1593.rpgleinc'
/copy 'qrpgleref/P3681.rpgleinc'
/copy 'qrpgleref/P3281.rpgleinc'

dcl-ds theTable extname('T143') qualified;
end-ds;

EXEC SQL SELECT * INTO :theTable FROM T143 LIMIT 1;

theCharVar = 'Hello from P3920';
dsply theCharVar;
callp localProc();
P1593();
P3681();
P3281();
return;
dcl-proc localProc;
  theCharVar = 'Hello from P3920 in the procedure';
end-proc;