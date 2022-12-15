**free

ctl-opt dftactgrp(*no);

dcl-pi P5223;
end-pi;

dcl-s theCharVar Char(52);

/copy 'qrpgleref/P3206.rpgleinc'
/copy 'qrpgleref/P5163.rpgleinc'
/copy 'qrpgleref/P103.rpgleinc'

dcl-ds theTable extname('T30') qualified;
end-ds;

EXEC SQL SELECT * INTO :theTable FROM T30 LIMIT 1;

theCharVar = 'Hello from P5223';
dsply theCharVar;
callp localProc();
P3206();
P5163();
P103();
return;
dcl-proc localProc;
  theCharVar = 'Hello from P5223 in the procedure';
end-proc;