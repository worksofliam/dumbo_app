**free

ctl-opt dftactgrp(*no);

dcl-pi P3063;
end-pi;

dcl-s theCharVar Char(52);

/copy 'qrpgleref/P1793.rpgleinc'
/copy 'qrpgleref/P66.rpgleinc'
/copy 'qrpgleref/P1893.rpgleinc'

dcl-ds theTable extname('T607') qualified;
end-ds;

EXEC SQL SELECT * INTO :theTable FROM T607 LIMIT 1;

theCharVar = 'Hello from P3063';
dsply theCharVar;
callp localProc();
P1793();
P66();
P1893();
return;
dcl-proc localProc;
  theCharVar = 'Hello from P3063 in the procedure';
end-proc;