**free

ctl-opt dftactgrp(*no);

dcl-pi P915;
end-pi;

dcl-s theCharVar Char(52);

/copy 'qrpgleref/P524.rpgleinc'
/copy 'qrpgleref/P176.rpgleinc'
/copy 'qrpgleref/P647.rpgleinc'

dcl-ds theTable extname('T1702') qualified;
end-ds;

EXEC SQL SELECT * INTO :theTable FROM T1702 LIMIT 1;

theCharVar = 'Hello from P915';
dsply theCharVar;
callp localProc();
P524();
P176();
P647();
return;
dcl-proc localProc;
  theCharVar = 'Hello from P915 in the procedure';
end-proc;