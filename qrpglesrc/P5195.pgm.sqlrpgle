**free

ctl-opt dftactgrp(*no);

dcl-pi P5195;
end-pi;

dcl-s theCharVar Char(52);

/copy 'qrpgleref/P690.rpgleinc'
/copy 'qrpgleref/P1990.rpgleinc'
/copy 'qrpgleref/P4200.rpgleinc'

dcl-ds theTable extname('T568') qualified;
end-ds;

EXEC SQL SELECT * INTO :theTable FROM T568 LIMIT 1;

theCharVar = 'Hello from P5195';
dsply theCharVar;
callp localProc();
P690();
P1990();
P4200();
return;
dcl-proc localProc;
  theCharVar = 'Hello from P5195 in the procedure';
end-proc;