**free

ctl-opt dftactgrp(*no);

dcl-pi P4657;
end-pi;

dcl-s theCharVar Char(52);

/copy 'qrpgleref/P3630.rpgleinc'
/copy 'qrpgleref/P2917.rpgleinc'
/copy 'qrpgleref/P3320.rpgleinc'

dcl-ds theTable extname('T828') qualified;
end-ds;

EXEC SQL SELECT * INTO :theTable FROM T828 LIMIT 1;

theCharVar = 'Hello from P4657';
dsply theCharVar;
callp localProc();
P3630();
P2917();
P3320();
return;
dcl-proc localProc;
  theCharVar = 'Hello from P4657 in the procedure';
end-proc;