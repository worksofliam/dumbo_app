**free

ctl-opt dftactgrp(*no);

dcl-pi P3418;
end-pi;

dcl-s theCharVar Char(52);

/copy 'qrpgleref/P2478.rpgleinc'
/copy 'qrpgleref/P3360.rpgleinc'
/copy 'qrpgleref/P2015.rpgleinc'

dcl-ds theTable extname('T485') qualified;
end-ds;

EXEC SQL SELECT * INTO :theTable FROM T485 LIMIT 1;

theCharVar = 'Hello from P3418';
dsply theCharVar;
callp localProc();
P2478();
P3360();
P2015();
return;
dcl-proc localProc;
  theCharVar = 'Hello from P3418 in the procedure';
end-proc;