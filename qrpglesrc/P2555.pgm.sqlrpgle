**free

ctl-opt dftactgrp(*no);

dcl-pi P2555;
end-pi;

dcl-s theCharVar Char(52);

/copy 'qrpgleref/P1950.rpgleinc'
/copy 'qrpgleref/P2121.rpgleinc'
/copy 'qrpgleref/P1909.rpgleinc'

dcl-ds theTable extname('T1244') qualified;
end-ds;

EXEC SQL SELECT * INTO :theTable FROM T1244 LIMIT 1;

theCharVar = 'Hello from P2555';
dsply theCharVar;
callp localProc();
P1950();
P2121();
P1909();
return;
dcl-proc localProc;
  theCharVar = 'Hello from P2555 in the procedure';
end-proc;