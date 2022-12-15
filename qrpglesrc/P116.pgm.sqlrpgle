**free

ctl-opt dftactgrp(*no);

dcl-pi P116;
end-pi;

dcl-s theCharVar Char(52);

/copy 'qrpgleref/P26.rpgleinc'
/copy 'qrpgleref/P14.rpgleinc'
/copy 'qrpgleref/P103.rpgleinc'

dcl-ds theTable extname('T289') qualified;
end-ds;

EXEC SQL SELECT * INTO :theTable FROM T289 LIMIT 1;

theCharVar = 'Hello from P116';
dsply theCharVar;
callp localProc();
P26();
P14();
P103();
return;
dcl-proc localProc;
  theCharVar = 'Hello from P116 in the procedure';
end-proc;