**free

ctl-opt dftactgrp(*no);

dcl-pi P1182;
end-pi;

dcl-s theCharVar Char(52);

/copy 'qrpgleref/P515.rpgleinc'
/copy 'qrpgleref/P581.rpgleinc'
/copy 'qrpgleref/P884.rpgleinc'

dcl-ds theTable extname('T1146') qualified;
end-ds;

EXEC SQL SELECT * INTO :theTable FROM T1146 LIMIT 1;

theCharVar = 'Hello from P1182';
dsply theCharVar;
callp localProc();
P515();
P581();
P884();
return;
dcl-proc localProc;
  theCharVar = 'Hello from P1182 in the procedure';
end-proc;