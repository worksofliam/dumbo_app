**free

ctl-opt dftactgrp(*no);

dcl-pi P3722;
end-pi;

dcl-s theCharVar Char(52);

/copy 'qrpgleref/P270.rpgleinc'
/copy 'qrpgleref/P293.rpgleinc'
/copy 'qrpgleref/P1797.rpgleinc'

dcl-ds theTable extname('T375') qualified;
end-ds;

EXEC SQL SELECT * INTO :theTable FROM T375 LIMIT 1;

theCharVar = 'Hello from P3722';
dsply theCharVar;
callp localProc();
P270();
P293();
P1797();
return;
dcl-proc localProc;
  theCharVar = 'Hello from P3722 in the procedure';
end-proc;