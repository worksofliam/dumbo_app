**free

ctl-opt dftactgrp(*no);

dcl-pi P4742;
end-pi;

dcl-s theCharVar Char(52);

/copy 'qrpgleref/P647.rpgleinc'
/copy 'qrpgleref/P123.rpgleinc'
/copy 'qrpgleref/P1892.rpgleinc'

dcl-ds theTable extname('T950') qualified;
end-ds;

EXEC SQL SELECT * INTO :theTable FROM T950 LIMIT 1;

theCharVar = 'Hello from P4742';
dsply theCharVar;
callp localProc();
P647();
P123();
P1892();
return;
dcl-proc localProc;
  theCharVar = 'Hello from P4742 in the procedure';
end-proc;