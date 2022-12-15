**free

ctl-opt dftactgrp(*no);

dcl-pi P74;
end-pi;

dcl-s theCharVar Char(52);

/copy 'qrpgleref/P6.rpgleinc'
/copy 'qrpgleref/P13.rpgleinc'
/copy 'qrpgleref/P22.rpgleinc'

dcl-ds theTable extname('T39') qualified;
end-ds;

EXEC SQL SELECT * INTO :theTable FROM T39 LIMIT 1;

theCharVar = 'Hello from P74';
dsply theCharVar;
callp localProc();
P6();
P13();
P22();
return;
dcl-proc localProc;
  theCharVar = 'Hello from P74 in the procedure';
end-proc;