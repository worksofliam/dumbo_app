**free

ctl-opt dftactgrp(*no);

dcl-pi P268;
end-pi;

dcl-s theCharVar Char(52);

/copy 'qrpgleref/P14.rpgleinc'
/copy 'qrpgleref/P138.rpgleinc'
/copy 'qrpgleref/P121.rpgleinc'

dcl-ds theTable extname('T1045') qualified;
end-ds;

EXEC SQL SELECT * INTO :theTable FROM T1045 LIMIT 1;

theCharVar = 'Hello from P268';
dsply theCharVar;
callp localProc();
P14();
P138();
P121();
return;
dcl-proc localProc;
  theCharVar = 'Hello from P268 in the procedure';
end-proc;