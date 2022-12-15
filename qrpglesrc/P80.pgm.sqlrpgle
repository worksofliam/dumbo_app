**free

ctl-opt dftactgrp(*no);

dcl-pi P80;
end-pi;

dcl-s theCharVar Char(52);

/copy 'qrpgleref/P10.rpgleinc'
/copy 'qrpgleref/P35.rpgleinc'
/copy 'qrpgleref/P63.rpgleinc'

dcl-ds theTable extname('T90') qualified;
end-ds;

EXEC SQL SELECT * INTO :theTable FROM T90 LIMIT 1;

theCharVar = 'Hello from P80';
dsply theCharVar;
callp localProc();
P10();
P35();
P63();
return;
dcl-proc localProc;
  theCharVar = 'Hello from P80 in the procedure';
end-proc;