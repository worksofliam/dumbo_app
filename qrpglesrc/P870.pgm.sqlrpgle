**free

ctl-opt dftactgrp(*no);

dcl-pi P870;
end-pi;

dcl-s theCharVar Char(52);

/copy 'qrpgleref/P176.rpgleinc'
/copy 'qrpgleref/P625.rpgleinc'
/copy 'qrpgleref/P222.rpgleinc'

dcl-ds theTable extname('T785') qualified;
end-ds;

EXEC SQL SELECT * INTO :theTable FROM T785 LIMIT 1;

theCharVar = 'Hello from P870';
dsply theCharVar;
callp localProc();
P176();
P625();
P222();
return;
dcl-proc localProc;
  theCharVar = 'Hello from P870 in the procedure';
end-proc;