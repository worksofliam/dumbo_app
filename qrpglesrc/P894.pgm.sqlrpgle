**free

ctl-opt dftactgrp(*no);

dcl-pi P894;
end-pi;

dcl-s theCharVar Char(52);

/copy 'qrpgleref/P676.rpgleinc'
/copy 'qrpgleref/P421.rpgleinc'
/copy 'qrpgleref/P683.rpgleinc'

dcl-ds theTable extname('T79') qualified;
end-ds;

EXEC SQL SELECT * INTO :theTable FROM T79 LIMIT 1;

theCharVar = 'Hello from P894';
dsply theCharVar;
callp localProc();
P676();
P421();
P683();
return;
dcl-proc localProc;
  theCharVar = 'Hello from P894 in the procedure';
end-proc;