**free

ctl-opt dftactgrp(*no);

dcl-pi P1211;
end-pi;

dcl-s theCharVar Char(52);

/copy 'qrpgleref/P311.rpgleinc'
/copy 'qrpgleref/P877.rpgleinc'
/copy 'qrpgleref/P181.rpgleinc'

dcl-ds theTable extname('T1023') qualified;
end-ds;

EXEC SQL SELECT * INTO :theTable FROM T1023 LIMIT 1;

theCharVar = 'Hello from P1211';
dsply theCharVar;
callp localProc();
P311();
P877();
P181();
return;
dcl-proc localProc;
  theCharVar = 'Hello from P1211 in the procedure';
end-proc;