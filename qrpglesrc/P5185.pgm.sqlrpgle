**free

ctl-opt dftactgrp(*no);

dcl-pi P5185;
end-pi;

dcl-s theCharVar Char(52);

/copy 'qrpgleref/P2520.rpgleinc'
/copy 'qrpgleref/P1745.rpgleinc'
/copy 'qrpgleref/P3741.rpgleinc'

dcl-ds theTable extname('T326') qualified;
end-ds;

EXEC SQL SELECT * INTO :theTable FROM T326 LIMIT 1;

theCharVar = 'Hello from P5185';
dsply theCharVar;
callp localProc();
P2520();
P1745();
P3741();
return;
dcl-proc localProc;
  theCharVar = 'Hello from P5185 in the procedure';
end-proc;