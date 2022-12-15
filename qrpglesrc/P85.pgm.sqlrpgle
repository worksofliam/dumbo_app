**free

ctl-opt dftactgrp(*no);

dcl-pi P85;
end-pi;

dcl-s theCharVar Char(52);

/copy 'qrpgleref/P69.rpgleinc'
/copy 'qrpgleref/P27.rpgleinc'
/copy 'qrpgleref/P68.rpgleinc'

dcl-ds theTable extname('T238') qualified;
end-ds;

EXEC SQL SELECT * INTO :theTable FROM T238 LIMIT 1;

theCharVar = 'Hello from P85';
dsply theCharVar;
callp localProc();
P69();
P27();
P68();
return;
dcl-proc localProc;
  theCharVar = 'Hello from P85 in the procedure';
end-proc;