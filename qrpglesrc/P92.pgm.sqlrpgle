**free

ctl-opt dftactgrp(*no);

dcl-pi P92;
end-pi;

dcl-s theCharVar Char(52);

/copy 'qrpgleref/P84.rpgleinc'
/copy 'qrpgleref/P71.rpgleinc'
/copy 'qrpgleref/P18.rpgleinc'

dcl-ds theTable extname('T265') qualified;
end-ds;

EXEC SQL SELECT * INTO :theTable FROM T265 LIMIT 1;

theCharVar = 'Hello from P92';
dsply theCharVar;
callp localProc();
P84();
P71();
P18();
return;
dcl-proc localProc;
  theCharVar = 'Hello from P92 in the procedure';
end-proc;