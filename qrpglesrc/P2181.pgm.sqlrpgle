**free

ctl-opt dftactgrp(*no);

dcl-pi P2181;
end-pi;

dcl-s theCharVar Char(52);

/copy 'qrpgleref/P766.rpgleinc'
/copy 'qrpgleref/P34.rpgleinc'
/copy 'qrpgleref/P1494.rpgleinc'

dcl-ds theTable extname('T257') qualified;
end-ds;

EXEC SQL SELECT * INTO :theTable FROM T257 LIMIT 1;

theCharVar = 'Hello from P2181';
dsply theCharVar;
callp localProc();
P766();
P34();
P1494();
return;
dcl-proc localProc;
  theCharVar = 'Hello from P2181 in the procedure';
end-proc;