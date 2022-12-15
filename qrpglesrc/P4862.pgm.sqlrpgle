**free

ctl-opt dftactgrp(*no);

dcl-pi P4862;
end-pi;

dcl-s theCharVar Char(52);

/copy 'qrpgleref/P4716.rpgleinc'
/copy 'qrpgleref/P875.rpgleinc'
/copy 'qrpgleref/P4652.rpgleinc'

dcl-ds theTable extname('T581') qualified;
end-ds;

EXEC SQL SELECT * INTO :theTable FROM T581 LIMIT 1;

theCharVar = 'Hello from P4862';
dsply theCharVar;
callp localProc();
P4716();
P875();
P4652();
return;
dcl-proc localProc;
  theCharVar = 'Hello from P4862 in the procedure';
end-proc;