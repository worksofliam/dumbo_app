**free

ctl-opt dftactgrp(*no);

dcl-pi P3692;
end-pi;

dcl-s theCharVar Char(52);

/copy 'qrpgleref/P449.rpgleinc'
/copy 'qrpgleref/P1077.rpgleinc'
/copy 'qrpgleref/P3258.rpgleinc'

dcl-ds theTable extname('T421') qualified;
end-ds;

EXEC SQL SELECT * INTO :theTable FROM T421 LIMIT 1;

theCharVar = 'Hello from P3692';
dsply theCharVar;
callp localProc();
P449();
P1077();
P3258();
return;
dcl-proc localProc;
  theCharVar = 'Hello from P3692 in the procedure';
end-proc;