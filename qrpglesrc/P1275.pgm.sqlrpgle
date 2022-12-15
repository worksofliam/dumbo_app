**free

ctl-opt dftactgrp(*no);

dcl-pi P1275;
end-pi;

dcl-s theCharVar Char(52);

/copy 'qrpgleref/P103.rpgleinc'
/copy 'qrpgleref/P871.rpgleinc'
/copy 'qrpgleref/P404.rpgleinc'

dcl-ds theTable extname('T175') qualified;
end-ds;

EXEC SQL SELECT * INTO :theTable FROM T175 LIMIT 1;

theCharVar = 'Hello from P1275';
dsply theCharVar;
callp localProc();
P103();
P871();
P404();
return;
dcl-proc localProc;
  theCharVar = 'Hello from P1275 in the procedure';
end-proc;