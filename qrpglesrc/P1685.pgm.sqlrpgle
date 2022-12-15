**free

ctl-opt dftactgrp(*no);

dcl-pi P1685;
end-pi;

dcl-s theCharVar Char(52);

/copy 'qrpgleref/P506.rpgleinc'
/copy 'qrpgleref/P864.rpgleinc'
/copy 'qrpgleref/P1213.rpgleinc'

dcl-ds theTable extname('T445') qualified;
end-ds;

EXEC SQL SELECT * INTO :theTable FROM T445 LIMIT 1;

theCharVar = 'Hello from P1685';
dsply theCharVar;
callp localProc();
P506();
P864();
P1213();
return;
dcl-proc localProc;
  theCharVar = 'Hello from P1685 in the procedure';
end-proc;