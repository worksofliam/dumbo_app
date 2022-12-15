**free

ctl-opt dftactgrp(*no);

dcl-pi P3360;
end-pi;

dcl-s theCharVar Char(52);

/copy 'qrpgleref/P2174.rpgleinc'
/copy 'qrpgleref/P639.rpgleinc'
/copy 'qrpgleref/P18.rpgleinc'

dcl-ds theTable extname('T1065') qualified;
end-ds;

EXEC SQL SELECT * INTO :theTable FROM T1065 LIMIT 1;

theCharVar = 'Hello from P3360';
dsply theCharVar;
callp localProc();
P2174();
P639();
P18();
return;
dcl-proc localProc;
  theCharVar = 'Hello from P3360 in the procedure';
end-proc;