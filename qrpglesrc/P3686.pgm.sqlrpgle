**free

ctl-opt dftactgrp(*no);

dcl-pi P3686;
end-pi;

dcl-s theCharVar Char(52);

/copy 'qrpgleref/P3378.rpgleinc'
/copy 'qrpgleref/P193.rpgleinc'
/copy 'qrpgleref/P451.rpgleinc'

dcl-ds theTable extname('T205') qualified;
end-ds;

EXEC SQL SELECT * INTO :theTable FROM T205 LIMIT 1;

theCharVar = 'Hello from P3686';
dsply theCharVar;
callp localProc();
P3378();
P193();
P451();
return;
dcl-proc localProc;
  theCharVar = 'Hello from P3686 in the procedure';
end-proc;