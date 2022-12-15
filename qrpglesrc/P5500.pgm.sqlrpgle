**free

ctl-opt dftactgrp(*no);

dcl-pi P5500;
end-pi;

dcl-s theCharVar Char(52);

/copy 'qrpgleref/P4716.rpgleinc'
/copy 'qrpgleref/P4806.rpgleinc'
/copy 'qrpgleref/P5358.rpgleinc'

dcl-ds theTable extname('T1166') qualified;
end-ds;

EXEC SQL SELECT * INTO :theTable FROM T1166 LIMIT 1;

theCharVar = 'Hello from P5500';
dsply theCharVar;
callp localProc();
P4716();
P4806();
P5358();
return;
dcl-proc localProc;
  theCharVar = 'Hello from P5500 in the procedure';
end-proc;