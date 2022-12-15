**free

ctl-opt dftactgrp(*no);

dcl-pi P458;
end-pi;

dcl-s theCharVar Char(52);

/copy 'qrpgleref/P46.rpgleinc'
/copy 'qrpgleref/P119.rpgleinc'
/copy 'qrpgleref/P169.rpgleinc'

dcl-ds theTable extname('T1123') qualified;
end-ds;

EXEC SQL SELECT * INTO :theTable FROM T1123 LIMIT 1;

theCharVar = 'Hello from P458';
dsply theCharVar;
callp localProc();
P46();
P119();
P169();
return;
dcl-proc localProc;
  theCharVar = 'Hello from P458 in the procedure';
end-proc;