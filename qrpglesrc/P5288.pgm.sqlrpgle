**free

ctl-opt dftactgrp(*no);

dcl-pi P5288;
end-pi;

dcl-s theCharVar Char(52);

/copy 'qrpgleref/P4981.rpgleinc'
/copy 'qrpgleref/P289.rpgleinc'
/copy 'qrpgleref/P3356.rpgleinc'

dcl-ds theTable extname('T498') qualified;
end-ds;

EXEC SQL SELECT * INTO :theTable FROM T498 LIMIT 1;

theCharVar = 'Hello from P5288';
dsply theCharVar;
callp localProc();
P4981();
P289();
P3356();
return;
dcl-proc localProc;
  theCharVar = 'Hello from P5288 in the procedure';
end-proc;