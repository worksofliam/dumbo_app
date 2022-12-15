**free

ctl-opt dftactgrp(*no);

dcl-pi P93;
end-pi;

dcl-s theCharVar Char(52);

/copy 'qrpgleref/P81.rpgleinc'
/copy 'qrpgleref/P33.rpgleinc'
/copy 'qrpgleref/P13.rpgleinc'

dcl-ds theTable extname('T960') qualified;
end-ds;

EXEC SQL SELECT * INTO :theTable FROM T960 LIMIT 1;

theCharVar = 'Hello from P93';
dsply theCharVar;
callp localProc();
P81();
P33();
P13();
return;
dcl-proc localProc;
  theCharVar = 'Hello from P93 in the procedure';
end-proc;