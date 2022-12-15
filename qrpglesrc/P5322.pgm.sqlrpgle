**free

ctl-opt dftactgrp(*no);

dcl-pi P5322;
end-pi;

dcl-s theCharVar Char(52);

/copy 'qrpgleref/P104.rpgleinc'
/copy 'qrpgleref/P1704.rpgleinc'
/copy 'qrpgleref/P3596.rpgleinc'

dcl-ds theTable extname('T277') qualified;
end-ds;

EXEC SQL SELECT * INTO :theTable FROM T277 LIMIT 1;

theCharVar = 'Hello from P5322';
dsply theCharVar;
callp localProc();
P104();
P1704();
P3596();
return;
dcl-proc localProc;
  theCharVar = 'Hello from P5322 in the procedure';
end-proc;