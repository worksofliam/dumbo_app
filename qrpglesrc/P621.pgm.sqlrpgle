**free

ctl-opt dftactgrp(*no);

dcl-pi P621;
end-pi;

dcl-s theCharVar Char(52);

/copy 'qrpgleref/P185.rpgleinc'
/copy 'qrpgleref/P121.rpgleinc'
/copy 'qrpgleref/P251.rpgleinc'

dcl-ds theTable extname('T143') qualified;
end-ds;

EXEC SQL SELECT * INTO :theTable FROM T143 LIMIT 1;

theCharVar = 'Hello from P621';
dsply theCharVar;
callp localProc();
P185();
P121();
P251();
return;
dcl-proc localProc;
  theCharVar = 'Hello from P621 in the procedure';
end-proc;