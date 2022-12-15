**free

ctl-opt dftactgrp(*no);

dcl-pi P3016;
end-pi;

dcl-s theCharVar Char(52);

/copy 'qrpgleref/P2606.rpgleinc'
/copy 'qrpgleref/P631.rpgleinc'
/copy 'qrpgleref/P1401.rpgleinc'

dcl-ds theTable extname('T959') qualified;
end-ds;

EXEC SQL SELECT * INTO :theTable FROM T959 LIMIT 1;

theCharVar = 'Hello from P3016';
dsply theCharVar;
callp localProc();
P2606();
P631();
P1401();
return;
dcl-proc localProc;
  theCharVar = 'Hello from P3016 in the procedure';
end-proc;