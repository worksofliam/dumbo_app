**free

ctl-opt dftactgrp(*no);

dcl-pi P1883;
end-pi;

dcl-s theCharVar Char(52);

/copy 'qrpgleref/P492.rpgleinc'
/copy 'qrpgleref/P594.rpgleinc'
/copy 'qrpgleref/P606.rpgleinc'

dcl-ds theTable extname('T979') qualified;
end-ds;

EXEC SQL SELECT * INTO :theTable FROM T979 LIMIT 1;

theCharVar = 'Hello from P1883';
dsply theCharVar;
callp localProc();
P492();
P594();
P606();
return;
dcl-proc localProc;
  theCharVar = 'Hello from P1883 in the procedure';
end-proc;