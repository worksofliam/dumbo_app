**free

ctl-opt dftactgrp(*no);

dcl-pi P1080;
end-pi;

dcl-s theCharVar Char(52);

/copy 'qrpgleref/P163.rpgleinc'
/copy 'qrpgleref/P304.rpgleinc'
/copy 'qrpgleref/P936.rpgleinc'

dcl-ds theTable extname('T429') qualified;
end-ds;

EXEC SQL SELECT * INTO :theTable FROM T429 LIMIT 1;

theCharVar = 'Hello from P1080';
dsply theCharVar;
callp localProc();
P163();
P304();
P936();
return;
dcl-proc localProc;
  theCharVar = 'Hello from P1080 in the procedure';
end-proc;