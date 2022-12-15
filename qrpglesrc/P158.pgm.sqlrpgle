**free

ctl-opt dftactgrp(*no);

dcl-pi P158;
end-pi;

dcl-s theCharVar Char(52);

/copy 'qrpgleref/P115.rpgleinc'
/copy 'qrpgleref/P136.rpgleinc'
/copy 'qrpgleref/P7.rpgleinc'

dcl-ds theTable extname('T1717') qualified;
end-ds;

EXEC SQL SELECT * INTO :theTable FROM T1717 LIMIT 1;

theCharVar = 'Hello from P158';
dsply theCharVar;
callp localProc();
P115();
P136();
P7();
return;
dcl-proc localProc;
  theCharVar = 'Hello from P158 in the procedure';
end-proc;