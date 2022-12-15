**free

ctl-opt dftactgrp(*no);

dcl-pi P3420;
end-pi;

dcl-s theCharVar Char(52);

/copy 'qrpgleref/P1656.rpgleinc'
/copy 'qrpgleref/P300.rpgleinc'
/copy 'qrpgleref/P802.rpgleinc'

dcl-ds theTable extname('T206') qualified;
end-ds;

EXEC SQL SELECT * INTO :theTable FROM T206 LIMIT 1;

theCharVar = 'Hello from P3420';
dsply theCharVar;
callp localProc();
P1656();
P300();
P802();
return;
dcl-proc localProc;
  theCharVar = 'Hello from P3420 in the procedure';
end-proc;