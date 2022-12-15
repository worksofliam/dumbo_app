**free

ctl-opt dftactgrp(*no);

dcl-pi P1570;
end-pi;

dcl-s theCharVar Char(52);

/copy 'qrpgleref/P431.rpgleinc'
/copy 'qrpgleref/P406.rpgleinc'
/copy 'qrpgleref/P1150.rpgleinc'

dcl-ds theTable extname('T1543') qualified;
end-ds;

EXEC SQL SELECT * INTO :theTable FROM T1543 LIMIT 1;

theCharVar = 'Hello from P1570';
dsply theCharVar;
callp localProc();
P431();
P406();
P1150();
return;
dcl-proc localProc;
  theCharVar = 'Hello from P1570 in the procedure';
end-proc;