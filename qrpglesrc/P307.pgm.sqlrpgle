**free

ctl-opt dftactgrp(*no);

dcl-pi P307;
end-pi;

dcl-s theCharVar Char(52);

/copy 'qrpgleref/P48.rpgleinc'
/copy 'qrpgleref/P301.rpgleinc'
/copy 'qrpgleref/P304.rpgleinc'

dcl-ds theTable extname('T1105') qualified;
end-ds;

EXEC SQL SELECT * INTO :theTable FROM T1105 LIMIT 1;

theCharVar = 'Hello from P307';
dsply theCharVar;
callp localProc();
P48();
P301();
P304();
return;
dcl-proc localProc;
  theCharVar = 'Hello from P307 in the procedure';
end-proc;